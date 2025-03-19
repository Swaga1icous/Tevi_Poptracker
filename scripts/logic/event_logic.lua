function EVENT_HQSwitch1()
    return Tracker:FindObjectForCode("@Golden Hands HQ/Golden Hands HQ - EVENT_HQSwitch1/EVENT_HQSwitch1").AccessibilityLevel
end

function EVENT_EliteChallangeB()
    return  Tracker:FindObjectForCode("@Thanatara Canyon/Thanatara Canyon - Elite Challenge B/EVENT_EliteChallangeB").AccessibilityLevel
end
function EVENT_EliteChallangeA()
    return  Tracker:FindObjectForCode("@Morose City/Morose City - Elite Challenge A/EVENT_EliteChallangeA").AccessibilityLevel
end
function EVENT_MoroseVisited()
    return  Tracker:FindObjectForCode("@Morose City/Morose City - Visit/EVENT_MoroseVisited").AccessibilityLevel
end
function EVENT_EliteChallangeD()
    return  Tracker:FindObjectForCode("@Ana Thema/Ana Thema - Elite Challenge D/EVENT_EliteChallangeD").AccessibilityLevel
end
function EVENT_EliteChallangeC()
    return  Tracker:FindObjectForCode("@Gloamwood to Ulvosa/Gloamwood Upper - Elite Challenge C/EVENT_EliteChallangeC").AccessibilityLevel
end
function EVENT_AnathemaVisited()
    return  Tracker:FindObjectForCode("@Ana Thema/Ana Thema - Visit/EVENT_AnathemaVisited").AccessibilityLevel
end
function EVENT_EliteChallangeE()
    return  Tracker:FindObjectForCode("@Tartarus/Tartarus - Elite Challenge E/EVENT_EliteChallangeE").AccessibilityLevel
end
function EVENT_Demonfray()
    return  Tracker:FindObjectForCode("@Lab/Lab - Demon Fray/EVENT_Demonfray").AccessibilityLevel
end
function EVENT_EliteChallangeF()
    return  Tracker:FindObjectForCode("@Valhalla City/Valhalla City - Elite Challenge F/EVENT_EliteChallangeF").AccessibilityLevel
end
function EVENT_Memloch()
    return  Tracker:FindObjectForCode("@Gallery of Mirrors East/Gallery of Mirrors East - Memloch/EVENT_Memloch").AccessibilityLevel
end
function EVENT_FreeStrongAttack()
    return  Tracker:FindObjectForCode("@Cloister Entrance/Cloister - Free Attack/EVENT_FreeStrongAttack").AccessibilityLevel
end
function EVENT_Memine0()
    return  Tracker:FindObjectForCode("@Gloamwood Bottom/Gloamwood - Memine Race/EVENT_Memine0").AccessibilityLevel
end
function EVENT_Memine1()
    return  Tracker:FindObjectForCode("@Blushwood Sliding/Blushwood Sliding - Memine Race/EVENT_Memine1").AccessibilityLevel
end
function EVENT_Memine2()
    return  Tracker:FindObjectForCode("@Forest/Forest - Memine Race/EVENT_Memine2").AccessibilityLevel
end
function EVENT_Memine3()
    return  Tracker:FindObjectForCode("@Tartarus/Tartarus - Memine Race/EVENT_Memine3").AccessibilityLevel
end
function EVENT_Memine4()
    return  Tracker:FindObjectForCode("@Heavens Valley Snow Route Middle/Heavens Valley Snow Route Middle - Memine Race/EVENT_Memine4").AccessibilityLevel
end
function EVENT_Memine5()
    return  Tracker:FindObjectForCode("@Ana Thema/Ana Thema - Memine Race/EVENT_Memine5").AccessibilityLevel
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
    local snow1 = Tracker:FindObjectForCode("@Verdazure Swamp/Verdazure Swamp - Snow Orb/EVENT_SnowMechanic").AccessibilityLevel
    local snow2 = Tracker:FindObjectForCode("@Snowveil Above HQ/Snowveil Above HQ - Snow Orb/EVENT_SnowMechanic").AccessibilityLevel
    local snow3 = Tracker:FindObjectForCode("@Heavens Valley Snow Route Middle/Heavens Valley Snow Route Middle - Snow Orb/EVENT_SnowMechanic").AccessibilityLevel
    currentAccess = math.max(math.min(snow1,snow3),math.min(snow1,snow2),math.min(snow2,snow3))
    return currentAccess
end