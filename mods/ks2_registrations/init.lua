ks2rg = {}
util = {}



-- Util functions first.
function util.join(table_a, table_b)
   for i = 1, #table_a do
      table_a[#table_a + 1] = table_b[i]
   end
   return table_a
end



-- Then, registrations
function ks2rg.register_stone(nodename, nodedefs)
	minetest.register_node(":ks2_terrain:" .. nodename, {
		description = nodedefs.name .. " Rock",
		tiles = nodedefs.tiles,
		group = util.join({stone = 1}, nodedefs.group)
	})
end

function ks2rg.register_metal_ingot(metal_name, metal_plain_name)
	minetest.register_node(":ks2_metallurgy:" .. metal_name .. "_ingot", {
		description = metal_plain_name .. " Ingot",
		tiles = {
			"metallurgy.diabolo_drymold_" .. metal_name .. "_top.png",
			"metallurgy.dryclay.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_end.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_end.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_flipside.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{0.375, -0.5, -0.375, 0.4375, -0.3125, 0.375},
				{-0.4375, -0.5, -0.375, -0.375, -0.3125, 0.375},
				{-0.375, -0.5, 0.375, 0, -0.3125, 0.4375},
				{-0.375, -0.5, -0.4375, 0, -0.3125, -0.375},
				{0.0625, -0.5, -0.4375, 0.375, -0.3125, -0.375},
				{0.0625, -0.5, 0.375, 0.375, -0.3125, 0.4375},
				{0, -0.5, -0.375, 0.0625, -0.3125, 0.375},
				{-0.375, -0.5, -0.375, 0, 0, 0.375},
				{0.0625, -0.5, -0.375, 0.375, 0, 0.375},
				{0, -0.5, -0.25, 0.0625, -0.0625, 0.25}
			}
		}
	})

	minetest.register_node(":ks2_metallurgy:" .. metal_name .. "_diabolo", {
		description = metal_plain_name .. " Double-Ingot",
		tiles = {
			"metallurgy.diabolo_drymold_" .. metal_name .. "_top.png",
			"metallurgy.dryclay.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_end.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_end.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_flipside.png",
			"metallurgy.diabolo_drymold_" .. metal_name .. "_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{0.375, -0.5, -0.375, 0.4375, -0.3125, 0.375},
				{-0.4375, -0.5, -0.375, -0.375, -0.3125, 0.375},
				{-0.375, -0.5, 0.375, 0, -0.3125, 0.4375},
				{-0.375, -0.5, -0.4375, 0, -0.3125, -0.375},
				{0.0625, -0.5, -0.4375, 0.375, -0.3125, -0.375},
				{0.0625, -0.5, 0.375, 0.375, -0.3125, 0.4375},
				{0, -0.5, -0.375, 0.0625, -0.3125, 0.375},
				{-0.375, -0.5, -0.375, 0, 0, 0.375},
				{0.0625, -0.5, -0.375, 0.375, 0, 0.375},
				{0, -0.5, -0.25, 0.0625, -0.0625, 0.25}
			}
		}
	})
end