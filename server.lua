---@diagnostic disable: undefined-global
data = {}
local VorpCore = {}
local VorpInv = {}

local JobsTable = {}

TriggerEvent("getCore", function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()


local TEXTS = Config.Texts
local TEXTURES = Config.Textures

local DiggedGraves = {}

RegisterServerEvent("ricx_grave_robbery:check_shovel")
AddEventHandler("ricx_grave_robbery:check_shovel", function(id, Town)
    local _source = source

    if DiggedGraves[id] == true then
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.GraveRobbed,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
        return
    end

    local item = VorpInv.getItem(_source, Config.ShovelItem)
    if item then
        if not next(item.metadata) then
            -- if not metadata we add new values
            local newData = {
                description = "Shovel durability %" .. 100 - 3,
                durability = 100 - 3,
                id = item.id
            }
            VorpInv.setItemMetadata(_source, item.id, newData)
            TriggerClientEvent("ricx_grave_robbery:start_dig", _source, id)
            TriggerEvent("outsider_alertjobs", _source,Town)
        else
            if item.metadata.durability <= 0 then
                TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, "Shovel is broken",
                    TEXTURES.alert[1], TEXTURES.alert[2], 2000)
                return
            end

            local newData = {
                description = "Shovel durability %" .. item.metadata.durability - 3,
                durability = item.metadata.durability - 3,
                id = item.metadata.id
            }

            VorpInv.setItemMetadata(_source, item.metadata.id, newData)
            TriggerClientEvent("ricx_grave_robbery:start_dig", _source, id)
            TriggerEvent("outsider_alertjobs", Town)
        end
    else
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.NoShovel,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
    end
end)

local Lines = {
    "You have found nothing the person buried here was poor as hell",
    "All that hard work for nothing damn fool",
    "Why not be a farmer cant find shit with your luck",
    "You thought it was easy? rob somone alive ",
    "God is watching you and has punished you ,just like he pusnished the man in here your next..."

}

RegisterServerEvent("ricx_grave_robbery:reward")
AddEventHandler("ricx_grave_robbery:reward", function(id)
    local _source = source
    Citizen.Wait(math.random(200, 800))

    ---@type table
    local Rewards = Config.Graves[id].Rewards
    local random = math.random(1, #Rewards)


    if DiggedGraves[id] == true then
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, TEXTS.GraveRobbed,
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
        return
    end

    DiggedGraves[id] = true
    local lucky = 2
    local chance = math.random(1, 5)
    if lucky == chance then
        local Item = Config.Graves[id].Rewards[random].item
        local label = Config.Graves[id].Rewards[random].label
        VorpInv.addItem(_source, Item, 1)
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery,
            TEXTS.FoundItem .. "\n+ " .. label
            , TEXTURES.alert[1], TEXTURES.alert[2], 2000)
    else
        local rand = math.random(1, #Lines)
        TriggerClientEvent("Notification:left_grave_robbery", _source, TEXTS.GraveRobbery, Lines[rand],
            TEXTURES.alert[1], TEXTURES.alert[2], 2000)
    end
end)

function CheckTable(table, element)
    for k, v in pairs(table) do
        if v == element then
            return true
        end
    end
    return false
end

RegisterServerEvent("outsider_robbery:sendPlayers", function(source)
    if not source then return end
    local _source = source
    local user = VorpCore.getUser(_source)

    if user then
        local job = user.getUsedCharacter.job                           -- player job

        if CheckTable(Config.JobsToAlert, job) then                     -- if player exist and job equals to config then add to table
            JobsTable[#JobsTable + 1] = { source = _source, job = job } -- id
        end
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
end)


AddEventHandler('outsider_alertjobs', function(source,Town)
    for _, jobHolder in pairs(JobsTable) do
        if Config.synSociety and not Config.outsider_jobalert.usealert then
            local onduty = exports["syn_society"]:IsPlayerOnDuty(jobHolder, jobHolder.job)

            if onduty then
                VorpCore.NotifyLeft(jobHolder.source, Town, "grave robbery was witnessed ", "generic_textures",
                    "temp_pedshot", 8000,
                    "COLOR_WHITE")
            end
        elseif Config.outsider_jobalert.usealert and not Config.synSociety then
           TriggerEvent("outsider_alertjobs_Custom", source, Config.outsider_jobalert[jobHolder.job])
        else
            VorpCore.NotifyLeft(jobHolder.source, Town, "grave robbery was witnessed ", "generic_textures",
                "temp_pedshot", 8000,
                "COLOR_WHITE")
        end
    end
end)

