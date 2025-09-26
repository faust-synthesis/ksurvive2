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



minetest.register_craftitem("ks_tools:toolhead_eclogite_pickaxe", {
	description = "Eclogite Pickaxe Head",
	inventory_image = "tools.toolhead_eclogite_pickaxe.png",
	wield_image = "tools.toolhead_eclogite_pickaxe.png",
	groups = {stone_toolhead = 1, pickaxe_toolhead = 1, eclogite_toolhead = 1}
})

minetest.register_craftitem("ks_tools:toolhead_eclogite_shovel", {
	description = "Eclogite Shovel Head",
	inventory_image = "tools.toolhead_eclogite_shovel.png",
	wield_image = "tools.toolhead_eclogite_shovel.png",
	groups = {stone_toolhead = 1, shovel_toolhead = 1, eclogite_toolhead = 1}
})

minetest.register_craftitem("ks_tools:toolhead_eclogite_axe", {
	description = "Eclogite Axe Head",
	inventory_image = "tools.toolhead_eclogite_axe.png",
	wield_image = "tools.toolhead_eclogite_axe.png",
	groups = {stone_toolhead = 1, axe_toolhead = 1, eclogite_toolhead = 1}
})