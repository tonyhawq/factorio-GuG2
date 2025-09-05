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
                recipe="steam-cracker",
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
                recipe="tar-raw-lubricating-oil",
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
        name = "water-treatment",
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
                recipe="hydro-plant-1",
            },
            {
                type = "unlock-recipe",
                recipe="seawater-treatment",
            },
            {
                type = "unlock-recipe",
                recipe="saline-water-treatment",
            },
            {
                type = "unlock-recipe",
                recipe="brine-treatment",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "electric-energy-distribution-1",
        icons = {
            {
                icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
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
                recipe="medium-electric-pole",
            },
            {
                type = "unlock-recipe",
                recipe="accumulator",
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
                icon = "__GuG2__/graphics/icons/se/technology/supercomputer-1.png",
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
        name = "modules",
        icons = {
            {
                icon = "__base__/graphics/technology/module.png",
                icon_size = 256,
            }
        },
        prerequisites = {"computation"},
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
                recipe="module-harness-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "speed-module",
        icons = {
            {
                icon = "__base__/graphics/technology/speed-module-1.png",
                icon_size = 256,
            }
        },
        prerequisites = {"modules"},
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
                recipe="speed-module-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "efficiency-module",
        icons = {
            {
                icon = "__base__/graphics/technology/efficiency-module-1.png",
                icon_size = 256,
            }
        },
        prerequisites = {"modules"},
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
                recipe="efficiency-module-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "computational-insights",
        icons = {
            {
                icon = "__GuG2__/graphics/icons/se/technology/catalogue/universal-catalogue.png",
                icon_size = 256,
            }
        },
        prerequisites = {"computation"},
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
                recipe="revive-process-environmental-insight",
            },
            {
                type = "unlock-recipe",
                recipe="revive-process-mechanical-insight",
            },
            {
                type = "unlock-recipe",
                recipe="revive-process-electromagnetic-insight",
            },
            {
                type = "unlock-recipe",
                recipe="environmental-insight-1",
            },
            {
                type = "unlock-recipe",
                recipe="mechanical-insight-1",
            },
            {
                type = "unlock-recipe",
                recipe="electromagnetic-insight-1",
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
                recipe="crucible",
            },
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
        prerequisites = {"water-treatment"},
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
data:extend({
    {
        type = "technology",
        name = "chemistry-3",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/chemistry.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetic-science"},
        unit =
        {
            count = 15,
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
                recipe="chemical-plant",
            },
        },
    },
})