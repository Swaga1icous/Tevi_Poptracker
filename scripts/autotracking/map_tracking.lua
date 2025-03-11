function onMapChange(key,value,old_value)
	local ky = "Slot:"..Archipelago.PlayerNumber..":currentMap"
	if (key == ky) then
		Tracker:UiHint("ActivateTab", MAP_MAPPING[value])
	end
    print(value)
end