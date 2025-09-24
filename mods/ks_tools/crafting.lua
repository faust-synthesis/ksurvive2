--Adzes
minetest.register_craft({
	recipe = {
		{"ks_tools:douglasfir_stick", "ks_tools:douglasfir_stick"},
		{"                         ", "ks_tools:douglasfir_stick"},
		{"                         ", "ks_tools:douglasfir_stick"}
	},
	output = "ks_tools:douglasfir_adze"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:juniper_stick", "ks_tools:juniper_stick"},
		{"                      ", "ks_tools:juniper_stick"},
		{"                      ", "ks_tools:juniper_stick"}
	},
	output = "ks_tools:juniper_adze"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:holly_stick", "ks_tools:holly_stick"},
		{"                    ", "ks_tools:holly_stick"},
		{"                    ", "ks_tools:holly_stick"}
	},
	output = "ks_tools:holly_adze"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:deadshrub_stick", "ks_tools:deadshrub_stick"},
		{"                        ", "ks_tools:deadshrub_stick"},
		{"                        ", "ks_tools:deadshrub_stick"}
	},
	output = "ks_tools:deadshrub_adze"
})



-- Toolheads and rocks (and deadshrub stick)
-- Deadshrub
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_flora:snowy_dead_shrub", "ks_flora:snowy_dead_shrub"},
	output = "ks_tools:deadshrub_stick"
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub 2",
	recipe = {
		{"ks_tools:deadshrub_stick"}
	}
})

-- Rocks
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:aragonite_rock", "ks_tools:aragonite_rock"},
	output = "ks_tools:aragonite_sharpened_rock"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:dolomite_rock", "ks_tools:dolomite_rock"},
	output = "ks_tools:dolomite_sharpened_rock"
})

-- Toolheads (stone)
minetest.register_craft({
	recipe = {
		{"ks_tools:aragonite_sharpened_rock", "ks_tools:aragonite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_aragonite_pickaxe"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:aragonite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_aragonite_shovel"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:aragonite_sharpened_rock"},
		{"ks_tools:aragonite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_aragonite_axe"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:dolomite_sharpened_rock", "ks_tools:dolomite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_dolomite_pickaxe"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:dolomite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_dolomite_shovel"
})

minetest.register_craft({
	recipe = {
		{"ks_tools:dolomite_sharpened_rock"},
		{"ks_tools:dolomite_sharpened_rock"}
	},
	output = "ks_tools:toolhead_dolomite_axe"
})



-- Dolomite Pickaxe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_pickaxe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_dolomite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_pickaxe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_dolomite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_pickaxe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_dolomite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_pickaxe", "ks_tools:deadshrub_stick"},
	output = "ks_tools:deadshrub_dolomite_pickaxe"
})



-- Dolomite Shovel
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_shovel", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_dolomite_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_shovel", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_dolomite_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_shovel", "ks_tools:holly_stick"},
	output = "ks_tools:holly_dolomite_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_shovel", "ks_tools:deadshrub_stick"},
	output = "ks_tools:deadshrub_dolomite_shovel"
})



-- Dolomite Axe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_axe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_dolomite_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_axe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_dolomite_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_axe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_dolomite_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_dolomite_axe", "ks_tools:deadshrub_stick"},
	output = "ks_tools:deadshrub_dolomite_axe"
})



-- Aragonite Pickaxe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_pickaxe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aragonite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_pickaxe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aragonite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_pickaxe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aragonite_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_pickaxe", "ks_tools:deadshrub_stick"},
	output = "ks_tools:deadshrub_aragonite_pickaxe"
})



-- Aragonite Shovel
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_shovel", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aragonite_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_shovel", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aragonite_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_shovel", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aragonite_shovel"
})



-- Aragonite Axe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_axe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aragonite_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_axe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aragonite_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aragonite_axe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aragonite_axe"
})



-- Now for the metal tools!
-- Aluminum toolheads
minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium", "ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_pickaxe"
})

minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_shovel"
})

minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium"},
		{"ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_axe"
})



-- Copper toolheads
minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium", "ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_pickaxe"
})

minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_shovel"
})

minetest.register_craft({
	recipe = {
		{"ks_metals:aluminium"},
		{"ks_metals:aluminium"}
	},
	output = "ks_tools:toolhead_aluminium_axe"
})



-- Aluminium Shovel
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_shovel", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aluminium_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_shovel", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aluminium_shovel"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_shovel", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aluminium_shovel"
})



-- Aluminium Pickaxe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_pickaxe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aluminium_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_pickaxe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aluminium_pickaxe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_pickaxe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aluminium_pickaxe"
})



-- Aluminium Axe
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_axe", "ks_tools:juniper_stick"},
	output = "ks_tools:juniper_aluminium_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_axe", "ks_tools:douglasfir_stick"},
	output = "ks_tools:douglasfir_aluminium_axe"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:toolhead_aluminium_axe", "ks_tools:holly_stick"},
	output = "ks_tools:holly_aluminium_axe"
})
