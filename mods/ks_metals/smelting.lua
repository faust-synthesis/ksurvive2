local forming_interval = 1
local forming_chance = 12



-- register smelting abms for bauxite
minetest.register_abm({
	neighbors = {"group:igniter"},
	nodenames = {"ks_metals:alumina"},
	interval = forming_interval,
	chance = forming_chance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_metals:aluminium"})
	end
})
