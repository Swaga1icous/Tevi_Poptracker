import json
import os



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
    if os.path.isfile(Path+"\\resource\\"+mapName+".jsonc"):
        currentMap = json.load(open(Path+"\\resource\\"+mapName+".jsonc"))
    
    for idx,v in enumerate(currentMap):
        region = PoptrackerList[regionsIds[v["name"]]]
        for ve in v["children"]:
            found = False
            for regChild in region["children"]:
                if regChild["name"] == ve["name"] or ve["sections"][0]["name"] == regChild["name"]:
                    found = True
                    if len(regChild["map_locations"]) == 1:
                        regChild["map_locations"][0]["x"] = ve["map_locations"][0]["x"]
                        regChild["map_locations"][0]["y"] = ve["map_locations"][0]["y"]
            if not found:
                print(f"Could not find Location {ve['name']} in Area {v['name']}")
                a = 1
        currentMap[idx] = region
    file = open(Path+"\\..\\locations\\"+mapName+".jsonc",'w+')
    file.write(json.dumps(currentMap,indent=2))
    file.close()

updateLocation("anaThema")
updateLocation("blushwood")
updateLocation("canyonDesert")
updateLocation("catacombs")
updateLocation("cloister")
updateLocation("copperwood")
updateLocation("desertBase")
updateLocation("dreamersKeep")
updateLocation("evergarden")
updateLocation("forgottenCity")
updateLocation("galleryMirrors")
updateLocation("gloamwood")
updateLocation("magmaPlusSwamp")
updateLocation("morose")
updateLocation("oasis")
updateLocation("plagueForest")
updateLocation("relicts")
updateLocation("sinners")
updateLocation("snowCity")
updateLocation("snowveilVerglas")
updateLocation("solennianRuins")
updateLocation("tartarus")
updateLocation("travollIndustries")
updateLocation("travollMines")
updateLocation("ulvosa")
updateLocation("valhalla")
updateLocation("valhallasBreathEast")
updateLocation("valhallasBreathWest")
updateLocation("verdawnAndMaze")
updateLocation("verdazureSea")
updateLocation("other")


file = open(Path+"\\locations.jsonc",'w+')
file.write(json.dumps(PoptrackerList,indent=2))
file.close()
print("finished")


