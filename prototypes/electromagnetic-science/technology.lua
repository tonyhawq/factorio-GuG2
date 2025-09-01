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
                recipe="crude-oil-fractioning-1",
            },
            {
                type = "unlock-recipe",
                recipe="light-distillates-fractioning-1",
            },
            {
                type = "unlock-recipe",
                recipe="medium-distillates-fractioning-1",
            },
            {
                type = "unlock-recipe",
                recipe="residuals-fractioning-1",
            },
            {
                type = "unlock-recipe",
                recipe="light-naphtha-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="heavy-naphtha-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="hvgo-cracking-1",
            },
            {
                type = "unlock-recipe",
                recipe="propylene-void",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "computation",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {},
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
                type = "give-item",
                item = "dead-process",
            },
            {
                type = "unlock-recipe",
                recipe="computer-1",
            },
            {
                type = "unlock-recipe",
                recipe="processor-1",
            },
            {
                type = "unlock-recipe",
                recipe="revive-process-1",
            },
            {
                type = "unlock-recipe",
                recipe="cpu-time",
            },
            {
                type = "unlock-recipe",
                recipe="memories",
            },
            {
                type = "unlock-recipe",
                recipe="interrupts",
            },
            {
                type = "unlock-recipe",
                recipe="program-harness",
            },
            {
                type = "unlock-recipe",
                recipe="program",
            },
            {
                type = "unlock-recipe",
                recipe="program-2",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "advanced-material-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/advanced-material-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {},
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
                recipe="steel-furnace",
            },
            {
                type = "unlock-recipe",
                recipe="boiler",
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
        name = "industrial-combustion",
        icons = {
            {
                icon = "__Krastorio2Assets__/technologies/gas-power-station.png",
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
                recipe = "combustion-generator"
            }
        },
    },
})