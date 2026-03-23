---@diagnostic disable: undefined-global
local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local praying = false
local digging = true
local shovelObject = nil
local PromptKey
local PromptKey2
local PromptGroup = GetRandomIntInRange(0, 0xffffff)
local prompts = {}

function TableNum(tbl)
    local c = 0
    for _, _ in pairs(tbl) do
        c = c + 1
    end
    return c
end

local districts <const> = {
    [459833523] = "Valentine",
    [1053078005] = "Blackwater",
    [427683330] = "Strawberry",
    [-765540529] = "Saint Denis",
    [7359335] = "Annesburg",
    [-744494798] = "Armadillo",
    [2046780049] = "Rhodes",
    [2126321341] = "Vanhorn",
    [-1524959147] = "Tumbleweed",
}

local function getTown(pcoords)
    local district = Citizen.InvokeNative(0x43AD8FC02B429D33, pcoords.x, pcoords.y, pcoords.z, 1)
    return districts[district]
end

function LoadPrompts()
    local str = TEXTS.Prompt1
    PromptKey = UiPromptRegisterBegin()
    UiPromptSetControlAction(PromptKey, Config.Prompts.Prompt1)
    str = VarString(10, 'LITERAL_STRING', str)
    UiPromptSetText(PromptKey, str)
    UiPromptSetEnabled(PromptKey, true)
    UiPromptSetVisible(PromptKey, true)
    UiPromptSetStandardMode(PromptKey, true)
    UiPromptSetGroup(PromptKey, PromptGroup, 0)
    UiPromptRegisterEnd(PromptKey)
    prompts[#prompts + 1] = PromptKey

    str = TEXTS.Prompt2
    PromptKey2 = UiPromptRegisterBegin()
    UiPromptSetControlAction(PromptKey2, Config.Prompts.Prompt2)
    str = VarString(10, 'LITERAL_STRING', str)
    UiPromptSetText(PromptKey2, str)
    UiPromptSetEnabled(PromptKey2, true)
    UiPromptSetVisible(PromptKey2, true)
    UiPromptSetStandardMode(PromptKey2, true)
    UiPromptSetGroup(PromptKey2, PromptGroup, 0)
    UiPromptRegisterEnd(PromptKey2)
    prompts[#prompts + 1] = PromptKey2
end

CreateThread(function()
    repeat Wait(5000) until LocalPlayer.state.IsInSession
    LoadPrompts()

    while true do
        local sleep = 1000
        local pped = PlayerPedId()
        local pcoords = GetEntityCoords(pped)
        local isdead = IsEntityDead(pped)

        if not isdead then
            for index, v in ipairs(Config.Graves) do
                local dist = #(pcoords - v.coords)
                if dist < 3.0 then
                    repeat
                        -- optimisie loop theres 250 entries in the config.Graves table
                        dist = #(pcoords - v.coords)
                        sleep = 300
                        if dist < 1.0 then
                            sleep = 0
                            local label = VarString(10, 'LITERAL_STRING', TEXTS.GraveDisplay .. " " .. v.name)
                            UiPromptSetActiveGroupThisFrame(PromptGroup, label, 0, 0, 0, 0)

                            if UiPromptHasStandardModeCompleted(PromptKey, 0) then
                                TriggerEvent("ricx_grave_robbery:dig", index)
                                Wait(2000)
                            end

                            if UiPromptHasStandardModeCompleted(PromptKey2, 0) then
                                TriggerEvent("ricx_grave_robbery:pray", index)
                                Wait(2000)
                            end
                        end
                        isdead = IsEntityDead(pped)
                        Wait(sleep)
                    until dist > 3.0 or isdead
                end
            end
        end
        Wait(sleep)
    end
end)

function EndShovel()
    digging = false
    if shovelObject then
        DeleteObject(shovelObject)
        SetEntityAsNoLongerNeeded(shovelObject)
        shovelObject = nil
    end
    ClearPedTasks(PlayerPedId())
end

AddEventHandler("ricx_grave_robbery:dig", function(id)
    if praying then
        TriggerEvent("Notification:left_grave_robbery", TEXTS.GraveRobbery, TEXTS.CantDoThat, TEXTURES.alert[1],
            TEXTURES.alert[2], 2000)
        return
    end

    if digging then
        EndShovel()
    else
        local pcoords = GetEntityCoords(PlayerPedId())
        local town = getTown(pcoords) or "Unknown"
        local hour = GetClockHours()
        if Config.UseHours then
            if hour >= Config.Hours[1] or hour < Config.Hours[2] then
                TriggerServerEvent("ricx_grave_robbery:check_shovel", id, town)
            elseif hour >= Config.Hours[2] then
                TriggerEvent("Notification:left_grave_robbery", TEXTS.GraveRobbery, "Can only be robbed at night",
                    TEXTURES.alert[1],
                    TEXTURES.alert[2], 2000)
            end
        else
            TriggerServerEvent("ricx_grave_robbery:check_shovel", id, town)
        end
    end
end)

function AttachEnt(from, to, boneIndex, x, y, z, pitch, roll, yaw, useSoftPinning, collision, vertex, fixedRot)
    return AttachEntityToEntity(from, to, boneIndex, x, y, z, pitch, roll, yaw, false, useSoftPinning, collision, false,
        vertex, fixedRot, false, false)
end

RegisterNetEvent("ricx_grave_robbery:start_dig", function(heading)
    if shovelObject then
        DeleteObject(shovelObject)
        SetEntityAsNoLongerNeeded(shovelObject)
        shovelObject = nil
    end
    digging = true
    local pedp = PlayerPedId()
    local pc = GetEntityCoords(pedp)
    local model = Config.Dig.shovel

    if not HasModelLoaded(model) then
        RequestModel(model, false)
        while not HasModelLoaded(model) do
            Wait(0)
        end
    end

    shovelObject = CreateObject(model, pc.x, pc.y, pc.z, true, true, true)
    local boneIndex = GetEntityBoneIndexByName(pedp, Config.Dig.bone)
    local Attach = Config.Dig.pos
    SetEntityHeading(PlayerPedId(), heading)
    local anim = Config.Dig.anim

    if not HasAnimDictLoaded(anim[1]) then
        RequestAnimDict(anim[1])
        while not HasAnimDictLoaded(anim[1]) do
            Wait(0)
        end
    end

    TaskPlayAnim(pedp, anim[1], anim[2], 1.0, 1.0, -1, 1, 0, false, false, false)
    AttachEnt(shovelObject, pedp, boneIndex, Attach[1], Attach[2], Attach[3], Attach[4], Attach[5], Attach[6], 0, 1, 1, 1)
    TriggerEvent("ricx_grave_robbery:digging_timer")
    Wait(200)
    RemoveAnimDict(anim[1])
    SetModelAsNoLongerNeeded(model)
end)


AddEventHandler("ricx_grave_robbery:digging_timer", function(id)
    local timer = Config.DiggingTimer
    local timer2 = 0
    while timer2 ~= timer and digging do
        Wait(1000)
        timer2 = timer2 + 1
        if not digging then
            break
        end
    end
    if digging then
        EndShovel()
        TriggerServerEvent("ricx_grave_robbery:reward", id)
    end
end)


AddEventHandler("ricx_grave_robbery:pray", function(id)
    if digging then
        TriggerEvent("Notification:left_grave_robbery", TEXTS.GraveRobbery, TEXTS.CantDoThat, TEXTURES.alert[1],
            TEXTURES.alert[2], 2000)
        return
    end
    if praying then
        ClearPedTasks(PlayerPedId())
    else
        local randomAnim = math.random(1, #Config.PrayAnim)
        local anim = Config.PrayAnim[randomAnim]
        local heading = Config.Graves[id].heading
        if not HasAnimDictLoaded(anim[1]) then
            RequestAnimDict(anim[1])
            while not HasAnimDictLoaded(anim[1]) do
                Wait(0)
            end
        end
        SetEntityHeading(PlayerPedId(), heading)
        TaskPlayAnim(PlayerPedId(), anim[1], anim[2], 1.0, 1.0, -1, 1, 0, true, 0, false, "", false)
        Wait(1000)
        RemoveAnimDict(anim[1])
    end
    praying = not praying
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    if praying or digging then
        EndShovel()
    end
    for _, v in pairs(prompts) do
        UiPromptDelete(v)
    end
end)
----------------------------Basic Notification----------------------------

RegisterNetEvent('Notification:left_grave_robbery')
AddEventHandler('Notification:left_grave_robbery', function(t1, t2, dict, txtr, timer)
    TriggerEvent("vorp:TipBottom", t1 .. "\n" .. t2, timer)
end)
