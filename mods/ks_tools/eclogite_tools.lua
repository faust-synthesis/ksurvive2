local tool_durability = 10
local tool_damage = 0.5

function KSRegisterToolsTier3(woodType, headType, headName, groupsOverride, durabilityOverride)
	minetest.register_tool("ks_tools:" .. woodType .. "_" .. headType .. "_pickaxe", {
		description = headName .. " Pickaxe",
		inventory_image = "tools.zzbuilder_stick_" .. woodType .. ".png^tools.zzbuilder_pickhead_" .. headType .. ".png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				chippable={times={[1]=tool_damage*2, [2]=tool_damage*4, [3]=tool_damage*12}, uses=tool_durability*durabilityOverride, maxlevel=2},
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
				choppable={times={[1]=tool_damage*2, [2]=tool_damage*4}, uses=tool_durability*durabilityOverride, maxlevel=2},
				sliceable={times={[1]=tool_damage/2, [2]=tool_damage}, uses=(tool_durability*1.5)*durabilityOverride, maxlevel=2},
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
				diggable={times={[1]=tool_damage, [2]=tool_damage*1.5, [3]=tool_damage*6}, uses=tool_durability*durabilityOverride, maxlevel=3},
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
				tongable={times={[1]=0.0}, uses=tool_durability*durabilityOverride, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = concat(groupsOverride, {tongs_tool = 1})
	})
end

KSRegisterToolsTier3("juniper", "eclogite", "Eclogite", {metal_tool = 1, eclogite_tool = 1}, 1)
KSRegisterToolsTier3("douglasfir", "eclogite", "Eclogite", {metal_tool = 1, eclogite_tool = 1}, 1)
KSRegisterToolsTier3("holly", "eclogite", "Eclogite", {metal_tool = 1, eclogite_tool = 1}, 1)
KSRegisterToolsTier3("deadshrub", "eclogite", "Eclogite", {metal_tool = 1, eclogite_tool = 1}, 1)