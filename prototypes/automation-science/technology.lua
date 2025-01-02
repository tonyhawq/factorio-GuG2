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
data:extend({
    {
        type = "technology",
        name = "refrigeration",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/metharicephentine.png",
                icon_size = 256,
            }
        },
        prerequisites = {"automation-science", "polymers-4"},
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
                recipe = "refrigerant-1"
            },
            {
                type = "unlock-recipe",
                recipe = "low-temperature-refrigerant-1"
            },
            {
                type = "unlock-recipe",
                recipe = "insulation",
            },
            {
                type = "unlock-recipe",
                recipe = "heat-break",
            },
            {
                type = "unlock-recipe",
                recipe = "radiator",
            },
            {
                type = "unlock-recipe",
                recipe = "chiller",
            },
            {
                type = "unlock-recipe",
                recipe = "refrigerant-cooling",
            },
            {
                type = "unlock-recipe",
                recipe = "cold-refrigerant",
            },
            {
                type = "unlock-recipe",
                recipe = "low-temperature-refrigerant-cooling",
            },
            {
                type = "unlock-recipe",
                recipe = "cold-low-temperature-refrigerant",
            },
            {
                type = "unlock-recipe",
                recipe = "air-separation",
            },
            {
                type = "unlock-recipe",
                recipe = "trace-gases-separation",
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "crystallization",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/metharicephentine.png",
                icon_size = 256,
            }
        },
        prerequisites = {"refrigeration"},
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
                recipe = "crystallizer"
            },
        },
    },
})
data:extend({
    {
        type = "technology",
        name = "silicon-3",
        icons = {
            {
                icon = "__GuG2__/graphics/technology/pm/silicon-processing.png",
                icon_size = 256,
            }
        },
        prerequisites = {"crystallization"},
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
                recipe = "silicon-tetrachloride-jump-1"
            },
            {
                type = "unlock-recipe",
                recipe = "trichlorosilane-dichlorosilane-1"
            },
            {
                type = "unlock-recipe",
                recipe = "dichlorosilane-1"
            },
            {
                type = "unlock-recipe",
                recipe = "trichlorosilane-1"
            },
            {
                type = "unlock-recipe",
                recipe = "silane-1"
            },
            {
                type = "unlock-recipe",
                recipe = "miniscule-silicon-boule"
            },
            {
                type = "unlock-recipe",
                recipe = "moderate-silicon-boule"
            },
            {
                type = "unlock-recipe",
                recipe = "substantial-silicon-boule"
            },
            {
                type = "unlock-recipe",
                recipe = "silicon-boule"
            },
            {
                type = "unlock-recipe",
                recipe = "polysilicon-crushing"
            },
        },
    },
})