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
		minetest.set_node(pos, {name = "ks_metals:molten_aluminium"})
	end
})

minetest.register_abm({
	neighbors = {"group:douse_fire"},
	nodenames = {"ks_metals:molten_aluminium"},
	interval = forming_interval,
	chance = forming_chance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_metals:aluminium"})
	end
})

minetest.register_abm({
	nodenames = {"ks_metals:molten_aluminium"},
	interval = forming_interval*2,
	chance = forming_chance*3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_metals:aluminium"})
	end
})



-- Copper too.
minetest.register_abm({
	neighbors = {"group:douse_fire"},
	nodenames = {"ks_metals:molten_copper"},
	interval = forming_interval,
	chance = forming_chance,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_metals:copper"})
	end
})

minetest.register_abm({
	nodenames = {"ks_metals:molten_copper"},
	interval = forming_interval*2,
	chance = forming_chance*3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos = {x = pos.x, y = pos.y, z = pos.z}
		minetest.set_node(pos, {name = "ks_metals:copper"})
	end
})