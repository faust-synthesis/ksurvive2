minetest.register_craftitem("ks_flora:juncus_stalk", {
	description = "Juncus Stalk",
	inventory_image = "flora.juncus_stalk.png",
	on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ks_flora:juncus_patch", {
	description = "Patch of Woven Juncus Stalk",
	inventory_image = "flora.juncus_patch.png"
})

minetest.register_node("ks_flora:juncus_block", {
	description = "Block of Woven Juncus Stalk",
	tiles = {"flora.juncus_block.png"},
	groups = {sliceable = 1, falling_node = 1},
	sounds = ks_sounds.generalnode_sounds,
})



minetest.register_node("ks_flora:snowy_dead_shrub_tangle", {
	description = "Block of Woven Dead Shrub",
	tiles = {"flora.snowy_dead_shrub_tangle.png"},
	groups = {sliceable = 1, falling_node = 1, light_flammable = 1},
	drawtype = "allfaces_optional",
	paramtype = "light",
	sounds = ks_sounds.generalnode_sounds,
})

minetest.register_node("ks_flora:snowy_dead_shrub_wall", {
	description = "Packed Block of Woven Dead Shrub",
	tiles = {"flora.snowy_dead_shrub_wall.png"},
	groups = {sliceable = 2, falling_node = 1, flammable = 1},
	sounds = ks_sounds.generalnode_sounds,
})
