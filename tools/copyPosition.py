import json
import os


from logicParser import parse_expression_logic





Path = os.path.dirname(os.path.realpath(__file__))
regionsIds = {}
regionLocations = {}
currentRegionId = 0
PoptrackerList = []
currentMap = []
if os.path.isfile(Path+"\\locations.jsonc"):
    PoptrackerList = json.load(open(Path+"\\locations.jsonc"))
    for val in PoptrackerList:
        regionsIds[val["name"]] = currentRegionId
        currentRegionId += 1



def updateLocation(mapName):
    if os.path.isfile(Path+"\\..\\locations\\"+mapName+".jsonc"):
        currentMap = json.load(open(Path+"\\..\\locations\\"+mapName+".jsonc"))
    for v in currentMap:
        region = PoptrackerList[regionsIds[v["name"]]]
        for ve in v["children"]:
            found = False
            for regChild in region["children"]:
                if regChild["name"] == ve["name"]:
                    found = True
                    if len(regChild["map_locations"]) == 1:
                        regChild["map_locations"][0] = ve["map_locations"][0]
            if not found:
                print(f"Could not find Location {ve['name']}")

updateLocation("oasis")


file = open(Path+"\\AllLocations.jsonc",'w+')
file.write(json.dumps(PoptrackerList,indent=2))
print("finished")


