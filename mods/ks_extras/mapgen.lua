if true then
	minetest.register_decoration({
		decoration = "ks_extras:hut_juniper_1",
		deco_type = "schematic",
		schematic = minetest.get_modpath("ks_extras").."/schems/hut_juniper_1.mts",
		place_on = "prairie_soil_grass",
		sidelen = 9,
		fill_ratio = 0.00005,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		place_offset_y = -2
	})
end
