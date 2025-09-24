local bin_column = 2
local bin_row = 4
local pot_column = 2
local pot_row = 2



-- register aliases for retro compat
minetest.register_alias("ks_decor:maple_bin", "ks_decor:holly_bin")



minetest.register_node("ks_decor:juniper_bin", {
	description = "Juniper Bin",
	tiles = {"decor.juniper_bin_top.png", "flora.juniper_wood_end.png", "decor.juniper_bin_side.png"},
	groups = {choppable = 2, falling_node = 1},
	is_ground_content = true,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("container", bin_column*bin_row)
		meta:set_string("infotext", "Juniper Bin")
		local fs_content = "size[8,7;]" ..
			"list[context;container;0,0.3;10,1;]" ..
			"list[current_player;main;0,2.85;8,1;]" ..
			"list[current_player;main;0,4.08;8,3;8]" ..
			"listring[context;container]"
		meta:set_string("formspec", fs_content)
	end
})

minetest.register_node("ks_decor:holly_bin", {
	description = "Holly Bin",
	tiles = {"decor.holly_bin_top.png", "flora.holly_wood_end.png", "decor.holly_bin_side.png"},
	groups = {choppable = 2, falling_node = 1},
	is_ground_content = true,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("container", bin_column*bin_row)
		meta:set_string("infotext", "Holly Bin")
		local fs_content = "size[8,7;]" ..
			"list[context;container;0,0.3;10,1;]" ..
			"list[current_player;main;0,2.85;8,1;]" ..
			"list[current_player;main;0,4.08;8,3;8]" ..
			"listring[context;container]"
		meta:set_string("formspec", fs_content)
	end
})

minetest.register_node("ks_decor:douglasfir_bin", {
	description = "Douglas Fir Bin",
	tiles = {"decor.douglasfir_bin_top.png", "flora.douglasfir_wood_end.png", "decor.douglasfir_bin_side.png"},
	groups = {choppable = 2, falling_node = 1},
	is_ground_content = true,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("container", bin_column*bin_row)
		meta:set_string("infotext", "Douglas Fir Bin")
		local fs_content = "size[8,7;]" ..
			"list[context;container;0,0.3;10,1;]" ..
			"list[current_player;main;0,2.85;8,1;]" ..
			"list[current_player;main;0,4.08;8,3;8]" ..
			"listring[context;container]"
		meta:set_string("formspec", fs_content)
	end
})

minetest.register_node("ks_decor:ceramic_pot", {
	description = "Ceramic Pot",
	tiles = {"decor.ceramic_pot_top.png", "decor.bakedsoil.png", "decor.ceramic_pot_side.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.125, -0.125, 0.125, 0.25, 0.125}, -- Pot_Lip
			{-0.25, -0.5, -0.25, 0.25, 0.125, 0.25}, -- Pot_Base
		}
	},
	groups = {grabbable = 1, falling_node = 1},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("container", pot_column*pot_row)
		meta:set_string("infotext", "Ceramic Pot")
		local fs_content = "size[8,7;]" ..
			"list[context;container;2,0.3;10,1;]" ..
			"list[current_player;main;0,2.85;8,1;]" ..
			"list[current_player;main;0,4.08;8,3;8]" ..
			"listring[context;container]"
		meta:set_string("formspec", fs_content)
	end
})
