import json
import os
import sys
import pkgutil

from logicParser import TeviRuleToPoptacker,parse_expression_logic

Path = os.path.dirname(os.path.realpath(__file__))



regionsIds = {}
regionLocations = {}
currentRegionId = 0
PoptrackerList = []

if os.path.isfile(Path+"\\locations.jsonc"):
    PoptrackerList = json.load(open(Path+"\\locations.jsonc"))
    for val in PoptrackerList:
        regionsIds[val["name"]] = currentRegionId
        currentRegionId += 1

RandomizerLocationList = json.load(open(Path+"\\Location.json"))
RandomizerAreaList = json.load(open(Path+"\\Area.json"))
del RandomizerAreaList["Transitions"]

def setAccessRule(rule):
    logic = []
    for v in rule:
        
        t = parse_expression_logic(v["Method"])
        if t == "True" or t == "":
            continue
        t = t[1:-1]
        logic += [t]
    return logic

def addMapAccessRule(rule):
    logic = []
    for v in rule:
        t = str(parse_expression_logic(v["Method"]))
        logic += [t]

    return logic

def setMapName(area):
    name = "No Map available"
    if "Exit" in area or " to " in area:
        a = 2
    elif "Ana Thema" in area:
        name = "Ana Thema"
    elif "Blushwood" in area:
        name = "Blushwood"
    elif "Thanatara" in area or "Gurun" in area:
        name = "Thanatara Canyon + Gurun Desert"
    elif "Lab" in area or "Catacombs" in area:
        name = "The Catacombs + Omphalos Laboratory"
    elif "CopperWood" in area:
        name = "Copperwood"
    elif area == "Forest" or "Maze" in area:
        name = "Verdawn Forest + Misty Maze"
    elif "EverGarden" in area:
        name = "Evernight Garden"
    elif "Gleamwood" in area or "Ulskan" in area:
        name = "Gloamwood"
    elif "Industrie" in area: #wrong name (it's german)
        name = "Travoll Industrial Park"
    elif "Verdazure Swamp" == area or "Forgotten City" in area or "Verdazure Ocean" in area:
        name = "Verdazure Sea (East) + Forgotten City + Gothera Swamplands (East)"
    elif "Magma" in area or "Swamp" in area:
        name = "Magma Pits + Magma Depths + Gothera Swamplands (West)"
    elif "Mines" in area:
        name = "Travoll Mines"
    elif "Gallery" in area:
        name = "Gallery of Mirrors + Gallery of Souls"
    elif "Morose" in area:
        name = "Morose"
    elif "Oasis" in area:
        name = "Oasis"
    elif "Sinner" in area or "Illusion" in area:
        name = "Sinner's Oath + Phantasmic Palace"
    elif "Plague" in area:
        name = "The Plagued Forest"
    elif "Cloister" in area:
        name = "Cloister of Redemption"
    elif "Relicts" in area:
        name = "The Relicts"
    elif "Solennian Ruins" in area:
        name= "The Solennian Ruins"
    elif "Sea" in area:
        name = "Verdazure Sea (West) + Outer Moat + Solanda Beach"
    elif "Desert Base" in area:
        name = "The Sewerways + Golden Hands Desert Base"
    elif "DreamKeeper" in area or "Dreamless" in area:
        name = "Snowveil + Dreamer's Keep"
    elif ("Snowveil" in area and not "HQ" in area):
        name = "Snowveil + Verglas Village"
    elif "Snow City" in area or "HQ" in area:
        name = "Snowveilian Valley + Desert Hands HQ"
    elif "Tartarus" in area:
        name = "Tartarus"
    elif "Ulvosa" in area:
        name = "Ulvosa"
    elif "Valhalla City" in area:
        name = "Valhalla"
    elif "Heavens Valley Snow Route" in area:
         name = "Heaven's Valley (West) + Valhalla's Breath (West)"
    elif "Valhalla Breath West" in area or "Valley West" in area:
        name = "Heaven's Valley (West) + Valhalla's Breath (West)"
    else:
        print(f"{area} not found")
    return name

for v in PoptrackerList:
    v["access_rules"] = []
    for ve in v["children"]:
        ve["access_rules"] = []

for val in RandomizerLocationList:
    if not val["Location"] in regionsIds:
        regionTemplate = {
            "name": val["Location"],
            "clear_as_group": False,
            "access_rules": [],
            "children": []
        }
        regionsIds[val["Location"]] = currentRegionId
        currentRegionId +=1
        PoptrackerList.append(regionTemplate)

    locName = val["LocationName"].split("-")[1][1:]
    itemName = ""
    if val["Itemname"] in TeviRuleToPoptacker:
        itemName = TeviRuleToPoptacker[val["Itemname"]]
    elif "BADGE" in val["Itemname"]:
        itemName = "badge"
    else:
        itemName = "other"
    locTemplate = {
        "name": locName,
        "access_rules": setAccessRule(val["Requirement"]),
        "sections": [{
            "name": itemName,
            "item_count": 1
          }
        ],
        "map_locations": [
          {
            "map": setMapName(val["Location"]),
            "x": 0,
            "y": 0
          }
        ]
      }
    if len(locTemplate["access_rules"]) == 1 and locTemplate["access_rules"][0] == "":
        locTemplate["access_rules"] = []
    found = False

    for location in PoptrackerList[regionsIds[val["Location"]]]["children"]:
        if location["name"] == locName:
            found = True
            location["access_rules"] = locTemplate["access_rules"]
            if len(locTemplate["access_rules"]) == 1 and locTemplate["access_rules"][0] == "":
                locTemplate["access_rules"] = []
    if not found:
        PoptrackerList[regionsIds[val["Location"]]]["children"].append(locTemplate)

for k,v in RandomizerAreaList.items():
    for area in v:
        for con in area["Connections"]:
            if con["Exit"] == "":
                continue
            logic = setAccessRule([{"Method":con["Method"]}])

            for log in logic:
                if con["Exit"].isdigit():
                    if len(logic[0]) > 0:
                        logic[0] = f"@Exit Logic/{con['Exit']},{logic[0]}"
                    else:
                        logic[0] = f"@Exit Logic/{con['Exit']}"
                else:
                    if len(logic[0])> 0:
                        logic[0] = f"@{area['Name']},{logic[0]}"
                    else:
                        logic[0] = f"@{area['Name']}" 
            if con["Exit"].isdigit():
                if not area["Name"] in regionsIds:
                    print(f"THIS AREA NOT FOUND: {area['Name']}")
                    regionTemplate = {
                        "name": area['Name'],
                        "clear_as_group": False,
                        "access_rules": logic,
                        "children": []
                    }
                    regionsIds[area['Name']] = currentRegionId
                    currentRegionId +=1
                    PoptrackerList.append(regionTemplate)                      
                else:
                    PoptrackerList[regionsIds[area["Name"]]]["access_rules"] += logic
            else:
                if not con["Exit"] in regionsIds:
                    print(f"THIS AREA NOT FOUND: {con['Exit']}")
                    regionTemplate = {
                        "name": con['Exit'],
                        "clear_as_group": False,
                        "access_rules": logic,
                        "children": []
                    }
                    regionsIds[con['Exit']] = currentRegionId
                    currentRegionId +=1
                    PoptrackerList.append(regionTemplate)                    

                else:
                    PoptrackerList[regionsIds[con["Exit"]]]["access_rules"] += logic


file = open(Path+"\\locations.jsonc",'w+')
file.write(json.dumps(PoptrackerList,indent=2))
print("finished")
    