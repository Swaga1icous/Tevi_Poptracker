function hasFire()
	
    local accessibilityLevel = math.max(Tracker:FindObjectForCode("@Solennian Ruins/EVENT_Fire/Solennian Ruins - Fire").AccessibilityLevel,
    Tracker:FindObjectForCode("@Travoll Mines/EVENT_Fire/Travoll Mines - Fire").AccessibilityLevel,
    Tracker:FindObjectForCode("@Travoll Mines/EVENT_Fire/Travoll Mines - Fire").AccessibilityLevel
    )
    
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("fireElement")
        obj.Active = true
    end
end
function hasWater()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@Verdazure Sea West/EVENT_Water/Verdazure Sea - Water West").AccessibilityLevel,
    Tracker:FindObjectForCode("@Verdazure Sea East/EVENT_Water/Verdazure Sea - Water").AccessibilityLevel
    )
    
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("waterElement")
        obj.Active = true
    end
end
function hasEarth()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@Gleamwood Middle/EVENT_Earth/Gleamwood Upper - Earth").AccessibilityLevel,
    Tracker:FindObjectForCode("@Gleamwood Right/EVENT_Earth/Ulskan Village Area - Earth").AccessibilityLevel
    )
    
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("earthElement")
        obj.Active = true
    end
end
function hasAir()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@Snowveil/EVENT_Air/Snowveil - Air").AccessibilityLevel,
    Tracker:FindObjectForCode("@Snowveil Above HQ/EVENT_Air/Snowveil Above HQ - Air").AccessibilityLevel,
    Tracker:FindObjectForCode("@Heavens Valley Snow Route Low/EVENT_Air/Heavens Valley Snow Route Low - Air").AccessibilityLevel
    )
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("airElement")
        obj.Active = true
    end
end
function hasWater()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@//").AccessibilityLevel,
    Tracker:FindObjectForCode("@//").AccessibilityLevel
    )
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("fireElement")
        obj.Active = true
    end
end
function hasLight()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@Heavens Valley West/EVENT_Light/Heavens Valley West - Light").AccessibilityLevel,
    Tracker:FindObjectForCode("@Valhalla Breath West/EVENT_Light/Valhalla Breath West - Light").AccessibilityLevel,
    Tracker:FindObjectForCode("@Heavens Valley Snow Route Low/EVENT_Light/Heavens Valley Snow Route Low - Light").AccessibilityLevel
    )
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("lightElement")
        obj.Active = true
    end

end
function hasDark()
	
    local accessibilityLevel = math.max(
    Tracker:FindObjectForCode("@Swamp Entrance/EVENT_Dark/Swamp Entrance - Dark").AccessibilityLevel,
    Tracker:FindObjectForCode("@Swamp/EVENT_Dark/Swamp - Dark").AccessibilityLevel,
    Tracker:FindObjectForCode("@Blushwood/EVENT_Dark/Blushwood - Dark").AccessibilityLevel,
    Tracker:FindObjectForCode("@Verdazure Swamp/EVENT_Dark/Verdazure Swamp - Dark").AccessibilityLevel
    )
    if accessibilityLevel >= AccessibilityLevel.Normal then
        local obj = Tracker:FindObjectForCode("darkElement")
        obj.Active = true
    end
end

function EVENT_HQSwitch1()
    return Tracker:FindObjectForCode("@Golden Hands HQ/EVENT_HQSwitch1/Golden Hands HQ - EVENT_HQSwitch1").AccessibilityLevel
end

function canSnowMechanic()
    return  Tracker:FindObjectForCode("@//").AccessibilityLevel
end
function EVENT_EliteChallangeB()
    return  Tracker:FindObjectForCode("@Thanatara Canyon/EVENT_EliteChallangeB/Thanatara Canyon - Elite Challenge B").AccessibilityLevel
end
function EVENT_EliteChallangeA()
    return  Tracker:FindObjectForCode("@Morose City/EVENT_EliteChallangeA/Morose City - Elite Challenge A").AccessibilityLevel
end
function EVENT_MoroseVisited()
    return  Tracker:FindObjectForCode("@Morose City/EVENT_MoroseVisited/Morose City - Visit").AccessibilityLevel
end
function EVENT_EliteChallangeD()
    return  Tracker:FindObjectForCode("@Ana Thema/EVENT_EliteChallangeD/Ana Thema - Elite Challenge D").AccessibilityLevel
end
function EVENT_EliteChallangeC()
    return  Tracker:FindObjectForCode("@Gleamwood Upper/EVENT_EliteChallangeC/Gleamwood Upper - Elite Challenge C").AccessibilityLevel
end
function EVENT_AnathemaVisited()
    return  Tracker:FindObjectForCode("@Ana Thema/EVENT_AnathemaVisited/Ana Thema - Visit").AccessibilityLevel
end
function EVENT_EliteChallangeE()
    return  Tracker:FindObjectForCode("@Tartarus/EVENT_EliteChallangeE/Tartarus - Elite Challenge E").AccessibilityLevel
end
function EVENT_Demonfray()
    return  Tracker:FindObjectForCode("@Lab/EVENT_Demonfray/Lab - Demon Fray").AccessibilityLevel
end
function EVENT_EliteChallangeF()
    return  Tracker:FindObjectForCode("@Valhalla City/EVENT_EliteChallangeF/Valhalla City - Elite Challenge F").AccessibilityLevel
end
function EVENT_Memloch()
    return  Tracker:FindObjectForCode("@Gallery of Mirrors East/EVENT_Memloch/Gallery of Mirrors East - Memloch").AccessibilityLevel
end
function EVENT_FreeStrongAttack()
    return  Tracker:FindObjectForCode("@Cloister Entrance/EVENT_FreeStrongAttack/Cloister - Free Attack").AccessibilityLevel
end