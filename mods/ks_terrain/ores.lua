minetest.register_node("ks_terrain:feldspar_with_bauxite", {
	description = "Feldspar Stone with Bauxite",
	tiles = {"terrain.feldspar.png^terrain.mineral_bauxite_overlay.png"},
	groups = {stone = 1, igneousrock = 1, chippable = 2},
	is_ground_content = true,
	node_dig_prediction = "ks_terrain:dolomite_gravel",
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "ks_terrain:dolomite_gravel"})
	end,
	drop = "ks_metals:alumina_dust",
	sounds = ks_sounds.bedrocknode_sounds,
})

minetest.register_node("ks_terrain:dolomite_with_bauxite", {
	description = "Dolomite Stone with Bauxite",
	tiles = {"terrain.dolomite.png^terrain.mineral_bauxite_overlay.png"},
	groups = {stone = 1, sedimentaryrock = 1, chippable = 1},
	is_ground_content = true,
	node_dig_prediction = "ks_terrain:dolomite_gravel",
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "ks_terrain:dolomite_gravel"})
	end,
	drop = "ks_metals:alumina_dust",
	sounds = ks_sounds.generalnode_sounds,
})