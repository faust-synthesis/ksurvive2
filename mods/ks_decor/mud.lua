-- I need to use these shorthand registrations more often.
function KSRegisterPackedSoilType(rake_type)
	minetest.register_node("ks_decor:packed_soil" .. rake_type, {
		description = "Packed Soil",
		tiles = {"decor.packedsoil.png^decor.overlay_raked" .. rake_type .. ".png"},
		groups = {packed_soil = 1, diggable = 2},
		is_ground_content = true,
		drop = "ks_decor:packed_soil"
	})
	minetest.register_node("ks_decor:baked_soil" .. rake_type, {
		description = "Ceramic",
		tiles = {"decor.bakedsoil.png^decor.overlay_raked" .. rake_type .. ".png"},
		groups = {ceramic = 1, chippable = 3},
		is_ground_content = true,
		drop = {
			max_items = 1,
			items = {
				{
					items = {"ks_decor:ceramic_shard 2"},
					rarity = 2
				},
				{
					items = {"ks_decor:ceramic_shard"}
				},
			}
		},
		node_dig_prediction = "ks_decor:cracked_ceramic" .. rake_type,
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = "ks_decor:cracked_ceramic" .. rake_type})
		end
	})
	minetest.register_node("ks_decor:baking_soil1" .. rake_type, {
		description = "Baking Soil",
		tiles = {"decor.bakingsoil_1.png^decor.overlay_raked" .. rake_type .. ".png"},
		groups = {diggable = 2},
		is_ground_content = true,
		drop = ""
	})
	minetest.register_node("ks_decor:baking_soil2" .. rake_type, {
		description = "Baking Soil",
		tiles = {"decor.bakingsoil_2.png^decor.overlay_raked" .. rake_type .. ".png"},
		groups = {diggable = 3},
		is_ground_content = true,
		drop = "ks_decor:ceramic_shard"
	})
	minetest.register_node("ks_decor:cracked_ceramic" .. rake_type, {
		description = "Cracked Ceramic",
		tiles = {"decor.bakedsoil.png^decor.overlay_raked" .. rake_type .. ".png^decor.overlay_ceramic_cracks.png"},
		groups = {chippable = 1},
		is_ground_content = true,
		drop = "ks_decor:ceramic_shard",
		node_dig_prediction = "ks_decor:ceramic_gravel",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = "ks_decor:ceramic_gravel"})
		end
	})



	minetest.register_abm({
		nodenames = {"ks_decor:packed_soil" .. rake_type},
		neighbors = "group:hot_node",
		interval = 2,
		chance = 4,
		action = function(pos, node, active_object_count, active_object_count_wider)
			local pos = {x = pos.x, y = pos.y, z = pos.z}
			minetest.set_node(pos, {name = "ks_decor:baking_soil1" .. rake_type})
		end,
		sounds = ks_sounds.generalnode_sounds
	})
	minetest.register_abm({
		nodenames = {"ks_decor:baking_soil1" .. rake_type},
		neighbors = "group:hot_node",
		interval = 2,
		chance = 4,
		action = function(pos, node, active_object_count, active_object_count_wider)
			local pos = {x = pos.x, y = pos.y, z = pos.z}
			minetest.set_node(pos, {name = "ks_decor:baking_soil2" .. rake_type})
		end,
		sounds = ks_sounds.generalnode_sounds
	})
	minetest.register_abm({
		nodenames = {"ks_decor:baking_soil2" .. rake_type},
		neighbors = "group:hot_node",
		interval = 2,
		chance = 4,
		action = function(pos, node, active_object_count, active_object_count_wider)
			local pos = {x = pos.x, y = pos.y, z = pos.z}
			minetest.set_node(pos, {name = "ks_decor:baked_soil" .. rake_type})
		end,
		sounds = ks_sounds.generalnode_sounds
	})
end

KSRegisterPackedSoilType("_diag")
KSRegisterPackedSoilType("_diag2")
KSRegisterPackedSoilType("_horiz")
KSRegisterPackedSoilType("_bricks")
KSRegisterPackedSoilType("_hash")
KSRegisterPackedSoilType("_vert")
KSRegisterPackedSoilType("") -- Soo... decor.overlay_raked.png is used for this, just as a dummy. Because I don't wanna track this variant separately. I know it sucks, but deal with it.



minetest.register_craftitem("ks_decor:ceramic_shard", {
	description = "Ceramic Shard",
	inventory_image = "decor.ceramic_shard.png",
	wield_image = "decor.ceramic_shard.png"
})

minetest.register_node("ks_decor:ceramic_gravel", {
	description = "Ceramic Gravel",
	tiles = {"decor.ceramic_gravel.png"},
	groups = {gravel = 1, diggable = 1, falling_node = 1},
	is_ground_content = true,
	sounds = ks_sounds.generalnode_sounds,
	drop = "ks_decor:ceramic_shard"
})