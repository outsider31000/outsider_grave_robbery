local VorpCore = exports.vorp_core:GetCore()
local JobsTable = {}
local TEXTS = Config.Texts
local TEXTURES = Config.Textures

local DIGGED_GRAVES <const> = {}
local DIGGING_GRAVE <const> = {}

RegisterServerEvent("ricx_grave_robbery:check_shovel", function(id, Town)
    local _source = source

    if DIGGED_GRAVES[id] then
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.GraveRobbed,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
        return
    end

    if DIGGING_GRAVE[_source] then
        return print("Player is already digging a grave", GetPlayerName(_source), "id:", id,
            "Possible exploit detected!!")
    end

    local playerCoords = GetEntityCoords(GetPlayerPed(_source))
    local graveCoords = Config.Graves[id].coords
    local distance = #(playerCoords - graveCoords)
    if distance > 10.0 then
        return print("Player is too far away from the grave", GetPlayerName(_source), "id:", id,
            "Possible exploit detected!!")
    end

    if not Config.Graves[id].ToolRequired then
        return print("missing tool required for grave", "at index:", id)
    end


    local item = exports.vorp_inventory:getItem(_source, Config.Graves[id].ToolRequired)
    if item then
        if not next(item.metadata) then
            -- if not metadata we add new values
            local newData = {
                description = "Shovel durability %" .. 100 - 3,
                durability = 100 - 3,
            }
            exports.vorp_inventory:setItemMetadata(_source, item.id, newData)
            DIGGING_GRAVE[_source] = id
            TriggerClientEvent("ricx_grave_robbery:start_dig", _source, id)
            SetTimeout(10000, function() -- wait 10 seconds to alert jobs
                TriggerEvent("outsider_alertjobs", _source, Town)
            end)
        else
            if item.metadata.durability <= 0 then
                TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, "Shovel is broken",
                    TEXTURES.alert[1], TEXTURES.alert[2], 2000)
                return
            end

            local newData = {
                description = "Shovel durability %" .. item.metadata.durability - 3,
                durability = item.metadata.durability - 3,
            }

            exports.vorp_inventory:setItemMetadata(_source, item.id, newData)
            TriggerClientEvent("ricx_grave_robbery:start_dig", _source, id)
            DIGGING_GRAVE[_source] = id
            SetTimeout(10000, function() -- wait 10 seconds to alert jobs
                TriggerEvent("outsider_alertjobs", _source, Town)
            end)
        end
    else
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.NoShovel,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
    end
end)



RegisterServerEvent("ricx_grave_robbery:reward", function()
    local _source = source
    local id <const> = DIGGING_GRAVE[_source]
    if not id then
        return print("Possible exploit detected!!", GetPlayerName(_source), " called this event without digging a grave")
    end

    if DIGGED_GRAVES[id] then
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.GraveRobbed,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
        return
    end
    DIGGED_GRAVES[id] = true

    local Rewards = Config.Graves[id].Rewards
    local found = false
    for _, value in ipairs(Rewards) do
        if math.random() <= value.chance then
            local canCarryItem <const> = exports.vorp_inventory:canCarryItem(_source, value.item, value.amount)
            if canCarryItem then
                found = true
                exports.vorp_inventory:addItem(_source, value.item, value.amount)
                VorpCore.NotifyRightTip(_source, TEXTS.FoundItem .. " x" .. value.amount .. " " .. value.label, 5000)
                if Config.RewardsOneItem then
                    break
                end
            end
        end
    end

    if not found then
        local rand = math.random(1, #Config.Lines)
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, Config.Lines[rand],
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
    end

    if Config.GraveRobberyCooldown then
        SetTimeout(Config.GraveRobberyCooldown * 60000, function()
            DIGGED_GRAVES[id] = nil
        end)
    end
    DIGGING_GRAVE[_source] = nil
end)

local function CheckTable(table, element)
    for _, v in pairs(table) do
        if v == element then
            return true
        end
    end
    return false
end

AddEventHandler("vorp:SelectedCharacter", function(source, char)
    local job = char.job
    if CheckTable(Config.JobsToAlert, job) then
        JobsTable[#JobsTable + 1] = { source = source, job = job }
    end
end)

-- remove player from table when leaving
AddEventHandler('playerDropped', function()
    local _source = source
    for index, value in pairs(JobsTable) do
        if value.source == _source then
            JobsTable[index] = nil
        end
    end

    DIGGING_GRAVE[_source] = nil
end)


AddEventHandler('outsider_alertjobs', function(source, Town)
    if Config.outsider_jobalert?.usealert then
        return exports.outsider_jobalerts:InsertAlert(source, Config.outsider_jobalert.command)
    end

    for _, jobHolder in pairs(JobsTable) do
        if Config.synSociety and not Config.outsider_policeman then
            local onduty = exports.syn_society:IsPlayerOnDuty(jobHolder.source, jobHolder.job)
            if onduty then
                VorpCore.NotifyLeft(jobHolder.source, Town, "grave robbery was witnessed ", "generic_textures",
                    "temp_pedshot", 8000, "COLOR_WHITE")
            end
        elseif Config.outsider_policeman then
            local onduty = exports.outsider_policeman:IsOnPoliceDuty(jobHolder.source)
            if onduty then
                VorpCore.NotifyLeft(jobHolder.source, Town, "grave robbery was witnessed ", "generic_textures",
                    "temp_pedshot", 8000, "COLOR_WHITE")
            end
        end
    end
end)
