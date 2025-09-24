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





-- Start the ceramic pot stuff here.
local prohibited_items = {
	["ks_decor:ceramic_pot"] = true,
}


function KSRegisterCeramicPot(potVariant, potVariantName)
	minetest.register_node("ks_decor:ceramic_pot" .. potVariant, {
		description = potVariantName .. "Ceramic Pot",
		tiles = {"decor.ceramic_pot_top.png", "decor.bakedsoil.png", "decor.ceramic_pot_side.png^decor.overlay_pot_side" .. potVariant .. ".png"},
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
		stack_max = 1,

		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_size("container", pot_column*pot_row)

			local inv_table_raw = inv:get_list("container")
			local inv_table = {}
			local inv_occupied = 0
			for x, y in ipairs(inv_table_raw) do
				inv_table[x] = y:to_string()
				if not y:is_empty() then
					inv_occupied = inv_occupied + 1
				end
			end

			meta:set_string("infotext", potVariantName .. "Ceramic Pot")
			local fs_content = "size[8,7;]" ..
				"list[context;container;2,0.3;10,2;]" ..
				"list[current_player;main;0,2.85;8,1;]" ..
				"list[current_player;main;0,4.08;8,3;8]" ..
				"listring[context;container]"
			meta:set_string("formspec", fs_content)
		end,
		on_place = function(itemstack, placer, pointed_thing)
			local stack = itemstack:peek_item(1)
			local pos
			itemstack, pos = minetest.item_place(itemstack, placer, pointed_thing)

			if not pos then
				return itemstack
			end
			local stack_meta = stack:get_meta()
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()

			local inv_table = minetest.deserialize(stack_meta:get_string("inv"))
			if inv_table then
				inv:set_list("container", inv_table)
			end
			return itemstack
		end,
		on_dig = function(pos, node, digger)
			if not digger:is_player() then
				--core.chat_send_all("Dug by a non-player!")
				return false
			end
			local digger_inv = digger:get_inventory()
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			--core.chat_send_all(digger:get_player_name())

			local stack = ItemStack("ks_decor:ceramic_pot" .. potVariant)
			local stack_meta = stack:get_meta()
			if not digger_inv:room_for_item("main", stack) then
				return false
			end
                	--digger_inv:add_item("main", stack)

			local inv_table_raw = inv:get_list("container")
			local inv_table = {}
			local inv_occupied = 0
			for x, y in ipairs(inv_table_raw) do
				inv_table[x] = y:to_string()
				if not y:is_empty() then
					inv_occupied = inv_occupied + 1
				end
			end
			inv_table = minetest.serialize(inv_table)
			stack_meta:set_string("inv", inv_table)
			digger_inv:add_item("main", stack)
			minetest.set_node(pos, {name = "air"})
			return true
		end
	})
end

KSRegisterCeramicPot("_dyenone", "")
KSRegisterCeramicPot("_dyered", "Red ")
KSRegisterCeramicPot("_dyepurple", "Violet ")
KSRegisterCeramicPot("_dyegreen", "Yellow ")
KSRegisterCeramicPot("_dyegrey", "Grey ")