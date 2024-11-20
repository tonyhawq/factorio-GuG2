data:extend({
    {
        type = "technology",
        name = "oil-refining",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetic-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="oil-refinery",
            },
            {
                type = "unlock-recipe",
                recipe="crude-oil-fractioning",
            },
            {
                type = "unlock-recipe",
                recipe="heavy-distillates-fractioning",
            },
            {
                type = "unlock-recipe",
                recipe="medium-distillates-fractioning",
            },
            {
                type = "unlock-recipe",
                recipe="light-distillates-fractioning",
            },
            {
                type = "unlock-recipe",
                recipe="residuals-fractioning",
            },
            {
                type = "unlock-recipe",
                recipe="light-naphtha-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="mixed-naphtha-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="heavy-naphtha-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="raw-lubricating-oil",
            },
            {
                type = "unlock-recipe",
                recipe="raw-kerosene-treating",
            },
            {
                type = "unlock-recipe",
                recipe="mixed-gas-oil-from-kerosene",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "geothermal-power",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-gathering.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetic-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="steam-geothermal-water",
            },
            {
                type = "unlock-recipe",
                recipe="geothermal-water-treatment",
            },
            {
                type = "unlock-recipe",
                recipe="mineralized-water-treatment",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "antimony-1",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"oil-refining"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="antimony-oxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="antimony-1",
            },
            {
                type = "unlock-recipe",
                recipe="battery-alloy-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="glowing-mangaloy-ingot-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "separation",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"antimony-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="solid-separator",
            },
            {
                type = "unlock-recipe",
                recipe="evaporite-separation-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "electromagnetism-2",
        icons = {
            {
                icon = "__base__/graphics/technology/electric-energy-acumulators.png",
                icon_size = 256,
            }
        },
        prerequisites = {"antimony-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="battery-2",
            },
            {
                type = "unlock-recipe",
                recipe="accumulator",
            },
        },
    },
})