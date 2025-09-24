minetest.register_craft({
	recipe = {
		{"ks_flora:juniper_planks", "                       ", "ks_flora:juniper_planks"},
		{"ks_flora:juniper_planks", "                       ", "ks_flora:juniper_planks"},
		{"ks_flora:juniper_planks", "ks_flora:juniper_planks", "ks_flora:juniper_planks"},
	},
	output = "ks_decor:juniper_bin 2"
})

minetest.register_craft({
	recipe = {
		{"ks_flora:holly_planks", "                     ", "ks_flora:holly_planks"},
		{"ks_flora:holly_planks", "                     ", "ks_flora:holly_planks"},
		{"ks_flora:holly_planks", "ks_flora:holly_planks", "ks_flora:holly_planks"},
	},
	output = "ks_decor:holly_bin 2"
})

minetest.register_craft({
	recipe = {
		{"ks_flora:douglasfir_planks", "                          ", "ks_flora:douglasfir_planks"},
		{"ks_flora:douglasfir_planks", "                          ", "ks_flora:douglasfir_planks"},
		{"ks_flora:douglasfir_planks", "ks_flora:douglasfir_planks", "ks_flora:douglasfir_planks"},
	},
	output = "ks_decor:douglasfir_bin 2"
})



minetest.register_craft({
	recipe = {
		{"ks_decor:ceramic_shard", "                      ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "                      ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard", "ks_decor:ceramic_shard"},
	},
	output = "ks_decor:ceramic_pot_dyenone"
})

minetest.register_craft({
	recipe = {
		{"ks_decor:ceramic_shard", "                      ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_flora:holly_berries", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard", "ks_decor:ceramic_shard"},
	},
	output = "ks_decor:ceramic_pot_dyered"
})

minetest.register_craft({
	recipe = {
		{"ks_decor:ceramic_shard", "                        ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_flora:juniper_berries", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard  ", "ks_decor:ceramic_shard"},
	},
	output = "ks_decor:ceramic_pot_dyepurple"
})

minetest.register_craft({
	recipe = {
		{"ks_decor:ceramic_shard", "                      ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_flora:juncus_stalk ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard", "ks_decor:ceramic_shard"},
	},
	output = "ks_decor:ceramic_pot_dyegreen"
})

minetest.register_craft({
	recipe = {
		{"ks_decor:ceramic_shard", "                         ", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_flora:snowy_dead_shrub", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard   ", "ks_decor:ceramic_shard"},
	},
	output = "ks_decor:ceramic_pot_dyegrey"
})



-- Crafting recipes for lamps. (About time this happened.)

function KSRegisterLanternWood(woodType)
	minetest.register_craft({
		recipe = {
			{"ks_flora:" .. woodType .. "_planks", "ks_flora:" .. woodType .. "_planks", "ks_flora:" .. woodType .. "_planks"},
			{"ks_glass:annealed_glass", "group:firebrand", "ks_glass:annealed_glass"},
			{"ks_flora:" .. woodType .. "_planks", "ks_flora:" .. woodType .. "_planks", "ks_flora:" .. woodType .. "_planks"}
		},
		output = "ks_decor:" .. woodType .. "_lantern"
	})
end

KSRegisterLanternWood("holly")
KSRegisterLanternWood("juniper")
KSRegisterLanternWood("douglasfir")



function KSRegisterLampStone(stoneType)
	minetest.register_craft({
		recipe = {
			{"ks_tools:" .. stoneType .. "_rock", "ks_tools:" .. stoneType .. "_rock", "ks_tools:" .. stoneType .. "_rock"},
			{"ks_glass:annealed_glass", "group:firebrand", "ks_glass:annealed_glass"},
			{"ks_tools:" .. stoneType .. "_rock", "ks_tools:" .. stoneType .. "_rock", "ks_tools:" .. stoneType .. "_rock"}
		},
		output = "ks_decor:" .. stoneType .. "_lamp"
	})
end

KSRegisterLampStone("dolomite")
KSRegisterLampStone("aragonite")



-- Here are some brick recipes. About time, I figured, again.
minetest.register_craft({
	output = "ks_decor:dolomite_bricks",
	recipe = {
		{"ks_tools:dolomite_rock", "ks_tools:dolomite_rock"},
		{"ks_tools:dolomite_rock", "ks_tools:dolomite_rock"}
	}
})

minetest.register_craft({
	output = "ks_decor:aragonite_bricks",
	recipe = {
		{"ks_tools:aragonite_rock", "ks_tools:aragonite_rock"},
		{"ks_tools:aragonite_rock", "ks_tools:aragonite_rock"}
	}
})


-- I've returned! Time to add some more building materials.
minetest.register_craft({
	output = "ks_decor:packed_soil",
	recipe = {
		{"group:soil", "group:soil"},
		{"group:soil", "group:soil"}
	}
})

minetest.register_craft({
	output = "ks_decor:cracked_ceramic",
	recipe = {
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard"},
		{"ks_decor:ceramic_shard", "ks_decor:ceramic_shard"}
	}
})
