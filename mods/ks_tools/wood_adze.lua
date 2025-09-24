local tool_durability = 4
local tool_damage = 0.5

function KSRegisterAdze(woodType, woodName, durabilityOverride)
	minetest.register_tool("ks_tools:" .. woodType .. "_adze", {
		description = woodName .. " Adze",
		inventory_image = "tools." .. woodType .. "_adze.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=1,
			groupcaps={
				diggable={times={[1]=tool_damage*2, [2]=tool_damage*4}, uses=tool_durability*durabilityOverride, maxlevel=1},
				choppable={times={[1]=tool_damage*5, [2]=tool_damage*10}, uses=tool_durability*durabilityOverride, maxlevel=2},
				sliceable={times={[1]=tool_damage/2, [2]=tool_damage}, uses=tool_durability*durabilityOverride, maxlevel=1},
				chippable={times={[1]=tool_damage*8}, uses=tool_durability*durabilityOverride, maxlevel=1},
			},
			damage_groups = {fleshy=tool_damage},
		},
		visual_scale = 1.69,
		groups = {adze = 1}
	})
end

KSRegisterAdze("douglasfir", "Douglas Fir", 1)
KSRegisterAdze("juniper", "Juniper", 1)
KSRegisterAdze("holly", "Holly", 1)
KSRegisterAdze("deadshrub", "Flimsy", 0.25)