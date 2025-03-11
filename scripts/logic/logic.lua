-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:

function hasAmount (code, count)
    local item = Tracker:FindObjectForCode(code)
    if (item == nil) then
        return 0
    end
    if(item.Type == "toggle") then
        return item.Active
    else 
        return item.AcquiredCount >= tonumber(count)
    end
end


function canAccessExit(exit_name)
    local entrance = TRANSITION_PAIRS[exit_name]
    local entrance_logic_path = "@Entrance Logic/"..entrance
    local loc = Tracker:FindObjectForCode(entrance_logic_path)
    --print(string.format("Resolving exit logic for '%s' accessible from entrance '%s'", exit_name, entrance))
    return loc.AccessibilityLevel
end


function Chapter (count)
    local chapter = 0
    local bossCounter = 0
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Oasis/EVENT_BOSS/Oasis - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Desert Base Entrance/EVENT_BOSS/Desert Base Entrance - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Solennian Ruins/EVENT_BOSS/Solennian Ruins - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Morose City/EVENT_BOSS/Morose City - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Travoll Mines/EVENT_BOSS/Travoll Mines - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Forest Maze boss/EVENT_BOSS/Forest - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Plague Forest/EVENT_BOSS/Plague Forest - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Ulvosa/EVENT_BOSS/Ulvosa - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Relicts/EVENT_BOSS/Relicts - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Catacombs Inner/EVENT_BOSS/Catacombs Inner - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Lab/EVENT_BOSS/Lab - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@EverGarden Boss Area/EVENT_BOSS/EverGarden - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Cloister Pre Boss/EVENT_BOSS/Cloister Boss - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Gallery of Mirrors East/EVENT_BOSS/Gallery of Mirrors East - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Gallery of Souls Boss Area/EVENT_BOSS/Gallery of Souls Boss Area - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Forgotten City/EVENT_BOSS/Forgotten City - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Snowveil Ex/EVENT_BOSS/Snowveil - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Golden Hands HQ Sewer/EVENT_BOSS/Golden Hands HQ Sewer - Boss").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@DreamKeeper/EVENT_BOSS/DreamKeeper - Boss Alius").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@DreamKeeper/EVENT_BOSS/DreamKeeper - Boss Charon").AccessibilityLevel,1) 
    bossCounter = bossCounter + math.min(Tracker:FindObjectForCode("@Illusion Palace Entrance/EVENT_BOSS/Illusion Palace Entrance - Boss").AccessibilityLevel,1)
    if (bossCounter >= 1) then
        chapter = chapter + 1
    end
    if (bossCounter >= 3) then
        chapter = chapter + 1
    end
    if (bossCounter >= 5) then
        chapter = chapter + 1
    end
    if (bossCounter >= 7) then
        chapter = chapter + 1
    end
    if (bossCounter >= 10) then
        chapter = chapter + 1
    end
    if (bossCounter >= 13) then
        chapter = chapter + 1
    end
    if (bossCounter >= 16) then
        chapter = chapter + 1
    end
    if (bossCounter >= 20) then
        chapter = chapter + 1
    end
    return chapter >= tonumber(count)
end

function True()
    return 1
end

function False()
    return 0
end
--TODO memine challenge count