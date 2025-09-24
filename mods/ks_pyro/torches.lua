function KSRegisterFireBrand(woodType, woodName)
	minetest.register_node("ks_pyro:" .. woodType .. "_firebrand",{
		description = woodName .. " Firebrand",
		drawtype = "torchlike",
		paramtype2="wallmounted",
		inventory_image = "pyro." .. woodType .. "_firebrand.png",
		wield_image = "pyro." .. woodType .. "_firebrand.png",
		tiles = {"pyro." .. woodType .. "_torchup.png^pyro.overlay_torchup.png", "pyro." .. woodType .. "_torchdown.png^pyro.overlay_torchdown.png", "pyro." .. woodType .. "_torchside.png^pyro.overlay_torchside.png"},
		light_source = 12,
		groups = {grabbable = 1, firebrand = 1, igniter = 1},
		walkable = false,
		climbable = false,
	})

	minetest.register_craft({
		output = "ks_pyro:" .. woodType .. "_firebrand",
		type = "shapeless",
		recipe = {"ks_tools:" .. woodType .. "_stick", "ks_tools:" .. woodType .. "_stick"},
	})
end



KSRegisterFireBrand("holly", "Holly")
KSRegisterFireBrand("douglasfir", "Douglasfir")
KSRegisterFireBrand("juniper", "Juniper")
KSRegisterFireBrand("deadshrub", "Dead Shrub")


-- Now to replace the auto-generated recipe!
minetest.clear_craft({output = "ks_pyro:deadshrub_firebrand"})

minetest.register_craft({
	output = "ks_pyro:deadshrub_firebrand",
	type = "shapeless",
	recipe = {"ks_tools:deadshrub_stick", "ks_flora:snowy_dead_shrub"},
})