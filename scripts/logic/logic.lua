-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:

function hasAmount (code, count)
    local item = Tracker:FindObjectForCode(code)
    if (item == nil) then
        return 0
    end
    if (item.AcquiredCount >= tonumber(count)) then
        return 1
    end
    return 0
end


function canAccessExit(exit_name)
    local entrance = TRANSITION_PAIRS[exit_name]
    local entrance_logic_path = "@Entrance Logic/"..entrance
    local loc = Tracker:FindObjectForCode(entrance_logic_path)
    print(string.format("Resolving exit logic for '%s' accessible from entrance '%s'", exit_name, entrance))
    return loc.AccessibilityLevel
end

--TODO memine challenge count