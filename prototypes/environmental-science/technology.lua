local du = require("dutil")

data:extend({
    {
        type = "technology",
        name = "alloying-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/alloying.png",
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
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="bronze-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="bronze-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="mechanical-inserter",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "mechanics",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/mechanics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"alloying-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="burner-inserter",
            },
            {
                type = "unlock-recipe",
                recipe="rivets-1",
            },
            {
                type = "unlock-recipe",
                recipe="rivets-2",
            },
            {
                type = "unlock-recipe",
                recipe="pipe",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "tar-processing",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/mechanics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"steam-power"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="tar-processing",
            },
            {
                type = "unlock-recipe",
                recipe="pitch-processing",
            },
            {
                type = "unlock-recipe",
                recipe="creosote-oil-from-green",
            },
            {
                type = "unlock-recipe",
                recipe="creosote-oil-from-middle",
            },
            {
                type = "unlock-recipe",
                recipe="creosote-oil-from-blended",
            },
            {
                type = "unlock-recipe",
                recipe="treated-wood",
            },
            {
                type = "unlock-recipe",
                recipe="anthracene-from-green",
            },
            {
                type = "unlock-recipe",
                recipe="carbolic-acid-middle",
            },
            {
                type = "unlock-recipe",
                recipe="carbolic-acid-creosote",
            },
            {
                type = "unlock-recipe",
                recipe = "wood-gasification",
            },
            {
                type = "unlock-recipe",
                recipe = "wood-oil-separation",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "mechanics-2",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/mechanics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"tar-processing", "glassworking-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="mechanical-science-pack-1",
            },
            {
                type = "unlock-recipe",
                recipe="screws",
            },
            {
                type = "unlock-recipe",
                recipe="wrought-iron-gear",
            },
            {
                type = "unlock-recipe",
                recipe="analog-circuit-1",
            },
            {
                type = "unlock-recipe",
                recipe="splitter",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-mining-drill",
            },
            {
                type = "unlock-recipe",
                recipe="soil-extractor",
            },
            {
                type = "unlock-recipe",
                recipe="clay-2",
            },
            {
                type = "unlock-recipe",
                recipe="soil-2",
            },
            {
                type = "mining-with-fluid",
                modifier = true
            }
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "coal-processing-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/coal-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"mechanics"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="destructive-distillation-tower",
            },
            {
                type = "unlock-recipe",
                recipe="raw-coal-to-coal",
            },
            {
                type = "unlock-recipe",
                recipe="coal-to-coke",
            },
            {
                type = "unlock-recipe",
                recipe="coke-gasification",
            },
            {
                type = "unlock-recipe",
                recipe="bound-porcelain",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "smelting-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/smelting.png",
                icon_size = 256,
            }
        },
        prerequisites = {"mechanics"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="smithy",
            },
            {
                type = "unlock-recipe",
                recipe="iron-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="iron-ingot-2",
            },
            {
                type = "unlock-recipe",
                recipe="wrought-iron-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="wrought-iron-sheet-1",
            },
            {
                type = "unlock-recipe",
                recipe="wrought-iron-rod-1",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "fluid-handling",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/fluid-handling.png",
                icon_size = 256,
            }
        },
        prerequisites = {"smelting-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="small-tank",
            },
            {
                type = "unlock-recipe",
                recipe="pipe-to-ground",
            },
            {
                type = "unlock-recipe",
                recipe="offshore-pump",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "optics",
        icons = {
            {
                icon = "__base__/graphics/technology/lamp.png",
                icon_size = 256,
            }
        },
        prerequisites = {"glassworking-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="evaporator",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "steam-power",
        icons = {
            {
                icon = "__base__/graphics/technology/steam-power.png",
                icon_size = 256,
            }
        },
        prerequisites = {"optics", "coal-processing-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="tube-boiler",
            },
            {
                type = "unlock-recipe",
                recipe="seawater-boiling",
            },
            {
                type = "unlock-recipe",
                recipe="saline-water-boiling",
            },
            {
                type = "unlock-recipe",
                recipe="brine-boiling",
            },
            {
                type = "unlock-recipe",
                recipe="mineralized-water-boiling",
            },
            {
                type = "unlock-recipe",
                recipe="wastewater-boiling-1",
            },
            {
                type = "unlock-recipe",
                recipe="water-1",
            },
            {
                type = "unlock-recipe",
                recipe="water-void",
            },
            {
                type = "unlock-recipe",
                recipe="seawater-void",
            },
            {
                type = "unlock-recipe",
                recipe="saline-water-void",
            },
            {
                type = "unlock-recipe",
                recipe="brine-void",
            },
            {
                type = "unlock-recipe",
                recipe="mineralized-water-void",
            },
            {
                type = "unlock-recipe",
                recipe="sludge-void-1",
            },
            {
                type = "unlock-recipe",
                recipe="organic-wastewater-void",
            },
            {
                type = "unlock-recipe",
                recipe="brine-salt-separation-1",
            },
            {
                type = "unlock-recipe",
                recipe="brine-salt-void-1",
            },
            {
                type = "unlock-recipe",
                recipe="brine-salt-void-2",
            },
            {
                type = "unlock-recipe",
                recipe="mineralized-water-1",
            },
            {
                type = "unlock-recipe",
                recipe="steam-engine",
            },
            {
                type = "unlock-recipe",
                recipe="assembling-machine-1",
            },
            {
                type = "unlock-recipe",
                recipe="steam-inserter",
            },
            {
                type = "unlock-recipe",
                recipe="fluid-mining-drill",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "crushing",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-1.png",
                icon_size = 256,
            }
        },
        prerequisites = {"mechanics-2", "masonry-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="steam-crusher",
            },
            {
                type = "unlock-recipe",
                recipe="sandstone-crushing",
            },
            {
                type = "unlock-recipe",
                recipe="limestone-crushing",
            },
            {
                type = "unlock-recipe",
                recipe="gravel-crushing",
            },
            {
                type = "unlock-recipe",
                recipe="stone-crushing",
            },
            {
                type = "unlock-recipe",
                recipe="stone-brick-crushing",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "syngas",
        icons = {
            {
                icon = "__base__/graphics/technology/flammables.png",
                icon_size = 256,
            }
        },
        prerequisites = {"basic-chemistry"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="full-tar-gasification",
            },
            {
                type = "unlock-recipe",
                recipe="coal-gas-gasification",
            },
            {
                type = "unlock-recipe",
                recipe="syngas-redox",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "masonry-1",
        icons = {
            {
                icon = "__base__/graphics/technology/lamp.png",
                icon_size = 256,
            }
        },
        prerequisites = {"steam-power"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="stone-brick-1",
            },
            {
                type = "unlock-recipe",
                recipe="stone-wall",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "glassworking-1",
        icons = {
            {
                icon = "__base__/graphics/technology/lamp.png",
                icon_size = 256,
            }
        },
        prerequisites = {"fluid-handling", "coal-processing-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="glassworks",
            },
            {
                type = "unlock-recipe",
                recipe="raw-quartz-glass",
            },
            {
                type = "unlock-recipe",
                recipe="crushed-quartz-glass",
            },
            {
                type = "unlock-recipe",
                recipe="float-glass",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "basic-chemistry",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/chemistry.png",
                icon_size = 256,
            }
        },
        prerequisites = {"mechanics-2"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="burner-chemical-plant",
            },
            {
                type = "unlock-recipe",
                recipe="sodium-carbonate-1",
            },
            {
                type = "unlock-recipe",
                recipe="caustic-solution-1",
            },
            {
                type = "unlock-recipe",
                recipe="caustic-solution-boiling-1",
            },
            {
                type = "unlock-recipe",
                recipe="lime",
            },
            {
                type = "unlock-recipe",
                recipe="slaked-lime",
            },
            {
                type = "unlock-recipe",
                recipe="raw-silica-1",
            },
            {
                type = "unlock-recipe",
                recipe="silica-1",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "wood-processing",
        icons = {
            {
                icon = "__core__/graphics/icons/force/neutral-force-icon.png",
                icon_size = 128,
            }
        },
        prerequisites = {"basic-chemistry", "mechanics-2"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="forestry-soil-1",
            },
            {
                type = "unlock-recipe",
                recipe="sap-extraction",
            },
            {
                type = "unlock-recipe",
                recipe="sap-extraction-pine",
            },
            {
                type = "unlock-recipe",
                recipe="green-liquor",
            },
            {
                type = "unlock-recipe",
                recipe="kraft-process",
            },
            {
                type = "unlock-recipe",
                recipe="black-liquor-regeneration",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "organics",
        icons = {
            {
                icon = "__core__/graphics/icons/force/neutral-force-icon.png",
                icon_size = 128,
            }
        },
        prerequisites = {"mechanics-2"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="smart-farm",
            },
            {
                type = "unlock-recipe",
                recipe="seaweed-1",
            },
            {
                type = "unlock-recipe",
                recipe="seaweed-2",
            },
            {
                type = "unlock-recipe",
                recipe="agar",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "microbiology",
        icons = {
            {
                icon = "__core__/graphics/icons/force/neutral-force-icon.png",
                icon_size = 128,
            }
        },
        prerequisites = {"organics"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="petri-dish-1",
            },
            {
                type = "unlock-recipe",
                recipe="agar-dish-1",
            },
            {
                type = "unlock-recipe",
                recipe="synthesis-methanogenesis",
            },
            {
                type = "unlock-recipe",
                recipe="synthesis-methanobacteria",
            },
            {
                type = "unlock-recipe",
                recipe="methanobacteria-1",
            },
            
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "aluminum-processing-1",
        icons = {
            {
                icon = "__core__/graphics/icons/force/neutral-force-icon.png",
                icon_size = 128,
            }
        },
        prerequisites = {"mechanics-2"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="crushed-aluminum-ore",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-hydroxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="alumina-1",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-ingot-2",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-carbide-reprocessing-1",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="aluminum-cable-1",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "blasting-1",
        icons = {
            {
                icon = "__base__/graphics/technology/advanced-material-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"aluminum-processing-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="refractory-brick-1",
            },
            {
                type = "unlock-recipe",
                recipe="blast-furnace",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "steel-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"blasting-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="steel-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-rod-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-beam-1",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "zinc-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"blasting-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="zinc-oxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="zinc-gas-1",
            },
            {
                type = "unlock-recipe",
                recipe="zinc-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="zinc-plate-1",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "urea-1",
        icons = {
            {
                icon = "__base__/graphics/technology/plastics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"wood-processing"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="urea-ureic-feces",
            },
            {
                type = "unlock-recipe",
                recipe="urea-organic-wastewater",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "polymers-1",
        icons = {
            {
                icon = "__base__/graphics/technology/plastics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"urea-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="formaldehyde-1",
            },
            {
                type = "unlock-recipe",
                recipe="synthetic-resin-1",
            },
            {
                type = "unlock-recipe",
                recipe="fiberboard",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "electromagnetism",
        icons = {
            {
                icon = "__base__/graphics/technology/electric-engine.png",
                icon_size = 256,
            }
        },
        prerequisites = {"polymers-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="magnet-wire-1",
            },
            {
                type = "unlock-recipe",
                recipe="ferrite-1",
            },
            {
                type = "unlock-recipe",
                recipe="small-electric-motor-1",
            },
            {
                type = "unlock-recipe",
                recipe="small-electric-pole",
            },
            {
                type = "unlock-recipe",
                recipe="small-electric-pole-2",
            },
            {
                type = "unlock-recipe",
                recipe="inserter",
            },
            {
                type = "unlock-recipe",
                recipe="long-handed-inserter",
            },
            {
                type = "unlock-recipe",
                recipe="lv-generator",
            },
        },
        order = "b-b"
    },
})
data:extend({
    {
        type = "technology",
        name = "electronics",
        icons = {
            {
                icon = "__base__/graphics/technology/electronics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"electromagnetism"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="fiberboard",
            },
            {
                type = "unlock-recipe",
                recipe="lv-resistor-1",
            },
            {
                type = "unlock-recipe",
                recipe="lv-capacitor-1",
            },
            {
                type = "unlock-recipe",
                recipe="solder-1",
            },
            {
                type = "unlock-recipe",
                recipe="solder-2",
            },
            {
                type = "unlock-recipe",
                recipe="vacuum-tube-1",
            },
            {
                type = "unlock-recipe",
                recipe="electronic-circuit",
            },
        },
        order = "b-b"
    },
})