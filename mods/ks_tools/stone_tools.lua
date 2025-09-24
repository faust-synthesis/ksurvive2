local tool_durability = 20
local tool_damage = 0.5

function KSRegisterToolsTier1(woodType, headType, headName, groupsOverride, durabilityOverride)
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_pickaxe", {
		description = headName .. " Pickaxe",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_pickhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				chippable={times={[1]=tool_damage*2, [2]=tool_damage*4}, uses=tool_durability/durabilityOverride, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {pickaxe_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_axe", {
		description = headName .. " Axe",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_axehead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				choppable={times={[1]=tool_damage, [2]=tool_damage*2}, uses=tool_durability/durabilityOverride, maxlevel=1},
				sliceable={times={[1]=tool_damage/4, [2]=tool_damage/2}, uses=tool_durability/durabilityOverride, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {axe_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_shovel", {
		description = headName .. " Shovel",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_shovelhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				diggable={times={[1]=tool_damage, [2]=tool_damage*2}, uses=tool_durability/durabilityOverride, maxlevel=1}
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {shovel_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_chisel", {
		description = headName .. " Chisel",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_chiselhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				chippable={times={[1]=tool_damage*6, [2]=tool_damage*12}, uses=tool_durability/durabilityOverride, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {chisel_tool = 1}),
		on_use = function(itemstack, user, pointed_thing)
			--core.chat_send_all("Used.")
			if pointed_thing.type == "node" then
				local node_touched = minetest.get_node(pointed_thing.under)

				if node_touched.name == "ks_decor:packed_soil" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_diag"})

				elseif node_touched.name == "ks_decor:packed_soil_diag" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_diag2"})

				elseif node_touched.name == "ks_decor:packed_soil_diag2" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_horiz"})

				elseif node_touched.name == "ks_decor:packed_soil_horiz" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_bricks"})

				elseif node_touched.name == "ks_decor:packed_soil_bricks" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_hash"})

				elseif node_touched.name == "ks_decor:packed_soil_hash" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_vert"})

				elseif node_touched.name == "ks_decor:packed_soil_vert" then
					core.set_node(pointed_thing.under, {name = "ks_decor:packed_soil_diag"})
				end
			end
		end
	})
end


KSRegisterToolsTier1("juniper", "aragonite", "Aragonite", {stone_tool = 1, aragonite_tool = 1}, 1)
KSRegisterToolsTier1("douglasfir", "aragonite", "Aragonite", {stone_tool = 1, aragonite_tool = 1}, 1)
KSRegisterToolsTier1("holly", "aragonite", "Aragonite", {stone_tool = 1, aragonite_tool = 1}, 1)
KSRegisterToolsTier1("deadshrub", "aragonite", "Aragonite", {stone_tool = 1, aragonite_tool = 1}, 2.5)

KSRegisterToolsTier1("juniper", "dolomite", "Dolomite", {stone_tool = 1, dolomite_tool = 1}, 1)
KSRegisterToolsTier1("douglasfir", "dolomite", "Dolomite", {stone_tool = 1, dolomite_tool = 1}, 1)
KSRegisterToolsTier1("holly", "dolomite", "Dolomite", {stone_tool = 1, dolomite_tool = 1}, 1)
KSRegisterToolsTier1("deadshrub", "dolomite", "Dolomite", {stone_tool = 1, dolomite_tool = 1}, 2.5)