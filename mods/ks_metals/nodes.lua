minetest.register_node("ks_metals:aluminium", {
	description = "Cooled Aluminium",
	tiles = {"metals.aluminium_block.png"},
	groups = {metal = 1, solid_metal = 1, aluminium = 1, chippable = 2},
})

minetest.register_node("ks_metals:molten_aluminium", {
	description = "Glowing-Hot Aluminium",
	light_source = 6,
	tiles = {
		{
			name = "metals.aluminium_molten.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4,
			},
		}
	},
	groups = {metal = 1, liquid_metal = 1, aluminium = 1, tongable = 1},
})

minetest.register_node("ks_metals:copper", {
	description = "Cooled Copper",
	tiles = {"metals.copper_block.png"},
	groups = {metal = 1, solid_metal = 1, copper = 1, chippable = 2},
})

minetest.register_node("ks_metals:molten_copper", {
	description = "Glowing-Hot Copper",
	light_source = 6,
	tiles = {
		{
			name = "metals.copper_molten.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4,
			},
		}
	},
	groups = {metal = 1, liquid_metal = 1, copper = 1, tongable = 1},
})



-- Now for the ore products.
minetest.register_node("ks_metals:alumina", {
	description = "Alumina",
	tiles = {"metals.alumina.png"},
	groups = {diggable = 2, alumina = 2},
})

minetest.register_node("ks_metals:alumina_dust", {
	description = "Dust of Alumina",
	tiles = {"metals.alumina.png"},
	inventory_image = "metals.alumina_dust.png",
	wield_image = "metals.alumina_dust.png",
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -6 / 16, 0.5},
		},
	},
	groups = {diggable = 1, falling_node = 1, alumina = 1},
})