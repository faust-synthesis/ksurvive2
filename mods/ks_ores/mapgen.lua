minetest.register_decoration({
	decoration = "ks_ores:fluorite_spike",
	deco_type = "simple",
	place_on = "mineral_limestone_fluorite",
	sidelen = 9,
	fill_ratio = 1,
	flags = "place_center_x, place_center_z",
	rotation = "random"
})

if true then
	minetest.register_decoration({
		decoration = "ks_extras:aragonite_boulder.mts",
		deco_type = "schematic",
		schematic = minetest.get_modpath("ks_ores").."/schems/aragonite_boulder.mts",
		place_on = "temperate_forest_soil_grass",
		sidelen = 9,
		fill_ratio = 0.00025,
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end