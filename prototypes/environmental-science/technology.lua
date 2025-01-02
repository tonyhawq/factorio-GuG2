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
        research_trigger = {
            type = "craft-item",
            item = "bronze-ingot",
            count = 1,
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="bronze-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="mechanical-inserter",
            },
        },
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
            count = 3,
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
            count = 12,
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
            count = 20,
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
    },
})
data:extend({
    {
        type = "technology",
        name = "mechanical-science",
        icons = {
            {
                icon = "__base__/graphics/technology/chemical-science-pack.png",
                icon_size = 256,
            }
        },
        prerequisites = {"logistics"},
        unit =
        {
            count = 30,
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
        },
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
            count = 6,
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
            count = 8,
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
    },
})
data:extend({
    {
        type = "technology",
        name = "coal-processing-2",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/coal-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"crushing"},
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
                recipe="coarse-coal-1",
            },
            {
                type = "unlock-recipe",
                recipe="crushed-coal-1",
            },
            {
                type = "unlock-recipe",
                recipe="coal-2",
            },
        },
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
            count = 20,
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
                recipe="water-boiling",
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
                recipe="sludge-1",
            },
            {
                type = "unlock-recipe",
                recipe="sludge-2",
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
                recipe="mineralized-water-2",
            },
            {
                type = "unlock-recipe",
                recipe="sand-void",
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
        prerequisites = {"mechanical-science", "masonry-1"},
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
            {
                type = "unlock-recipe",
                recipe="crushed-quartz-1",
            },
        },
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
            {
                type = "unlock-recipe",
                recipe="sulfuric-acid-flue-gas",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "sulfur-1",
        icons = {
            {
                icon = "__base__/graphics/technology/sulfur-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"syngas", "wood-processing", "aluminum-processing-1"},
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
                recipe="acid-gas-1",
            },
            {
                type = "unlock-recipe",
                recipe="acid-gas-treatment-1",
            },
            {
                type = "unlock-recipe",
                recipe="sulfur-dioxide-1",
            },
            {
                type = "unlock-recipe",
                recipe="sulfuric-acid-1",
            },
            {
                type = "unlock-recipe",
                recipe="saturated-gas-separation-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "masonry-1",
        icons = {
            {
                icon = "__base__/graphics/technology/concrete.png",
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
    },
})
data:extend({
    {
        type = "technology",
        name = "masonry-2",
        icons = {
            {
                icon = "__base__/graphics/technology/concrete.png",
                icon_size = 256,
            }
        },
        prerequisites = {"steel-processing"},
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
                recipe="cement-1",
            },
            {
                type = "unlock-recipe",
                recipe="mortar-1",
            },
            {
                type = "unlock-recipe",
                recipe="concrete-1",
            },
        },
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
            {
                type = "unlock-recipe",
                recipe="lab-1",
            },
        },
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
        prerequisites = {"mechanical-science"},
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
    },
})
data:extend({
    {
        type = "technology",
        name = "canisters",
        icons = {
            {
                icon = "__core__/graphics/icons/force/neutral-force-icon.png",
                icon_size = 128,
            }
        },
        prerequisites = {"zinc-processing", "coal-processing-3"},
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
                recipe="empty-canister",
            },
            {
                type = "unlock-recipe",
                recipe="brazing-kit-acetylene",
            },
            {
                type = "unlock-recipe",
                recipe="brazing-kit-aniline",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "waste-managment",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/flare-stack.png",
                icon_size = 256,
            }
        },
        prerequisites = {"fluid-handling-2", "automation-2"},
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
                recipe="flare-stack",
            },
        },
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
            {
                type = "unlock-recipe",
                recipe="log-treatment",
            },
            {
                type = "unlock-recipe",
                recipe="pine-log-treatment",
            },
            {
                type = "unlock-recipe",
                recipe="oak-log-treatment",
            },
        },
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
        prerequisites = {"mechanical-science"},
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
                recipe="simple-algae-plant",
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
        prerequisites = {"basic-chemistry", "crushing"},
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
                recipe="alumina-2",
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
    },
})
data:extend({
    {
        type = "technology",
        name = "automation-2",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-2.png",
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
                recipe="fabricator-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "heat-exchange",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-2.png",
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
                recipe="counterflow-heat-exchanger",
            },
            {
                type = "unlock-recipe",
                recipe="200c-production",
            },
            {
                type = "unlock-recipe",
                recipe="300c-production",
            },
            {
                type = "unlock-recipe",
                recipe="400c-production",
            },
            {
                type = "unlock-recipe",
                recipe="500c-production",
            },
            {
                type = "unlock-recipe",
                recipe="500c-to-400c",
            },
            {
                type = "unlock-recipe",
                recipe="500c-to-300c",
            },
            {
                type = "unlock-recipe",
                recipe="500c-to-200c",
            },
            {
                type = "unlock-recipe",
                recipe="400c-to-300c",
            },
            {
                type = "unlock-recipe",
                recipe="400c-to-200c",
            },
            {
                type = "unlock-recipe",
                recipe="300c-to-200c",
            },
            {
                type = "unlock-recipe",
                recipe="200c-to-water",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "fluid-handling-2",
        icons = {
            {
                icon = "__Krastorio2Assets__/technologies/fluids-chemistry.png",
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
                recipe="electrolyzer",
            },
            {
                type = "unlock-recipe",
                recipe="saline-water-electrolysis",
            },
            {
                type = "unlock-recipe",
                recipe="water-electrolysis",
            },
            {
                type = "unlock-recipe",
                recipe="hydrogen-chloride",
            },
            {
                type = "unlock-recipe",
                recipe="pump",
            },
        },
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
                recipe="manganese-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-ingot-2",
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
        prerequisites = {"polymers-1", "steel-processing", "zinc-processing"},
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
                type = "unlock-circuit-network",
                modifier = true,
            },
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
                recipe="battery-1",
            },
            {
                type = "unlock-recipe",
                recipe="constant-combinator",
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
            {
                type = "unlock-recipe",
                recipe="small-lamp",
            },
        },
    },
})
du.technology("electromagnetism"):add_label_unlock{
    name = {"tech-effects.simple-algae-plant-speed-boost"},
    icon = du.icons("simple-algae-plant"),
}
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
                recipe="electric-mining-drill",
            },
            {
                type = "unlock-recipe",
                recipe="decider-combinator",
            },
            {
                type = "unlock-recipe",
                recipe="arithmetic-combinator",
            },
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
    },
})
data:extend({
    {
        type = "technology",
        name = "coal-processing-3",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/coal-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"heat-exchange", "fluid-handling-2"},
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
                recipe="ammonia-from-gasoline",
            },
            {
                type = "unlock-recipe",
                recipe="creosote-oil-void",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-1",
            },
            {
                type = "unlock-recipe",
                recipe="gasoline-pyrolysis",
            },
            {
                type = "unlock-recipe",
                recipe="lubricant-1",
            },
            {
                type = "unlock-recipe",
                recipe="plastic-pvc-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "engine",
        icons = {
            {
                icon = "__base__/graphics/technology/engine.png",
                icon_size = 256,
            }
        },
        prerequisites = {"coal-processing-3", "electronics", "automation-2"},
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
                recipe="engine-unit",
            },
            {
                type = "unlock-recipe",
                recipe="pumpjack",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "railway",
        icons = {
            {
                icon = "__base__/graphics/technology/railway.png",
                icon_size = 256,
            }
        },
        prerequisites = {"engine", "canisters"},
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
                recipe="rail",
            },
            {
                type = "unlock-recipe",
                recipe="rail-signal",
            },
            {
                type = "unlock-recipe",
                recipe="rail-chain-signal",
            },
            {
                type = "unlock-recipe",
                recipe="locomotive",
            },
            {
                type = "unlock-recipe",
                recipe="cargo-wagon",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "automobilism",
        icons = {
            {
                icon = "__base__/graphics/technology/automobilism.png",
                icon_size = 256,
            }
        },
        prerequisites = {"engine", "canisters"},
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
                recipe="cargo-wagon",
            },
            {
                type = "unlock-recipe",
                recipe="car",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "electromagnetic-science",
        icons = {
            {
                icon = "__base__/graphics/technology/production-science-pack.png",
                icon_size = 256,
            }
        },
        prerequisites = {"engine"},
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
                recipe="small-parts-1",
            },
            {
                type = "unlock-recipe",
                recipe="lab-2",
            },
            {
                type = "unlock-recipe",
                recipe="electromagnetic-science-pack-1",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "logistics",
        icons = {
            {
                icon = "__base__/graphics/technology/logistics-1.png",
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
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="transport-belt-2",
            },
            {
                type = "unlock-recipe",
                recipe="splitter",
            },
        },
    },
})