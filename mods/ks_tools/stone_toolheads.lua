function KSRegisterStoneToolhead(stoneType, stoneName, groupOverride)
	minetest.register_craftitem("ks_tools:toolhead_" .. stoneType .. "_pickaxe", {
		description = stoneName .. " Pickaxe Head",
		inventory_image = "tools.toolhead_" .. stoneType .. "_pickaxe.png",
		wield_image = "tools.toolhead_" .. stoneType .. "_pickaxe.png",
		groups = concat(groupOverride, {stone_toolhead = 1, pickaxe_toolhead = 1})
	})

	minetest.register_craftitem("ks_tools:toolhead_" .. stoneType .. "_shovel", {
		description = stoneName .. " Shovel Head",
		inventory_image = "tools.toolhead_" .. stoneType .. "_shovel.png",
		wield_image = "tools.toolhead_" .. stoneType .. "_shovel.png",
		groups = concat(groupOverride, {stone_toolhead = 1, shovel_toolhead = 1})
	})

	minetest.register_craftitem("ks_tools:toolhead_" .. stoneType .. "_axe", {
		description = stoneName .. " Axe Head",
		inventory_image = "tools.toolhead_" .. stoneType .. "_axe.png",
		wield_image = "tools.toolhead_" .. stoneType .. "_axe.png",
		groups = concat(groupOverride, {stone_toolhead = 1, axe_toolhead = 1})
	})
end

KSRegisterStoneToolhead("dolomite", "Dolomite", {dolomite_toolhead = 1})
KSRegisterStoneToolhead("aragonite", "Aragonite", {aragonite_toolhead = 1})