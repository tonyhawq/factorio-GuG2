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
        prerequisites = {"automation-3"},
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
            {
                type = "unlock-recipe",
                recipe="btx-separation",
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
        prerequisites = {"automation-3", "electromagnetism-2"},
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
        name = "nitrogen-chemistry-1",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"nickel-processing"},
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
                recipe="nitric-oxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="nitrogen-dioxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="dilute-nitric-acid-1",
            },
            {
                type = "unlock-recipe",
                recipe="nitric-acid-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "silicon-1",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"separation-1"},
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
                recipe="silicon-1",
            },
            {
                type = "unlock-recipe",
                recipe="silicon-2",
            },
            {
                type = "unlock-recipe",
                recipe="silicon-3",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "silicon-2",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"separation-1"},
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
                recipe="silicon-1",
            },
            {
                type = "unlock-recipe",
                recipe="silicon-2",
            },
            {
                type = "unlock-recipe",
                recipe="silicon-3",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "molybdenum-1",
        icons = {
            {
                icon = "__base__/graphics/technology/oil-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"nitrogen-chemistry-1", "silicon-1"},
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
                recipe="impure-molybdenum-concentrate",
            },
            {
                type = "unlock-recipe",
                recipe="molybdenum-ingot",
            },
            {
                type = "unlock-recipe",
                recipe="molybdenum-special-alloy",
            },
            {
                type = "unlock-recipe",
                recipe="programatical-metalloid-analysis",
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
        name = "nickel-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
                tint = {128, 255, 128}
            }
        },
        prerequisites = {"separation-1"},
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
                recipe="impure-nickel-concentrate-1",
            },
            {
                type = "unlock-recipe",
                recipe="nickel-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="nickel-plate-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "coal-processing-4",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/coal-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"nickel-processing"},
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
                recipe="organic-solvent-1",
            },
            {
                type = "unlock-recipe",
                recipe="phenol-1",
            },
            {
                type = "unlock-recipe",
                recipe="phenol-2",
            },
            {
                type = "unlock-recipe",
                recipe="phenol-3",
            },
            {
                type = "unlock-recipe",
                recipe="aniline-1",
            },
            {
                type = "unlock-recipe",
                recipe="aniline-2",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "automation-3",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-3.png",
                icon_size = 256,
            }
        },
        prerequisites = {"antimony-1", "masonry-2"},
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
                recipe="small-parts-1",
            },
            {
                type = "unlock-recipe",
                recipe="machine-chassis",
            },
            {
                type = "unlock-recipe",
                recipe="chemical-plant",
            },
            {
                type = "unlock-recipe",
                recipe="assembling-machine-2",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "separation-1",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
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
        name = "separation-2",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"geothermal-power", "automation-3"},
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
                recipe="water-treatment-plant",
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
            {
                type = "unlock-recipe",
                recipe="geothermal-water-treatment-2",
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
data:extend({
    {
        type = "technology",
        name = "polymers-2",
        icons = {
            {
                icon = "__base__/graphics/technology/plastics.png",
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
                recipe="polymer-additives-1",
            },
            {
                type = "unlock-recipe",
                recipe="finished-plastic",
            },
            {
                type = "unlock-recipe",
                recipe="plastic-polypropylene",
            },
            {
                type = "unlock-recipe",
                recipe="plastic-polypropylene-2",
            },
            {
                type = "unlock-recipe",
                recipe="rubber-sbr",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "cracking-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/research-productivity.png",
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
                recipe="gas-oil-separation",
            },
            {
                type = "unlock-recipe",
                recipe="fuel-oil-from-light-gas-oil",
            },
            {
                type = "unlock-recipe",
                recipe="fuel-oil-from-heavy-gas-oil",
            },
            {
                type = "unlock-recipe",
                recipe="fuel-oil-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-to-styrene",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "refined-fuels-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/research-productivity.png",
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
                recipe="solid-fuel-fuel-oil",
            },
            {
                type = "unlock-recipe",
                recipe="solid-fuel-gas-oil",
            },
            {
                type = "unlock-recipe",
                recipe="solid-fuel-kerosene",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-from-heavy-naphtha",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-from-light-naphtha",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "cracking-2",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/research-productivity.png",
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
                recipe="diesel-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="fcc-heavy-oil",
            },
            {
                type = "unlock-recipe",
                recipe="fcc-gasoline",
            },
            {
                type = "unlock-recipe",
                recipe="hvgo-cracking",
            },
            {
                type = "unlock-recipe",
                recipe="condensates-fractioning",
            },
        },
    },
})