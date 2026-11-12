-- CLIENT. Asks the game for its own Cayo Perico files (config.lua) and keeps them asked for.
-- RequestIpl only makes a map file available: the game still streams it by distance, so nothing
-- loads until a player is near the island. Stopping the script hands every file back.

local asked = {}

local function want(name, on)
    if on then
        if not IsIplActive(name) then RequestIpl(name) end
        asked[name] = true
    else
        if IsIplActive(name) then RemoveIpl(name) end
        asked[name] = nil
    end
end

local function apply()
    for _, name in ipairs(Config.Base) do want(name, true) end
    -- off lines first, then on lines: a file named on two lines ends up on if any of them is on
    for _, part in ipairs(Config.Parts) do if not part.on then for _, name in ipairs(part.ipls) do want(name, false) end end end
    for _, part in ipairs(Config.Parts) do if part.on then for _, name in ipairs(part.ipls) do want(name, true) end end end
end

local atIsland = false

local function setAtIsland(on)
    if atIsland == on then return end
    atIsland = on
    if Config.IslandPeds then SetScenarioGroupEnabled('Heist_Island_Peds', on) end
    if Config.IslandSound then
        SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Zones', on, true)
        SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Disabled_Zones', not on, true)
    end
    if Config.Waves then
        if on then SetDeepOceanScaler(Config.Waves + 0.0) else ResetDeepOceanScaler() end
    end
end

CreateThread(function()
    apply()
    local a = Config.Area
    while true do
        local p = GetEntityCoords(PlayerPedId())
        local d = #(vec2(p.x, p.y) - vec2(a.x, a.y))
        if not atIsland and d < a.enter then setAtIsland(true)
        elseif atIsland and d > a.leave then setAtIsland(false) end
        Wait(1500)
    end
end)

AddEventHandler('onClientResourceStop', function(res)
    if res ~= GetCurrentResourceName() then return end
    setAtIsland(false)
    for name in pairs(asked) do if IsIplActive(name) then RemoveIpl(name) end end
end)
