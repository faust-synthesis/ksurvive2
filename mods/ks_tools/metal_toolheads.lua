function KSRegisterMetalToolhead(metalType, metalName, groupOverride)
	minetest.register_craftitem("ks_tools:toolhead_" .. metalType .. "_pickaxe", {
		description = metalName .. " Pickaxe Head",
		inventory_image = "tools.toolhead_" .. metalType .. "_pickaxe.png",
		wield_image = "tools.toolhead_" .. metalType .. "_pickaxe.png",
		groups = concat(groupOverride, {metal_toolhead = 1, pickaxe_toolhead = 1})
	})

	minetest.register_craftitem("ks_tools:toolhead_" .. metalType .. "_shovel", {
		description = metalName .. " Shovel Head",
		inventory_image = "tools.toolhead_" .. metalType .. "_shovel.png",
		wield_image = "tools.toolhead_" .. metalType .. "_shovel.png",
		groups = concat(groupOverride, {metal_toolhead = 1, shovel_toolhead = 1})
	})

	minetest.register_craftitem("ks_tools:toolhead_" .. metalType .. "_axe", {
		description = metalName .. " Axe Head",
		inventory_image = "tools.toolhead_" .. metalType .. "_axe.png",
		wield_image = "tools.toolhead_" .. metalType .. "_axe.png",
		groups = concat(groupOverride, {metal_toolhead = 1, axe_toolhead = 1})
	})
end

KSRegisterMetalToolhead("aluminium", "Aluminium", {aluminium_toolhead = 1})
KSRegisterMetalToolhead("copper", "Copper", {copper_toolhead = 1})
KSRegisterMetalToolhead("temp_aluminium", "Tempered Aluminium", {temp_aluminium_toolhead = 1, aluminium_toolhead = 1})