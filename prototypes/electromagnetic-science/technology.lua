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
        name = "optimization-science",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-science-pack.png",
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
                recipe="optimization-science-pack",
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
                icon = "__GuG2__/graphics/technology/pm/silicon-processing.png",
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
                recipe="sand-upgrading",
            },
            {
                type = "unlock-recipe",
                recipe="silica-sand-crushed-quartz",
            },
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
            {
                type = "unlock-recipe",
                recipe="silicon-to-silica",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "phosphorous",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/silicon-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"separation-2"},
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
                recipe="white-phosphorous-1",
            },
            {
                type = "unlock-recipe",
                recipe="phosphine-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "silver-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/silicon-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"phosphorous", "acids-1"},
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
                recipe="silver-slime-1",
            },
            {
                type = "unlock-recipe",
                recipe="silver-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="silver-plate-2",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "acids-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/silicon-processing.png",
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
                recipe="acetic-acid-1",
            },
            {
                type = "unlock-recipe",
                recipe="acetic-acid-2",
            },
            {
                type = "unlock-recipe",
                recipe="acetic-acid-3",
            },
            {
                type = "unlock-recipe",
                recipe="hydrochloric-acid-1",
            },
            {
                type = "unlock-recipe",
                recipe="hydrochloric-acid-2",
            },
            {
                type = "unlock-recipe",
                recipe="hydrochloric-acid-void",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "lubricant",
        icons = {
            {
                icon = "__base__/graphics/technology/lubricant.png",
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
                recipe="lubricant-2",
            },
            {
                type = "unlock-recipe",
                recipe="lubricant-3",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "uranium-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/lubricant.png",
                icon_size = 256,
            }
        },
        prerequisites = {"separation-2"},
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
                recipe="yellowcake-1",
            },
            {
                type = "unlock-recipe",
                recipe="urania-1",
            },
            {
                type = "unlock-recipe",
                recipe="graphite-1",
            },
            {
                type = "unlock-recipe",
                recipe="graphite-dust-1",
            },
            {
                type = "unlock-recipe",
                recipe="graphite-block-1",
            },
            {
                type = "unlock-recipe",
                recipe="graphite-electrode-1",
            },
            {
                type = "unlock-recipe",
                recipe="silicon-carbide-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "lubricant-2",
        icons = {
            {
                icon = "__base__/graphics/technology/lubricant.png",
                icon_size = 256,
            }
        },
        prerequisites = {"lubricant", "uranium-processing"},
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
                recipe="lubricant-4",
            },
            {
                type = "unlock-recipe",
                recipe="lubricant-5",
            },
            {
                type = "unlock-recipe",
                recipe="grease-1",
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
                icon = "__GuG2__/graphics/technology/advanced-electronics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"silver-1", "acids-1"},
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
                recipe="wave-gap-simulation",
            },
            {
                type = "unlock-recipe",
                recipe="transistor-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "synthetic-fibers-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/advanced-electronic-components.png",
                icon_size = 256,
            }
        },
        prerequisites = {"nitrogen-chemistry-1"},
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
                recipe="ammonium-chloride-1",
            },
            {
                type = "unlock-recipe",
                recipe="copper-sulfate",
            },
            {
                type = "unlock-recipe",
                recipe="copper-hydroxide",
            },
            {
                type = "unlock-recipe",
                recipe="rayon-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "phenolics",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/advanced-electronic-components.png",
                icon_size = 256,
            }
        },
        prerequisites = {"coal-processing-4"},
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
                recipe="phenolic-resin-1",
            },
            {
                type = "unlock-recipe",
                recipe="mv-resistor-1",
            },
            {
                type = "unlock-recipe",
                recipe="phenolic-board-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "electronic-components-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/advanced-electronic-components.png",
                icon_size = 256,
            }
        },
        prerequisites = {"separation-1", "molybdenum-1"},
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
                recipe="mv-capacitor-1",
            },
            {
                type = "unlock-recipe",
                recipe="mv-resistor-1",
            },
            {
                type = "unlock-recipe",
                recipe="phenolic-board-1",
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
        name = "manganese-1",
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
                recipe="impure-manganese-concentrate-2",
            },
            {
                type = "unlock-recipe",
                recipe="manganese-dioxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="manganese-dioxide-2",
            },
            {
                type = "unlock-recipe",
                recipe="ferrite-2",
            },
            {
                type = "unlock-recipe",
                recipe="battery-3",
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
                recipe="cumene",
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
        name = "polymers-3",
        icons = {
            {
                icon = "__base__/graphics/technology/plastics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"polymers-2", "silicon-1"},
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
                recipe="bpa-1",
            },
            {
                type = "unlock-recipe",
                recipe="epichlorohydrin-1",
            },
            {
                type = "unlock-recipe",
                recipe="epoxy-1",
            },
            {
                type = "unlock-recipe",
                recipe="fiberglass-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "polymers-4",
        icons = {
            {
                icon = "__base__/graphics/technology/plastics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"optimization-science", "acids-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="ethylene-glycol-1",
            },
            {
                type = "unlock-recipe",
                recipe="pet-solution-1",
            },
            {
                type = "unlock-recipe",
                recipe="plastic-pet",
            },
            {
                type = "unlock-recipe",
                recipe="rubylith",
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
        prerequisites = {"oil-refining", "optimization-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
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
data:extend({
    {
        type = "technology",
        name = "advanced-electronics",
        icons = {
            {
                icon = "__base__/graphics/technology/advanced-circuit.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electronic-components-1", "silicon-2"},
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
                recipe="advanced-circuit",
            },
            {
                type = "unlock-recipe",
                recipe="selector-combinator",
            },
            {
                type = "unlock-recipe",
                recipe="power-switch",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "electromagnetism-3",
        icons = {
            {
                icon = "__base__/graphics/technology/electric-engine.png",
                icon_size = 256,
            }
        },
        prerequisites = {"polymers-3", "electronic-components-1", "silicon-2", "lubricant-2", "synthetic-fibers-1"},
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
                recipe="medium-electric-motor-1",
            },
            {
                type = "unlock-recipe",
                recipe="gearbox-1",
            },
            {
                type = "unlock-recipe",
                recipe="mv-generator",
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
        prerequisites = {"optimization-science", "electromagnetism-2", "molybdenum-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
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
                recipe="big-electric-pole",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "automation-science",
        icons = {
            {
                icon = "__base__/graphics/technology/space-science-pack.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetism-3", "advanced-electronics", "optimization-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="computed-automation-science-pack-1",
            },
            {
                type = "unlock-recipe",
                recipe="automation-science-pack",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "fluid-handling-3",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/better-pipes.png",
                icon_size = 256,
            }
        },
        prerequisites = {"optimization-science", "phenolics"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="pipe-2",
            },
            {
                type = "unlock-recipe",
                recipe="pipe-to-ground-2",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-tank-1x1",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-tank-1x1",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-tank-2x2",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-tank-3x4",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "logistics-2",
        icons = {
            {
                icon = "__base__/graphics/technology/logistics-2.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetism-3", "optimization-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="fast-transport-belt",
            },
            {
                type = "unlock-recipe",
                recipe="fast-underground-belt",
            },
            {
                type = "unlock-recipe",
                recipe="fast-splitter",
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
        prerequisites = {"optimization-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
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
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module"
            }
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "speed-module-2",
        icons = {
            {
                icon = "__base__/graphics/technology/speed-module-2.png",
                icon_size = 256,
            }
        },
        prerequisites = {"lubricant-2", "electronic-components-1", "speed-module"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-2"
            }
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
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "efficiency-module"
            }
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "efficiency-module-2",
        icons = {
            {
                icon = "__base__/graphics/technology/efficiency-module-2.png",
                icon_size = 256,
            }
        },
        prerequisites = {"uranium-processing", "efficiency-module"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "efficiency-module-2"
            }
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