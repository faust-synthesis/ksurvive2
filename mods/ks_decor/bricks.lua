minetest.register_node("ks_decor:dolomite_bricks", {
	description = "Dolomite Bricks",
	tiles = {"decor.dolomite_bricks.png"},
	groups = {stonebricks = 1, chippable = 1},
	is_ground_content = true,
	drop = "ks_tools:dolomite_rock 4"
})

minetest.register_node("ks_decor:aragonite_bricks", {
	description = "Aragonite Bricks",
	tiles = {"decor.aragonite_bricks.png"},
	groups = {stonebricks = 1, chippable = 1},
	is_ground_content = true,
	drop = "ks_tools:aragonite_rock 4"
})

minetest.register_node("ks_decor:eclogite_bricks", {
	description = "Eclogite Bricks",
	tiles = {"decor.eclogite_bricks.png"},
	groups = {stonebricks = 1, chippable = 3},
	is_ground_content = true,
})

minetest.register_node("ks_decor:rose_quartz_bricks", {
	description = "Rose Quartz Bricks",
	tiles = {"decor.rose_quartz_bricks.png"},
	groups = {stonebricks = 1, chippable = 1},
	is_ground_content = true,
})

minetest.register_node("ks_decor:fluorite_bricks", {
	description = "Fluorite Bricks",
	tiles = {"decor.fluorite_bricks.png"},
	groups = {stonebricks = 1, chippable = 1},
	is_ground_content = true,
})
