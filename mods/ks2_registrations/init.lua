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