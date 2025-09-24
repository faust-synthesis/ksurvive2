minetest.register_craft({
	recipe = {
		{"ks_flora:juniper_planks"}
	},
	output = "ks_tools:juniper_stick 4"
})

minetest.register_craft({
	recipe = {
		{"ks_flora:juniper_log"}
	},
	output = "ks_flora:juniper_planks 4"
})



minetest.register_craft({
	recipe = {
		{"ks_flora:holly_planks"}
	},
	output = "ks_tools:holly_stick 4"
})

minetest.register_craft({
	recipe = {
		{"ks_flora:holly_log"}
	},
	output = "ks_flora:holly_planks 4"
})



minetest.register_craft({
	recipe = {
		{"ks_flora:douglasfir_planks"}
	},
	output = "ks_tools:douglasfir_stick 4"
})

minetest.register_craft({
	recipe = {
		{"ks_flora:douglasfir_log"}
	},
	output = "ks_flora:douglasfir_planks 4"
})



minetest.register_craft({
	output = "ks_flora:juncus_block",
	recipe = {
		{"ks_flora:juncus_patch", "ks_flora:juncus_patch"},
		{"ks_flora:juncus_patch", "ks_flora:juncus_patch"}
	}
})


minetest.register_craft({
	output = "ks_flora:juncus_patch",
	recipe = {
		{"ks_flora:juncus_stalk", "ks_flora:juncus_stalk"},
		{"ks_flora:juncus_stalk", "ks_flora:juncus_stalk"},
	}
})

minetest.register_craft({
	output = "ks_flora:juncus_patch 4",
	recipe = {
		{"ks_flora:juncus_block"}
	}
})

minetest.register_craft({
	output = "ks_flora:juncus_stalk 4",
	recipe = {
		{"ks_flora:juncus_patch"}
	}
})



minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub_tangle",
	recipe = {
		{"ks_flora:snowy_dead_shrub", "ks_flora:snowy_dead_shrub"},
		{"ks_flora:snowy_dead_shrub", "ks_flora:snowy_dead_shrub"}
	}
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub_wall",
	recipe = {
		{"ks_tools:deadshrub_stick", "ks_tools:deadshrub_stick"},
		{"ks_tools:deadshrub_stick", "ks_tools:deadshrub_stick"}
	}
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub_wall",
	type = "shapeless",
	recipe = {"ks_flora:snowy_dead_shrub_tangle", "ks_flora:snowy_dead_shrub_tangle"}
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub_tangle 2",
	recipe = {
		{"ks_flora:snowy_dead_shrub_wall"}
	}
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub 4",
	recipe = {
		{"ks_flora:snowy_dead_shrub_tangle"}
	}
})