-- Just some static recipes that can't (or don't have to) really be automated.
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_flora:snowy_dead_shrub", "ks_flora:snowy_dead_shrub"},
	output = "ks_tools:deadshrub_stick"
})

minetest.register_craft({
	output = "ks_flora:snowy_dead_shrub 2",
	recipe = {
		{"ks_tools:deadshrub_stick"}
	}
})

-- Rocks
minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:aragonite_rock", "ks_tools:aragonite_rock"},
	output = "ks_tools:aragonite_sharpened_rock"
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"ks_tools:dolomite_rock", "ks_tools:dolomite_rock"},
	output = "ks_tools:dolomite_sharpened_rock"
})



-- Here starts the automation. First with adzes.

function KSRegisterAdzeRecipe(woodType)
	minetest.register_craft({
		recipe = {
			{"ks_tools:" .. woodType .. "_stick", "ks_tools:" .. woodType .. "_stick"},
			{"                                 ", "ks_tools:" .. woodType .. "_stick"},
			{"                                 ", "ks_tools:" .. woodType .. "_stick"}
		},
		output = "ks_tools:" .. woodType .. "_adze"
	})
end

KSRegisterAdzeRecipe("holly")
KSRegisterAdzeRecipe("juniper")
KSRegisterAdzeRecipe("douglasfir")
KSRegisterAdzeRecipe("deadshrub")



-- Some tool heads (stone and metal)

function KSRegisterStoneHeadRecipe(itemType)
	minetest.register_craft({
		recipe = {
			{"ks_tools:" .. itemType .. "_sharpened_rock", "ks_tools:" .. itemType .. "_sharpened_rock"}
		},
		output = "ks_tools:toolhead_" .. itemType .. "_pickaxe"
	})

	minetest.register_craft({
		recipe = {
			{"ks_tools:" .. itemType .. "_sharpened_rock"}
		},
		output = "ks_tools:toolhead_" .. itemType .. "_shovel"
	})

	minetest.register_craft({
		recipe = {
			{"ks_tools:" .. itemType .. "_sharpened_rock"},
			{"ks_tools:" .. itemType .. "_sharpened_rock"}
		},
		output = "ks_tools:toolhead_" .. itemType .. "_axe"
	})
end

function KSRegisterMetalHeadRecipe(metalInputType, metalOutputType)
	minetest.register_craft({
		recipe = {
			{"ks_metals:" .. metalInputType, "ks_metals:" .. metalInputType}
		},
		output = "ks_tools:toolhead_" .. metalOutputType .. "_pickaxe"
	})

	minetest.register_craft({
		recipe = {
			{"ks_metals:" .. metalInputType}
		},
		output = "ks_tools:toolhead_" .. metalOutputType .. "_shovel"
	})

	minetest.register_craft({
		recipe = {
			{"ks_metals:" .. metalInputType},
			{"ks_metals:" .. metalInputType}
		},
		output = "ks_tools:toolhead_" .. metalOutputType .. "_axe"
	})
end

KSRegisterStoneHeadRecipe("dolomite")
KSRegisterStoneHeadRecipe("aragonite")

KSRegisterMetalHeadRecipe("aluminium", "aluminium")
KSRegisterMetalHeadRecipe("copper", "copper")
KSRegisterMetalHeadRecipe("molten_aluminium", "temp_aluminium")



-- Now for the tools themselves. Stone first.

function KSRegisterStoneToolRecipe(woodType, stoneType)
	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. stoneType .. "_pickaxe", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. stoneType .. "_pickaxe"
	})

	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. stoneType .. "_axe", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. stoneType .. "_axe"
	})

	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. stoneType .. "_shovel", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. stoneType .. "_shovel"
	})

	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:" .. stoneType .. "_sharpened_rock", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. stoneType .. "_chisel"
	})
end

KSRegisterStoneToolRecipe("juniper", "dolomite")
KSRegisterStoneToolRecipe("holly", "dolomite")
KSRegisterStoneToolRecipe("douglasfir", "dolomite")
KSRegisterStoneToolRecipe("deadshrub", "dolomite")

KSRegisterStoneToolRecipe("juniper", "aragonite")
KSRegisterStoneToolRecipe("holly", "aragonite")
KSRegisterStoneToolRecipe("douglasfir", "aragonite")
KSRegisterStoneToolRecipe("deadshrub", "aragonite")



-- Now for the metal tools!
function KSRegisterMetalToolRecipe(woodType, metalType)
	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. metalType .. "_pickaxe", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. metalType .. "_pickaxe"
	})

	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. metalType .. "_axe", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. metalType .. "_axe"
	})

	minetest.register_craft({
		type = "shapeless",
		recipe = {"ks_tools:toolhead_" .. metalType .. "_shovel", "ks_tools:" .. woodType .. "_stick"},
		output = "ks_tools:" .. woodType .. "_" .. metalType .. "_shovel"
	})
end

KSRegisterMetalToolRecipe("juniper", "aluminium")
KSRegisterMetalToolRecipe("holly", "aluminium")
KSRegisterMetalToolRecipe("douglasfir", "aluminium")
KSRegisterMetalToolRecipe("deadshrub", "aluminium")

KSRegisterMetalToolRecipe("juniper", "copper")
KSRegisterMetalToolRecipe("holly", "copper")
KSRegisterMetalToolRecipe("douglasfir", "copper")
KSRegisterMetalToolRecipe("deadshrub", "copper")

KSRegisterMetalToolRecipe("juniper", "temp_aluminium")
KSRegisterMetalToolRecipe("holly", "temp_aluminium")
KSRegisterMetalToolRecipe("douglasfir", "temp_aluminium")
KSRegisterMetalToolRecipe("deadshrub", "temp_aluminium")

