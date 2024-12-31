data:extend({
    {
        type = "technology",
        name = "solar-energy",
        icons = {
            {
                icon = "__base__/graphics/technology/solar-energy.png",
                icon_size = 256,
            }
        },
        prerequisites = {"automation-science"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
                {"mechanical-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"optimization-science-pack", 1},
                {"automation-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "solar-panel"
            },
            {
                type = "unlock-recipe",
                recipe = "solar-panel-equipment"
            },
        },
    },
})