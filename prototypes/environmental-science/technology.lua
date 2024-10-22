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
                recipe="mechanical-inserter",
            },
            {
                type = "unlock-recipe",
                recipe="rivets",
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
        name = "mechanics-2",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/mechanics.png",
                icon_size = 256,
            }
        },
        prerequisites = {"steel-processing", "glassworks"},
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
                recipe="screws",
            },
            {
                type = "unlock-recipe",
                recipe="analog-circuit-1",
            },
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
        name = "steel-processing",
        icons = {
            {
                icon = "__base__/graphics/technology/steel-processing.png",
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
                recipe="steel-ingot-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-plate-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-rod-1",
            },
            {
                type = "unlock-recipe",
                recipe="steel-cable-1",
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
        name = "crushing",
        icons = {
            {
                icon = "__base__/graphics/technology/automation-1.png",
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
                recipe="stone-brick",
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
})--[[
data:extend({
    {
        type = "technology",
        name = "botany-1",
        icons = {
            {
                icon = "__base__/graphics/technology/automation.png",
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
                recipe="basic-farm",
            },
            {
                type = "unlock-recipe",
                recipe="moss-growing",
            },
            {
                type = "unlock-recipe",
                recipe="seaweed-growing",
            },
            {
                type = "unlock-recipe",
                recipe="sapling-1",
            },
            {
                type = "unlock-recipe",
                recipe="fastwood-1",
            },
        },
        order = "b-b"
    },
})]]