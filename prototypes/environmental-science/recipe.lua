local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "bronze-ingot-1",
        icons = du.icons("bronze-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="tin-ingot", amount=1},
            {type="item", name="copper-ingot", amount=4},
        },
        results = {
            {type="item", name="bronze-ingot", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "bronze-plate-1",
        icons = du.icons("bronze-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="bronze-ingot", amount=1},
        },
        results = {
            {type="item", name="bronze-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "smithy",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/advanced-foundry-mk01.png"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="iron-ingot", amount=12},
            {type="item", name="mechanical-inserter", amount=6},
        },
        results = {
            -- consumes gaseous fuel (infinite source present in crashed ship until DD tower produced)
            {type="item", name="smithy", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "rivets",
        icons = du.icons("rivets"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="bronze-ingot", amount=1},
        },
        results = {
            {type="item", name="rivets", amount=6},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "iron-ingot-1",
        icons = du.icons("iron-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ore", amount=4},
        },
        results = {
            {type="item", name="iron-ingot", amount=1},
            {type="item", name="gravel", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "wrought-iron-plate-1",
        icons = du.icons("wrought-iron-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=1},
        },
        results = {
            {type="item", name="wrought-iron-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "mechanical-inserter",
        icons = du.icons("mechanical-inserter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="bronze-plate", amount=1},
            {type="item", name="rivets", amount=1},
        },
        results = {
            {type="item", name="mechanical-inserter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "small-tank",
        icons = du.icons("small-tank"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="rivets", amount=6},
            {type="item", name="wrought-iron-sheet", amount=3},
        },
        results = {
            {type="item", name="small-tank", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "offshore-pump",
        icons = du.icons{name="__base__/graphics/icons/offshore-pump.png", discard=true},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="small-tank", amount=1},
            {type="item", name="brick", amount=6},
        },
        results = {
            {type="item", name="offshore-pump", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "pipe",
        icons = du.icons("pipe"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="rivets", amount=4},
            {type="item", name="lead-sheet", amount=1},
        },
        results = {
            {type="item", name="pipe", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "pipe-to-ground",
        icons = du.icons{mod="base",name="pipe-to-ground"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="gravel", amount=6},
            {type="item", name="pipe", amount=10},
        },
        results = {
            {type="item", name="pipe-to-ground", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "evaporator",
        icons = {{icon="__GuG2__/graphics/missing.png"}},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="small-tank", amount=1},
            {type="item", name="pipe", amount=6},
        },
        results = {
            {type="item", name="offshore-pump", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-engine",
        icons = du.icons{mod="base",name="steam-engine"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="small-tank", amount=3}, -- engine tanks
            {type="item", name="bronze-plate", amount=6}, -- bushings
            {type="item", name="wrought-iron-rod", amount=6},
            {type="item", name="rivets", amount=12},
        },
        results = {
            {type="item", name="steam-engine", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-inserter",
        icons = du.icons("steam-inserter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="steam-engine", amount=1},
        },
        results = {
            {type="item", name="steam-inserter", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "destructive-distillation-tower",
        icons = du.icons{mod="pycoalprocessinggraphics", name="distilator"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="pipe", amount=30},
            {type="item", name="bronze-plate", amount=20},
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="brick", amount=20},
        },
        results = {
            {type="item", name="destructive-distillation-tower", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "assembling-machine-1",
        icons = du.icons{mod="base",name="assembling-machine-1"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="steam-engine", amount=1},
            {type="item", name="wrought-iron-rod", amount=3},
            {type="item", name="brick", amount=12},
            {type="item", name="rivets", amount=8},
        },
        results = {
            {type="item", name="assembling-machine-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "tube-boiler",
        icons = du.icons("tube-boiler"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            -- spring?
            {type="item", name="bronze-plate", amount=12},
            {type="item", name="small-tank", amount=1},
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="brick", amount=6},
        },
        results = {
            {type="item", name="tube-boiler", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "fluid-mining-drill",
        icons = du.icons("fluid-mining-drill"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            -- spring?
            {type="item", name="steam-engine", amount=1},
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="brick", amount=6},
        },
        results = {
            {type="item", name="tube-boiler", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "steel-ingot-1",
        icons = du.icons("steel-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="item", name="iron-ingot", amount=3},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="steel-ingot", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-rod-1",
        icons = du.icons("steel-rod"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
        },
        results = {
            {type="item", name="steel-rod", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-plate-1",
        icons = du.icons("steel-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
        },
        results = {
            {type="item", name="steel-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-beam-1",
        icons = du.icons("steel-beam"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
            {type="item", name="steel-plate", amount=2},
            {type="item", name="steel-rod", amount=2},
        },
        results = {
            {type="item", name="steel-beam", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "steel-cable-1",
        icons = du.icons("steel-cable"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 12,
        ingredients = {
            {type="item", name="steel-rod", amount=2},
        },
        results = {
            {type="item", name="steel-cable", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "autocrafting", ---@diagnostic disable-line
        name = "wrought-iron-gear",
        icons = du.icons{mod="base", name="iron-gear-wheel"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wrought-iron-plate", amount=1},
            {type="item", name="wrought-iron-rod", amount=1},
        },
        results = {
            {type="item", name="iron-gear-wheel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "analog-circuit-1",
        icons = du.icons("analog-circuit"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="steel-cable", amount=6},
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="screws", amount=12},
            {type="item", name="wood", amount=2},
            {type="item", name="bronze-plate", amount=2},
        },
        results = {
            {type="item", name="analog-circuit", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-crusher",
        icons = du.icons("analog-circuit"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="steam-engine", amount=1},
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="steel-beam", amount=6},
            {type="item", name="lead-sheet", amount=6},
        },
        results = {
            {type="item", name="analog-circuit", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "sandstone-crushing",
        icons = du.icons("sandstone").add_corner("crushing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sandstone", amount=4},
        },
        results = {
            {type="item", name="sand", amount=3},
            {type="item", name="silica-sand", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "gravel-crushing",
        icons = du.icons("gravel").add_corner("crushing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="gravel", amount=4},
        },
        results = {
            {type="item", name="sand", amount=3},
            {type="item", name="stone", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "stone-crushing",
        icons = du.icons{mod="base",name="stone"}.add_corner("crushing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone", amount=4},
        },
        results = {
            {type="item", name="gravel", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "glassworking", ---@diagnostic disable-line
        name = "raw-quartz-glass",
        icons = du.icons("glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="raw-quartz", amount=3},
        },
        results = {
            {type="fluid", name="molten-glass", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "glassworking", ---@diagnostic disable-line
        name = "crushed-quartz-glass",
        icons = du.icons("glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="raw-quartz", amount=3},
        },
        results = {
            {type="fluid", name="molten-glass", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "glassworking", ---@diagnostic disable-line
        name = "float-glass",
        icons = du.icons("glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-glass", amount=8},
            {type="item", name="tin-plate", amount=1},
        },
        results = {
            {type="item", name="glass", amount=8},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "autocrafting", ---@diagnostic disable-line
        name = "screws",
        icons = du.icons("screws"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wrought-iron-rod", amount=1},
            {type="item", name="bound-porcelain", amount=1},
        },
        results = {
            {type="item", name="screws", amount=2},
            {type="fluid", name="tar", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "glassworks",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/glassworks-mk01.png"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-furnace", amount=12},
            {type="item", name="rivets", amount=12},
            {type="item", name="lead-sheet", amount=12},
            {type="item", name="brick", amount=10},
        },
        results = {
            {type="item", name="glassworks", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "automation-science-pack",
        icons = du.icons{mod="base", name="automation-science-pack"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="glass", amount=2},
            {type="item", name="analog-circuit", amount=1},
            {type="item", name="stone-brick", amount=3},
        },
        results = {
            {type="item", name="automation-science-pack", amount=2},
        }
    }
})