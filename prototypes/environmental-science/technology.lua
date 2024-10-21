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
        name = "coal-processing-1",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/coal-processing.png",
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