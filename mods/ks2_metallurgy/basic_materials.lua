core.register_node(":ks2_metallurgy:mold_diabolo", {
	description = "Diabolo Mold",
	tiles = {
		"metallurgy.diabolo_drymold_top.png",
		"metallurgy.dryclay.png",
		"metallurgy.dryclay.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.375, -0.375, -0.3125, 0.375},
			{0.375, -0.5, -0.375, 0.4375, -0.3125, 0.375},
			{-0.375, -0.5, 0.375, 0, -0.3125, 0.4375},
			{-0.375, -0.5, -0.4375, 0, -0.3125, -0.375},
			{-0.375, -0.5, -0.375, 0, -0.4375, 0.375},
			{0, -0.5, -0.375, 0.0625, -0.3125, -0.25},
			{0, -0.5, 0.25, 0.0625, -0.3125, 0.375},
			{0, -0.5, -0.25, 0.0625, -0.375, 0.25},
			{0.0625, -0.5, -0.375, 0.375, -0.4375, 0.375},
			{0.0625, -0.5, 0.375, 0.375, -0.3125, 0.4375},
			{0.0625, -0.5, -0.4375, 0.375, -0.3125, -0.375}
		}
	}
})

core.register_node(":ks2_metallurgy:mold", {
	description = "Mold",
	tiles = {
		"metallurgy.drymold_top.png",
		"metallurgy.dryclay.png",
		"metallurgy.dryclay.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.375, -0.1875, -0.3125, 0.375},
			{0.1875, -0.5, -0.375, 0.25, -0.3125, 0.375},
			{-0.1875, -0.5, 0.3125, 0.1875, -0.3125, 0.375},
			{-0.1875, -0.5, -0.375, 0.1875, -0.3125, -0.3125},
			{-0.1875, -0.5, -0.3125, 0.1875, -0.4375, 0.3125}
		}
	}
})