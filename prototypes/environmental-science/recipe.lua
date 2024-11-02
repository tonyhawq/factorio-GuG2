local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
            {type="item", name="bound-porcelain", amount=1},
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
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "treated-wood",
        icons = du.icons("treated-wood"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="wood", amount=1},
            {type="fluid", name="creosote-oil", amount=6},
        },
        results = {
            {type="item", name="treated-wood", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "analog-circuit-1",
        icons = du.icons("analog-circuit"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="screws", amount=12},
            {type="item", name="treated-wood", amount=2},
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
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-crusher",
        icons = du.icons("steam-crusher"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="steam-engine", amount=1},
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="wrought-iron-sheet", amount=6},
            {type="item", name="lead-sheet", amount=6},
        },
        results = {
            {type="item", name="steam-crusher", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
        enabled = false,
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
local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "formaldehyde",
        icons = du.icons("formaldehyde"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="methane", amount=20},
            {type="item", name="iron-oxide", amount=1},
        },
        results = {
            {type="fluid", name="formaldehyde", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "synthetic-resin",
        icons = du.icons("synthetic-resin"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="formaldehyde", amount=6},
            {type="item", name="urea", amount=1},
        },
        results = {
            {type="item", name="synthetic-resin", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "fiberboard",
        icons = du.icons("fiberboard"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="treated-wood", amount=1},
            {type="item", name="cellulose", amount=1},
            {type="item", name="synthetic-resin", amount=1},
        },
        results = {
            {type="item", name="fiberboard", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "seaweed-1",
        icons = du.icons("seaweed"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=20},
        },
        results = {
            {type="item", name="seaweed", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "sapling-1",
        icons = du.icons("sapling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="planter-box", amount=2},
            {type="item", name="soil", amount=6},
            {type="item", name="sap", amount=3},
        },
        results = {
            {type="item", name="sapling", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "tree-growing-1",
        icons = du.icons("tree-growing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 200,
        ingredients = {
            {type="item", name="sapling", amount=20},
            {type="fluid", name="water", amount=600},
        },
        results = {
            {type="item", name="log", amount=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "forestry",
        icons = du.icons("forestry"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="treated-wood", amount=20},
            {type="item", name="soil", amount=20},
            {type="item", name="wrought-iron-sheet", amount=40},
            {type="item", name="steam-inserter", amount=20},
            {type="item", name="stone-brick", amount=50},
        },
        results = {
            {type="item", name="forestry", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "soil-extractor",
        icons = du.icons("soil-extractor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="fluid-mining-drill", amount=1},
            {type="item", name="treated-wood", amount=10},
            {type="item", name="pipe", amount=10},
            {type="item", name="screws", amount=6},
        },
        results = {
            {type="item", name="soil-extractor", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fluid-mining-drill",
        icons = du.icons("fluid-mining-drill"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-brick", amount=10},
            {type="item", name="steam-engine", amount=2},
            {type="item", name="burner-mining-drill", amount=3},
        },
        results = {
            {type="item", name="fluid-mining-drill", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "extracting", ---@diagnostic disable-line
        name = "soil-2",
        icons = du.icons("soil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=3},
        },
        results = {
            {type="item", name="soil", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "extracting", ---@diagnostic disable-line
        name = "clay-2",
        icons = du.icons("clay"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
        },
        results = {
            {type="item", name="clay", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "crafting", ---@diagnostic disable-line
        name = "log-cutting",
        icons = du.icons{mod="base",name="wood"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="log", amount=1},
        },
        results = {
            {type="item", name="wood", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "sap-extraction",
        icons = du.icons("sap"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="log", amount=1},
        },
        results = {
            {type="item", name="sap", amount=1, probability=0.5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "burner-chemical-plant",
        icons = du.icons("burner-chemical-plant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="glass", amount=16},
            {type="item", name="small-tank", amount=4},
            {type="item", name="treated-wood", amount=10},
            {type="item", name="wrought-iron-rod", amount=6},
        },
        results = {
            {type="item", name="burner-chemical-plant", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "smart-farm",
        icons = du.icons("seaweed"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="glass", amount=16},
            {type="item", name="screws", amount=5},
            {type="item", name="steam-engine", amount=1},
            {type="item", name="stone-brick", amount=10},
        },
        results = {
            {type="item", name="stone-brick", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "kraft-process",
        icons = du.icons("cellulose"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="wood", amount=1},
            {type="fluid", name="steam", amount=10},
            {type="fluid", name="green-liquor", amount=2},
        },
        results = {
            {type="item", name="cellulose", amount=2},
            {type="fluid", name="black-liquor", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "black-liquor-regeneration",
        icons = du.icons("green-liquor").add_corner("black-liquor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="black-liquor", amount=4},
            {type="fluid", name="water", amount=30},
        },
        results = {
            {type="fluid", name="green-liquor", amount=2},
            {type="fluid", name="tall-oil", amount=1},
            {type="fluid", name="steam", amount=30, temperature=165},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "green-liquor",
        icons = du.icons("green-liquor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sodium-hydroxide", amount=2},
            {type="item", name="sodium-sulfate", amount=1},
            {type="fluid", name="water", amount=30},
        },
        results = {
            {type="fluid", name="green-liquor", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sodium-carbonate-1",
        icons = du.icons("sodium-carbonate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="brine", amount=10},
            {type="fluid", name="carbon-dioxide", amount=20},
            {type="item", name="limestone", amount=3},
        },
        results = {
            {type="item", name="sodium-carbonate", amount=3},
            {type="item", name="calcium-chloride", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "dried-seaweed",
        icons = du.icons("seaweed"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="item", name="seaweed", amount=3},
            {type="item", name="calcium-chloride", amount=1},
        },
        results = {
            {type="item", name="dried-seaweed", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "sodium-carbonate-from-ash",
        icons = du.icons("sodium-carbonate").add_corner("kelp-ash"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="kelp-ash", amount=3},
        },
        results = {
            {type="item", name="sodium-carbonate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "caustic-solution-1",
        icons = du.icons("caustic-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sodium-carbonate", amount=2},
            {type="fluid", name="slaked-lime", amount=10},
        },
        results = {
            {type="fluid", name="caustic-solution", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "caustic-solution-boiling-1",
        icons = du.icons("caustic-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="caustic-solution", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=10, temperature=165},
            {type="item", name="sodium-hydroxide", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "lime",
        icons = du.icons("lime"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="limestone", amount=3},
        },
        results = {
            {type="item", name="lime", amount=2},
            {type="fluid", name="carbon-dioxide", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "slaked-lime",
        icons = du.icons("slaked-lime"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="lime", amount=2},
            {type="fluid", name="water", amount=20},
        },
        results = {
            {type="fluid", name="slaked-lime", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "agar",
        icons = du.icons("agar"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="steam", amount=12},
            {type="item", name="seaweed", amount=2},
        },
        results = {
            {type="fluid", name="brine", amount=12},
            {type="item", name="agar", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "syngas-redox",
        icons = du.icons("hydrogen").add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="syngas", amount=60},
            {type="item", name="iron-oxide", amount=2},
        },
        results = {
            {type="fluid", name="carbon-dioxide", amount=30},
            {type="fluid", name="hydrogen", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "petri-dish-1",
        icons = du.icons("petri-dish"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="molten-glass", amount=12},
            {type="fluid", name="methanol", amount=6},
        },
        results = {
            {type="item", name="petri-dish", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "agar-dish-1",
        icons = du.icons("agar-dish"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="item", name="petri-dish", amount=1},
            {type="item", name="agar", amount=1},
        },
        results = {
            {type="item", name="agar-dish", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "bioreacting", ---@diagnostic disable-line
        name = "synthesis-methanogenesis",
        icons = du.icons("methane").add_corner("hydrogen").add_corner{name="bacterium", corner=du.right_bottom, scale=0.5},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="hydrogen", amount=12},
            {type="fluid", name="carbon-dioxide", amount=12},
            {type="item", name="cultivated-methanobacteria", amount=2},
        },
        results = {
            {type="item", name="petri-dish", amount=2},
            {type="fluid", name="methane", amount=12},
            {type="fluid", name="organic-wastewater", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "bioreacting", ---@diagnostic disable-line
        name = "synthesis-methanobacteria",
        icons = du.icons("cultivated-methanobacteria").add_corner("dna"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="methane", amount=20},
            {type="fluid", name="hydrogen", amount=12},
            {type="item", name="agar-dish", amount=1},
            {type="item", name="soil", amount=10},
            {type="item", name="log", amount=5},
        },
        results = {
            {type="item", name="cultivated-methanobacteria", amount=1, probability=0.1},
            {type="item", name="petri-dish", amount=1, probability=0.9},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "bioreacting", ---@diagnostic disable-line
        name = "methanobacteria-1",
        icons = du.icons("cultivated-methanobacteria"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="hydrogen", amount=12},
            {type="item", name="soil", amount=10},
            {type="item", name="cultivated-methanobacteria", amount=1},
            {type="item", name="agar-dish", amount=1},
        },
        results = {
            {type="item", name="cultivated-methanobacteria", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "solder-1",
        icons = du.icons("solder"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="lead-ingot", amount=3},
            {type="item", name="tin-ingot", amount=2},
        },
        results = {
            {type="item", name="solder", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "solder-2",
        icons = du.icons("solder").add_corner("tall-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="lead-ingot", amount=3},
            {type="item", name="tin-ingot", amount=2},
            {type="fluid", name="tall-oil", amount=6},
        },
        results = {
            {type="item", name="solder", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "seawater-boiling",
        icons = du.icons{mod="base", name="fluid/steam"}.add_corner("seawater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="seawater", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="brine", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "saline-water-boiling",
        icons = du.icons{mod="base", name="fluid/steam"}.add_corner("saline-water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="saline-water", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="mineralized-water", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "brine-boiling",
        icons = du.icons{mod="base", name="fluid/steam"}.add_corner("brine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="brine", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="item", name="brine-salt", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "mineralized-water-boiling",
        icons = du.icons{mod="base", name="fluid/steam"}.add_corner("mineralized-water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="item", name="stone", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "brine-salt-separation-1",
        icons = du.icons("brine-salt"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="brine-salt", amount=1},    
        },
        results = {
            {type="item", name="salt", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "brine-salt-separation-2",
        icons = du.icons("brine-salt"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="brine-salt", amount=10},
        },
        results = {
            {type="item", name="salt", amount=9},
            {type="item", name="sodium-sulfate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "raw-silica-1",
        icons = du.icons("raw-silica"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="silica-sand", amount=3},
            {type="fluid", name="water", amount=6},
        },
        results = {
            {type="item", name="sand", amount=2},
            {type="item", name="raw-silica", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silica-1",
        icons = du.icons("silica"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="raw-silica", amount=1},
        },
        results = {
            {type="item", name="silica", amount=1},
            {type="fluid", name="steam", temperature=165, amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "crushed-aluminum-ore",
        icons = du.icons("crushed-aluminum-ore"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="aluminum-ore", amount=1},
        },
        results = {
            {type="item", name="crushed-aluminum-ore", amount=1},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "aluminum-hydroxide-1",
        icons = du.icons("alumina"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="crushed-aluminum-ore", amount=1},
            {type="fluid", name="caustic-solution", amount=1},
        },
        results = {
            {type="item", name="aluminum-hydroxide", amount=1},
            {type="fluid", name="wastewater", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "alumina-1",
        icons = du.icons("alumina"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="aluminum-hydroxide", amount=1},
        },
        results = {
            {type="item", name="alumina", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-ingot-1",
        icons = du.icons("aluminum-ingot"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="alumina", amount=8},
            {type="item", name="coke", amount=3},
            {type="fluid", name="syngas", amount=10},
        },
        results ={
            {type="fluid", name="carbon-monoxide", amount=5},
            {type="item", name="aluminum-ingot", amount=6},
            {type="item", name="aluminum-carbide", amount=8},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-ingot-2",
        icons = du.icons("aluminum-ingot").add_corner("silica"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="alumina", amount=8},
            {type="item", name="coke", amount=3},
            {type="item", name="silica", amount=3},
        },
        results ={
            {type="fluid", name="carbon-monoxide", amount=5},
            {type="item", name="aluminum-ingot", amount=3},
            {type="item", name="aluminum-carbide", amount=18},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-carbide-reprocessing-1",
        icons = du.icons("aluminum-carbide"),
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "raw-material",
        energy_required = 5,
        order = "d",
        main_product = "",
        ingredients = {
            {type="item", name="aluminum-carbide", amount=6},
            {type="fluid", name="water", amount=60},
        },
        results ={
            {type="item", name="aluminum-hydroxide", amount=10},
            {type="fluid", name="methane", amount=30},
            {type="fluid", name="wastewater", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "nickel-ingot-1",
        icons = du.icons("nickel-ingot"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="nickel-ore", amount=8},
        },
        results ={
            {type="item", name="nickel-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "steel-ingot-1",
        icons = du.icons("steel-ingot"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="iron-ingot", amount=3},
            {type="item", name="coke", amount=1},
            {type="item", name="lime", amount=3},
        },
        results ={
            {type="item", name="steel-ingot", amount=1},
            {type="fluid", name="carbon-dioxide", amount=40},
        }
    }
})