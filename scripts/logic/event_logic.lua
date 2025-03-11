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
    Tracker:FindObjectForCode("@Gloamwood Middle/EVENT_Earth/Gloamwood Upper - Earth").AccessibilityLevel,
    Tracker:FindObjectForCode("@Gloamwood Right/EVENT_Earth/Ulskan Village Area - Earth").AccessibilityLevel
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
function EVENT_EliteChallengeB()
    return  Tracker:FindObjectForCode("@Thanatara Canyon/EVENT_EliteChallengeB/Thanatara Canyon - Elite Challenge B").AccessibilityLevel
end
function EVENT_EliteChallengeA()
    return  Tracker:FindObjectForCode("@Morose City/EVENT_EliteChallengeA/Morose City - Elite Challenge A").AccessibilityLevel
end
function EVENT_MoroseVisited()
    return  Tracker:FindObjectForCode("@Morose City/EVENT_MoroseVisited/Morose City - Visit").AccessibilityLevel
end
function EVENT_EliteChallengeD()
    return  Tracker:FindObjectForCode("@Ana Thema/EVENT_EliteChallengeD/Ana Thema - Elite Challenge D").AccessibilityLevel
end
function EVENT_EliteChallengeC()
    return  Tracker:FindObjectForCode("@Gloamwood to Ulvosa/EVENT_EliteChallengeC/Gloamwood Upper - Elite Challenge C").AccessibilityLevel
end
function EVENT_AnathemaVisited()
    return  Tracker:FindObjectForCode("@Ana Thema/EVENT_AnathemaVisited/Ana Thema - Visit").AccessibilityLevel
end
function EVENT_EliteChallengeE()
    return  Tracker:FindObjectForCode("@Tartarus/EVENT_EliteChallengeE/Tartarus - Elite Challenge E").AccessibilityLevel
end
function EVENT_Demonfray()
    return  Tracker:FindObjectForCode("@Lab/EVENT_Demonfray/Lab - Demon Fray").AccessibilityLevel
end
function EVENT_EliteChallengeF()
    return  Tracker:FindObjectForCode("@Valhalla City/EVENT_EliteChallengeF/Valhalla City - Elite Challenge F").AccessibilityLevel
end
function EVENT_Memloch()
    return  Tracker:FindObjectForCode("@Gallery of Mirrors East/EVENT_Memloch/Gallery of Mirrors East - Memloch").AccessibilityLevel
end
function EVENT_FreeStrongAttack()
    return  Tracker:FindObjectForCode("@Cloister Entrance/EVENT_FreeStrongAttack/Cloister - Free Attack").AccessibilityLevel
end
function EVENT_Memine0()
    return  Tracker:FindObjectForCode("@Gloamwood Bottom/EVENT_Memine0/Gloamwood - Memine Race").AccessibilityLevel
end
function EVENT_Memine1()
    return  Tracker:FindObjectForCode("@Blushwood Sliding/EVENT_Memine1/Blushwood Sliding - Memine Race").AccessibilityLevel
end
function EVENT_Memine2()
    return  Tracker:FindObjectForCode("@Forest/EVENT_Memine2/Forest - Memine Race").AccessibilityLevel
end
function EVENT_Memine3()
    return  Tracker:FindObjectForCode("@Tartarus/EVENT_Memine3/Tartarus - Memine Race").AccessibilityLevel
end
function EVENT_Memine4()
    return  Tracker:FindObjectForCode("@Heavens Valley Snow Route Middle/EVENT_Memine4/Heavens Valley Snow Route Middle - Memine Race").AccessibilityLevel
end
function EVENT_Memine5()
    return  Tracker:FindObjectForCode("@Ana Thema/EVENT_Memine5/Ana Thema - Memine Race").AccessibilityLevel
end
function EVENT_Memine()
    return  math.min(EVENT_Memine0(),EVENT_Memine1(),EVENT_Memine2(),EVENT_Memine3(),EVENT_Memine4(),EVENT_Memine5())
end

function RainbowCheck()
    local currentAccess = 0
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine0(),EVENT_Memine1()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine0(),EVENT_Memine2()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine0(),EVENT_Memine3()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine0(),EVENT_Memine4()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine0(),EVENT_Memine5()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine1(),EVENT_Memine2()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine1(),EVENT_Memine3()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine1(),EVENT_Memine4()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine1(),EVENT_Memine5()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine2(),EVENT_Memine3()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine2(),EVENT_Memine4()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine2(),EVENT_Memine5()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine3(),EVENT_Memine4()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine3(),EVENT_Memine5()))
    currentAccess = math.max(currentAccess,math.min(EVENT_Memine4(),EVENT_Memine5()))
    return currentAccess
end

function EVENT_SnowMechanic()
    local currentAccess = 0
    local snow1 = Tracker:FindObjectForCode("@Verdazure Swamp/EVENT_SnowMechanic/Verdazure Swamp - Snow Orb").AccessibilityLevel
    local snow2 = Tracker:FindObjectForCode("@Snowveil Above HQ/EVENT_SnowMechanic/Snowveil Above HQ - Snow Orb").AccessibilityLevel
    local snow3 = Tracker:FindObjectForCode("@Heavens Valley Snow Route Middle/EVENT_SnowMechanic/Heavens Valley Snow Route Middle - Snow Orb").AccessibilityLevel
    currentAccess = math.max(math.min(snow1,snow3),math.min(snow1,snow2),math.min(snow2,snow3))
    return currentAccess
end