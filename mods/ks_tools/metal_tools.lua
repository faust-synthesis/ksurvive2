local tool_durability = 50
local tool_damage = 0.25

function KSRegisterToolsTier2(woodType, headType, headName, groupsOverride, durabilityOverride)
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_pickaxe", {
		description = headName .. " Pickaxe",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_pickhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				chippable={times={[1]=tool_damage*4, [2]=tool_damage*8}, uses=tool_durability, maxlevel=3},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {pickaxe_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_axe", {
		description = headName .. " Axe",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_axehead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				choppable={times={[1]=tool_damage, [2]=tool_damage*2}, uses=tool_durability, maxlevel=1},
				sliceable={times={[1]=tool_damage/4, [2]=tool_damage/5}, uses=tool_durability, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {axe_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_shovel", {
		description = headName .. " Shovel",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_shovelhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				diggable={times={[1]=tool_damage, [2]=tool_damage*2, [3]=tool_damage*4}, uses=tool_durability, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {shovel_tool = 1})
	})
	minetest.register_tool("ks_tools:" .. headType .. "_tongs", {
		description = headName .. " Tongs",
		inventory_image = "tools." .. headType .. "_tongs.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				tongable={times={[1]=0.0}, uses=tool_durability, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {tongs_tool = 1})
	})
end

KSRegisterToolsTier2("juniper", "aluminium", "Aluminium", {metal_tool = 1, aluminium_tool = 1}, 1)
KSRegisterToolsTier2("douglasfir", "aluminium", "Aluminium", {metal_tool = 1, aluminium_tool = 1}, 1)
KSRegisterToolsTier2("holly", "aluminium", "Aluminium", {metal_tool = 1, aluminium_tool = 1}, 1)
KSRegisterToolsTier2("deadshrub", "aluminium", "Aluminium", {metal_tool = 1, aluminium_tool = 1}, 2.5)

KSRegisterToolsTier2("juniper", "copper", "Copper", {metal_tool = 1, copper_tool = 1}, 1)
KSRegisterToolsTier2("douglasfir", "copper", "Copper", {metal_tool = 1, copper_tool = 1}, 1)
KSRegisterToolsTier2("holly", "copper", "Copper", {metal_tool = 1, copper_tool = 1}, 1)
KSRegisterToolsTier2("deadshrub", "copper", "Copper", {metal_tool = 1, copper_tool = 1}, 2.5)


KSRegisterToolsTier2("juniper", "temp_aluminium", "Tempered Aluminium", {metal_tool = 1, aluminium_tool = 1}, 0.25)
KSRegisterToolsTier2("douglasfir", "temp_aluminium", "Tempered Aluminium", {metal_tool = 1, aluminium_tool = 1}, 0.25)
KSRegisterToolsTier2("holly", "temp_aluminium", "Tempered Aluminium", {metal_tool = 1, aluminium_tool = 1}, 0.25)
KSRegisterToolsTier2("deadshrub", "temp_aluminium", "Tempered Aluminium", {metal_tool = 1, aluminium_tool = 1}, 1)
