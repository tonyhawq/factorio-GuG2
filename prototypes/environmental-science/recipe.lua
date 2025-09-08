local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-iron-ore",
        icons = du.icons("crushed-iron-ore"),
        enabled = false,
        category = "crushing",
        energy_required = 2,
        main_product = "crushed-iron-ore",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ore", amount=1},
        },
        results ={
            {type="item", name="crushed-iron-ore", amount=2},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-copper-ore",
        icons = du.icons("crushed-copper-ore"),
        enabled = false,
        category = "crushing",
        energy_required = 2,
        main_product = "crushed-copper-ore",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="copper-ore", amount=1},
        },
        results ={
            {type="item", name="crushed-copper-ore", amount=2},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-tin-ore",
        icons = du.icons("crushed-tin-ore"),
        enabled = false,
        category = "crushing",
        energy_required = 2,
        main_product = "crushed-tin-ore",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="tin-ore", amount=1},
        },
        results ={
            {type="item", name="crushed-tin-ore", amount=2},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-lead-ore",
        icons = du.icons("crushed-lead-ore"),
        enabled = false,
        category = "crushing",
        energy_required = 2,
        main_product = "crushed-lead-ore",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="lead-ore", amount=1},
        },
        results ={
            {type="item", name="crushed-lead-ore", amount=2},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "smelting", ---@diagnostic disable-line
        name = "bronze-ingot-1",
        icons = du.icons("bronze-ingot"),
        subgroup = "bronze-smelting",
        order = "a",
        main_product = "",
        energy_required = 2,
        allow_decomposition = false,
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
        subgroup = "bronze-ingot-processing",
        order = du.order.ingot("plate", 1),
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
        category = "smelting", ---@diagnostic disable-line
        name = "rivets-1",
        icons = du.icons("rivets"),
        subgroup = "fasteners",
        order = "a[rivets]-a",
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
        category = "crafting", ---@diagnostic disable-line
        name = "rivets-2",
        icons = du.icons("rivets"),
        subgroup = "fasteners",
        order = "a[rivets]-b",
        main_product = "",
        energy_required = 0.5,
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
        subgroup = "iron-smelting",
        order = "a",
        main_product = "",
        energy_required = 4,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ore", amount=8},
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
        category = "smelting", ---@diagnostic disable-line
        name = "iron-ingot-2",
        icons = du.icons("iron-ingot"):add_corner("iron-oxide"),
        subgroup = "iron-smelting",
        order = "b",
        main_product = "",
        energy_required = 4,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-oxide", amount=4},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="iron-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "iron-ingot-3",
        icons = du.icons("iron-ingot"):add_corner("crushed-iron-ore"),
        subgroup = "iron-smelting",
        order = "c",
        main_product = "",
        energy_required = 4,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="crushed-iron-ore", amount=12},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="iron-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "iron-plate-1",
        icons = du.icons("base.iron-plate"),
        subgroup = "iron-ingot-processing",
        order = "a[plate]-a",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=1},
        },
        results = {
            {type="item", name="iron-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "machine-chassis",
        icons = du.icons("machine-chassis"),
        energy_required = 2,
        ingredients = {
            {type="item", name="rivets", amount=12},
            {type="item", name="iron-sheet", amount=4},
            {type="item", name="screws", amount=6},
            {type="item", name="treated-wood", amount=2},
            {type="item", name="stone-brick", amount=2},
        },
        results = {
            {type="item", name="machine-chassis", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "hardened-machine-chassis",
        icons = du.icons("hardened-machine-chassis"),
        energy_required = 2,
        ingredients = {
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="aluminum-plate", amount=10},
            {type="item", name="plastic-bar", amount=6},
            {type="item", name="steel-beam", amount=6},
            {type="item", name="concrete", amount=5},
        },
        results = {
            {type="item", name="hardened-machine-chassis", amount=1},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="rivets", amount=6},
            {type="item", name="iron-sheet", amount=3},
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
        name = "outfall",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="offshore-pump", amount=1},
            {type="item", name="pipe-to-ground", amount=2},
        },
        results = {
            {type="item", name="outfall", amount=1},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="rivets", amount=4},
            {type="item", name="lead-plate", amount=1},
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
        energy_required = 0.5,
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
        icons = du.icons("evaporator"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="small-tank", amount=1},
            {type="item", name="pipe", amount=6},
            {type="item", name="glass", amount=4},
        },
        results = {
            {type="item", name="evaporator", amount=1},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="small-tank", amount=3}, -- engine tanks
            {type="item", name="bronze-plate", amount=6}, -- bushings
            {type="item", name="iron-rod", amount=6},
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
        name = "rail",
        icons = du.icons{mod="base", name="rail"},
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-beam", amount=1},
            {type="item", name="stone", amount=1},
            {type="item", name="treated-wood", amount=1},
            {type="item", name="solder", amount=1},
        },
        results = {
            {type="item", name="rail", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "rail-signal",
        icons = du.icons{mod="base", name="rail-signal"},
        energy_required = 2,
        ingredients = {
            {type="item", name="aluminum-plate", amount=5},
            {type="item", name="small-lamp", amount=3},
            {type="item", name="decider-combinator", amount=1},
        },
        results = {
            {type="item", name="rail-signal", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "rail-chain-signal",
        icons = du.icons{mod="base", name="rail-chain-signal"},
        energy_required = 2,
        ingredients = {
            {type="item", name="rail-signal", amount=1},
            {type="item", name="arithmetic-combinator", amount=1},
        },
        results = {
            {type="item", name="rail-chain-signal", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "cargo-wagon",
        icons = du.icons{mod="base", name="cargo-wagon"},
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-beam", amount=30},
            {type="item", name="aluminum-plate", amount=16},
            {type="item", name="screws", amount=12},
            {type="item", name="pipe", amount=6},
            {type="fluid", name="lubricant", amount=6},
        },
        results = {
            {type="item", name="cargo-wagon", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "car",
        icons = du.icons{mod="base", name="car"},
        energy_required = 2,
        ingredients = {
            {type="item", name="cargo-wagon", amount=1},
            {type="item", name="engine-unit", amount=4},
            {type="item", name="plastic-bar", amount=5},
            {type="item", name="electronic-circuit", amount=5},
            {type="item", name="treated-wood", amount=20},
        },
        results = {
            {type="item", name="car", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "locomotive",
        icons = du.icons{mod="base", name="locomotive"},
        energy_required = 2,
        ingredients = {
            {type="item", name="cargo-wagon", amount=1},
            {type="item", name="engine-unit", amount=16},
            {type="item", name="small-electric-motor", amount=24},
            {type="item", name="electronic-circuit", amount=20},
            {type="item", name="battery", amount=20},
        },
        results = {
            {type="item", name="locomotive", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "train-stop",
        icons = du.icons{mod="base", name="train-stop"},
        energy_required = 2,
        ingredients = {
            {type="item", name="rail-signal", amount=1},
            {type="item", name="electronic-circuit", amount=5},
            {type="item", name="steel-beam", amount=10},
        },
        results = {
            {type="item", name="train-stop", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "pumpjack",
        icons = du.icons{mod="base", name="pumpjack"},
        energy_required = 2,
        ingredients = {
            {type="item", name="electric-mining-drill", amount=1},
            {type="item", name="engine-unit", amount=3},
            {type="item", name="pipe", amount=20},
            {type="item", name="electronic-circuit", amount=3},
        },
        results = {
            {type="item", name="pumpjack", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "iron-oxide-1",
        icons = du.icons("iron-oxide"),
        energy_required = 8,
        ingredients = {
            {type="item", name="iron-ingot", amount=1},
            {type="fluid", name="oxygen", amount=40},
        },
        results = {
            {type="item", name="iron-oxide", amount=4},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="steam-engine", amount=1},
            {type="item", name="iron-rod", amount=3},
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
        name = "fabricator-1",
        icons = du.alias("fabricator-1"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="assembling-machine-1", amount=1},
            {type="item", name="long-handed-inserter", amount=3},
            {type="item", name="machine-chassis", amount=2},
        },
        results = {
            {type="item", name="fabricator-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "counterflow-heat-exchanger",
        icons = du.alias("counterflow-heat-exchanger"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="aluminum-plate", amount=10},
            {type="item", name="copper-plate", amount=10},
            {type="item", name="pipe", amount=20},
            {type="item", name="steel-beam", amount=12},
            {type="item", name="screws", amount=8},
        },
        results = {
            {type="item", name="counterflow-heat-exchanger", amount=1},
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
-- rod, plate, sheet, beam, cable, gear
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-rod-1",
        icons = du.icons("steel-rod"),
        subgroup = "steel-ingot-processing",
        order = du.order.ingot("rod", 1),
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
        subgroup = "steel-ingot-processing",
        order = du.order.ingot("plate", 1),
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
        subgroup = "steel-ingot-processing",
        order = du.order.ingot("beam", 1),
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
        subgroup = "steel-ingot-processing",
        order = du.order.ingot("cable", 1),
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
        category = "advanced-crafting", ---@diagnostic disable-line
        name = "iron-gear",
        icons = du.icons{mod="base", name="iron-gear-wheel"},
        subgroup = "iron-ingot-processing",
        order = du.order.ingot("gear", 1),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="iron-rod", amount=1},
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
        subgroup = "wood-processing",
        order = "c[treated-wood]-1",
        main_product = "",
        energy_required = 6,
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
        subgroup = "circuits",
        order = "a[analog]-1",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="screws", amount=12},
            {type="item", name="treated-wood", amount=8},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="steam-engine", amount=1},
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="analog-circuit", amount=6},
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
        category = "crushing", ---@diagnostic disable-line
        name = "sandstone-crushing",
        icons = du.icons("sandstone"):add_corner("crushing"),
        subgroup = "crushing",
        order = "a[stones]-a",
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
        category = "crushing", ---@diagnostic disable-line
        name = "limestone-crushing",
        icons = du.icons("limestone"):add_corner("crushing"),
        subgroup = "crushing",
        order = "a[stones]-b",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="limestone", amount=4},
        },
        results = {
            {type="item", name="gravel", amount=3},
            {type="item", name="sand", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "gravel-crushing",
        icons = du.icons("gravel"):add_corner("crushing"),
        subgroup = "crushing",
        order = "a[stones]-d",
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
        category = "crushing", ---@diagnostic disable-line
        name = "stone-crushing",
        icons = du.icons{mod="base",name="stone"}:add_corner("crushing"),
        subgroup = "crushing",
        order = "a[stones]-c",
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
        icons = du.icons("glass"):add_corner("raw-quartz"),
        subgroup = "glassworking",
        order = "a[molten]-a",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="raw-quartz", amount=8},
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
        icons = du.icons("glass"):add_corner("crushed-quartz"),
        subgroup = "glassworking",
        order = "a[molten]-b",
        main_product = "",
        energy_required = 1.5,
        ingredients = {
            {type="item", name="crushed-quartz", amount=8},
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
        category = "crushing", ---@diagnostic disable-line
        name = "crushed-quartz-1",
        icons = du.icons("crushed-quartz"):add_corner("crushing"),
        subgroup = "crushing",
        order = "b[resources]-a[quartz]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="raw-quartz", amount=1},
        },
        results = {
            {type="item", name="crushed-quartz", amount=1},
            {type="item", name="sand", probability=0.5,amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "pump",
        icons = du.icons("base.pump"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="bronze-plate", amount=4},
            {type="item", name="aluminum-plate", amount=4},
            {type="item", name="small-electric-motor", amount=2},
            {type="item", name="small-tank", amount=1},
        },
        results ={
            {type="item", name="pump", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "evaporating", ---@diagnostic disable-line
        name = "silica-sand-crushed-quartz",
        icons = du.icons("silica-sand"):add_corner("crushed-quartz"),
        subgroup = "silicon-processing",
        order = "a[silica-sand]-b",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="crushed-quartz", amount=1},
            {type="fluid", name="water", amount=3},
        },
        results = {
            {type="item", name="silica-sand", amount=1},
            {type="item", name="stone", probability=0.5,amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "sand-upgrading",
        icons = du.icons("silica-sand"):add_corner("sand"),
        subgroup = "silicon-processing",
        order = "a[silica-sand]-a",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sand", amount=1},
            {type="item", name="crushed-quartz", amount=1},
        },
        results = {
            {type="item", name="silica-sand", probability=0.5, amount=1},
            {type="item", name="sand", probability=0.5, amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "sand-void",
        icons = du.icons("sand"):add_corner("base.fluid/water"),
        subgroup = "water-processing",
        order = "a",
        main_product = "",
        energy_required = 0.1,
        ingredients = {
            {type="item", name="sand", amount=1},
            {type="fluid", name="water", amount=6, fluidbox_index=1},
        },
        results = {
            {type="fluid", name="seawater", amount=7},
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
        subgroup = "glassworking",
        order = "z[products]-a-1",
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
        category = "machining", ---@diagnostic disable-line
        name = "screws",
        icons = du.icons("screws"),
        subgroup = "fasteners",
        order = "b[screws]-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-rod", amount=1},
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
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-furnace", amount=12},
            {type="item", name="rivets", amount=12},
            {type="item", name="lead-plate", amount=12},
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
        name = "mechanical-science-pack-1",
        icons = du.icons("mechanical-science-pack"),
        subgroup = "science-pack",
        order = "2-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="glass", amount=1},
            {type="item", name="splitter", amount=2},
            {type="item", name="steam-inserter", amount=2},
            {type="item", name="stone-brick", amount=1},
        },
        results = {
            {type="item", name="mechanical-science-pack", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "electromagnetic-science-pack-1",
        icons = du.icons("electromagnetic-science-pack"),
        subgroup = "raw-material",
        order = "3-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="battery", amount=1},
            {type="item", name="engine-unit", amount=3},
            {type="item", name="arithmetic-combinator", amount=2},
            {type="item", name="small-electric-motor", amount=1},
            {type="item", name="plastic-bar", amount=2},
        },
        results = {
            {type="item", name="electromagnetic-science-pack", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "lab-2",
        icons = du.icons{mod="base",name="lab"},
        main_product = "lab",
        energy_required = 2,
        ingredients = {
            {type="item", name="glass", amount=16},
            {type="item", name="hardened-machine-chassis", amount=10},
            {type="item", name="electronic-circuit", amount=6},
            {type="item", name="stone-brick", amount=15},
        },
        results = {
            {type="item", name="lab", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "formaldehyde-1",
        icons = du.icons("formaldehyde"),
        subgroup = "basic-chemistry",
        order = "",
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
        category = "blending", ---@diagnostic disable-line
        name = "urea-ammonia",
        icons = du.icons("urea"):add_corner("ammonia"),
        subgroup = "nitrogen-chemistry",
        order = "a[urea]-c",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="item", name="urea", amount=1},
            {type="fluid", name="ammonia", amount=8},
            {type="fluid", name="500c", amount=8},
        },
        results = {
            {type="item", name="urea", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "urea-ureic-feces",
        icons = du.icons("urea"):add_corner("ureic-feces"),
        subgroup = "nitrogen-chemistry",
        order = "a[urea]-b",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="ureic-feces", amount=3},
            {type="item", name="agar-dish", amount=1},
        },
        results = {
            {type="item", name="urea", amount=1},
            {type="item", name="petri-dish", amount=1},
            {type="fluid", name="organic-wastewater", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "urea-organic-wastewater",
        icons = du.icons("urea"):add_corner("organic-wastewater"),
        subgroup = "nitrogen-chemistry",
        order = "a[urea]-a",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="organic-wastewater", amount=12, fluidbox_index=1},
            {type="item", name="glass", amount=1},
            {type="item", name="coal", amount=1},
        },
        results = {
            {type="item", name="urea", amount=1},
            {type="fluid", name="wastewater", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "synthetic-resin-1",
        icons = du.icons("synthetic-resin"),
        subgroup = "polymers",
        order = "a[resin]-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="formaldehyde", amount=6},
            {type="item", name="urea", amount=1},
        },
        results = {
            {type="item", name="synthetic-resin", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fiberboard",
        icons = du.icons("fiberboard"),
        subgroup = "wood-processing",
        order = "d[fiberboard]-1",
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
        category = "algae-growing", ---@diagnostic disable-line
        name = "green-algae-1",
        icons = du.icons("green-algae"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=20},
        },
        results = {
            {type="item", name="green-algae", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "algae-growing", ---@diagnostic disable-line
        name = "green-algae-2",
        icons = du.icons("green-algae"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=20},
            {type="fluid", name="carbon-dioxide", amount=60},
        },
        results = {
            {type="item", name="green-algae", amount=10},
            {type="fluid", name="oxygen", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "agricultural-soil-1",
        icons = du.icons("agricultural-soil"),
        energy_required = 2,
        ingredients = {
            {type="item", name="rich-soil", amount=2},
            {type="item", name="stone", amount=1},
            {type="item", name="soil", amount=6},
        },
        results = {
            {type="item", name="agricultural-soil", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "stone-wall",
        icons = du.icons{mod="base", name="wall"},
        energy_required = 1,
        ingredients = {
            {type="item", name="stone-brick", amount=2},
        },
        results = {
            {type="item", name="stone-wall", amount=1},
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
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-brick", amount=10},
            {type="item", name="steam-engine", amount=2},
            {type="item", name="burner-mining-drill", amount=3},
            {type="item", name="analog-circuit", amount=3},
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
        category = "crafting", ---@diagnostic disable-line
        name = "electric-mining-drill",
        icons = du.icons{mod="base", name="electric-mining-drill"},
        energy_required = 2,
        ingredients = {
            {type="item", name="fluid-mining-drill", amount=1},
            {type="item", name="small-electric-motor", amount=6},
            {type="item", name="steel-beam", amount=6},
            {type="item", name="analog-circuit", amount=3},
        },
        results = {
            {type="item", name="electric-mining-drill", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "ammonia-from-gasoline",
        icons = du.icons("ammonia"):add_corner("gasoline"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="tar", amount=100},
            {type="fluid", name="gasoline", amount=5},
        },
        results = {
            {type="fluid", name="steam", temperature=165, amount=150},
            {type="fluid", name="ammonia", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "gasoline-1",
        icons = du.icons("gasoline"):add_corner("tar"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="middle-oil", amount=100},
            {type="fluid", name="green-oil", amount=50},
            {type="fluid", name="light-oil", amount=100},
        },
        results = {
            {type="fluid", name="gasoline", amount=150},
            {type="fluid", name="tar-pitch", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "gasoline-destructive-distillation",
        icons = du.icons{mod="base", name="fluid/heavy-oil"}:add_corner("gasoline"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gasoline", amount=20},
            {type="item", name="manganese-oxides", amount=1},
        },
        results = {
            {type="fluid", name="condensates", amount=2},
            {type="fluid", name="heavy-oil", amount=5},
            {type="fluid", name="middle-oil", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "refined-gas-1",
        icons = du.icons{name="refined-gas"}:add_corner("condensates"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="condensates", amount=20},
            {type="fluid", name="hydrogen", amount=200},
        },
        results = {
            {type="fluid", name="refined-gas", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "gasoline-pyrolysis",
        icons = du.icons("gasoline-pyrolysis"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gasoline", amount=100},
        },
        results = {
            {type="fluid", name="btx", amount=20},
            {type="fluid", name="hvgo", amount=30},
            {type="fluid", name="petroleum-gas", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "lubricant-1",
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        icons = du.icons{mod="base", name="fluid/lubricant"},
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-oil", amount=20},
            {type="fluid", name="btx", amount=12},
            {type="item", name="aluminum-hydroxide", amount=2},
        },
        results = {
            {type="fluid", name="lubricant", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "engine-unit",
        icons = du.icons{mod="base", name="engine-unit"},
        energy_required = 2,
        subgroup = "electronic-products",
        order = "b[motor]-b[combustion]-1",
        main_product = "",
        ingredients = {
            {type="item", name="pipe", amount=1},
            {type="item", name="iron-gear-wheel", amount=6},
            {type="item", name="steel-beam", amount=6},
            {type="item", name="screws", amount=6},
            {type="fluid", name="lubricant", amount=2},
        },
        results = {
            {type="item", name="engine-unit", amount=1},
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
        subgroup = "extracting",
        order = "a",
        main_product = "",
        energy_required = 0.25,
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
        subgroup = "extracting",
        order = "a",
        main_product = "",
        energy_required = 2,
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
        name = "log-cutting-1",
        icons = du.icons{mod="base",name="wood"},
        subgroup = "wood-processing",
        order = "a[wood]-a[log]-1",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="log", amount=1},
        },
        results = {
            {type="item", name="wood", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "advanced-crafting", ---@diagnostic disable-line
        name = "log-cutting-2",
        icons = du.icons{mod="base",name="wood"}:add_corner("saw"),
        subgroup = "wood-processing",
        order = "a[wood]-a[log]-1",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="log", amount=1},
            {type="item", name="saw", amount=1},
        },
        results = {
            {type="item", name="wood", amount=2},
            {type="item", name="saw", amount=1, probability=0.9},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "mortar-1",
        icons = du.icons("mortar"),
        enabled = false,
        category = "blending",
        subgroup = "masonry",
        order = "d[concrete]-b[mortar]-1",
        energy_required = 4,
        main_product = "",
        ingredients = {
            {type="item", name="gravel", amount=6},
            {type="item", name="sand", amount=12},
            {type="item", name="cement", amount=6},
            {type="fluid", name="water", amount=12, fluidbox_index=1},
        },
        results ={
            {type="item", name="mortar", amount=24},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "cement-1",
        icons = du.icons("cement"),
        enabled = false,
        category = "smelting",
        subgroup = "masonry",
        order = "d[concrete]-a[cement]-1",
        energy_required = 4,
        main_product = "",
        ingredients = {
            {type="item", name="silica", amount=10},
            {type="item", name="limestone", amount=24},
            {type="item", name="clay", amount=10},
        },
        results ={
            {type="item", name="cement", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "cement-2",
        icons = du.icons("cement"):add_corner("base.sulfur"),
        enabled = false,
        category = "smelting",
        subgroup = "masonry",
        order = "d[concrete]-a[cement]-2",
        energy_required = 4,
        main_product = "",
        ingredients = {
            {type="item", name="silica", amount=10},
            {type="item", name="limestone", amount=24},
            {type="item", name="clay", amount=10},
            {type="item", name="sulfur", amount=2},
        },
        results ={
            {type="item", name="cement", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "concrete-1",
        icons = du.icons{mod="base",name="concrete"},
        enabled = false,
        category = "crushing",
        subgroup = "masonry",
        order = "d[concrete]-c[concrete]-1",
        energy_required = 8,
        main_product = "",
        ingredients = {
            {type="item", name="refractory-brick", amount=2},
            {type="item", name="cement", amount=8},
            {type="item", name="sand", amount=24},
            {type="item", name="steel-beam", amount=4},
            {type="fluid", name="water", amount=32},
        },
        results ={
            {type="item", name="concrete", amount=16},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "composter",
        icons = du.icons("composter"),
        energy_required = 4,
        ingredients = {
            {type="item", name="blender", amount=1},
            {type="item", name="small-electric-motor", amount=2},
            {type="item", name="aluminum-plate", amount=12},
        },
        results = {
            {type="item", name="composter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "blender",
        icons = du.icons("blender"),
        energy_required = 4,
        ingredients = {
            {type="item", name="small-tank", amount=1},
            {type="item", name="iron-gear-wheel", amount=10},
            {type="item", name="iron-sheet", amount=6},
            {type="item", name="bronze-plate", amount=6},
        },
        results = {
            {type="item", name="blender", amount=1},
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
        energy_required = 4,
        ingredients = {
            {type="item", name="glass", amount=16},
            {type="item", name="blender", amount=1},
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="analog-circuit", amount=3},
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
        name = "simple-algae-plant",
        icons = du.icons("simple-algae-plant"),
        energy_required = 4,
        ingredients = {
            {type="item", name="glass", amount=16},
            {type="item", name="screws", amount=5},
            {type="item", name="analog-circuit", amount=3},
            {type="item", name="small-tank", amount=4},
            {type="item", name="stone-brick", amount=10},
        },
        results = {
            {type="item", name="simple-algae-plant", amount=1},
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
        subgroup = "wood-processing",
        order = "b[cellulose]-a[product]-1",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="wood", amount=1},
            {type="fluid", name="steam", amount=50},
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
        icons = du.icons("green-liquor"):add_corner("black-liquor"),
        subgroup = "wood-processing",
        order = "b[cellulose]-b[process]-2",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="black-liquor", amount=4},
            {type="fluid", name="water", amount=30},
        },
        results = {
            {type="fluid", name="green-liquor", amount=2},
            {type="fluid", name="tall-oil", amount=1},
            {type="fluid", name="steam", amount=60, temperature=165},
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
        subgroup = "wood-processing",
        order = "b[cellulose]-b[process]-1",
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
        category = "crafting", ---@diagnostic disable-line
        name = "sodium-carbonate-from-ash",
        icons = du.icons("sodium-carbonate"):add_corner("kelp-ash"),
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
        icons = du.icons{mod="base",name="fluid/steam"}:add_corner("caustic-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="caustic-solution", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=100, temperature=165},
            {type="item", name="sodium-hydroxide", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "caustic-solution-2",
        icons = du.icons("caustic-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=10},
            {type="item", name="sodium-hydroxide", amount=1},
        },
        results = {
            {type="fluid", name="caustic-solution", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "wastewater-boiling-1",
        icons = du.icons{mod="base",name="fluid/steam"}:add_corner("wastewater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 200/60,
        ingredients = {
            {type="fluid", name="wastewater", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="sludge", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "sludge-1",
        icons = du.icons("sludge"):add_corner{mod="base",name="stone"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone", amount=1},
            {type="fluid", name="sulfuric-acid", amount=3, fluidbox_index=1},
        },
        results = {
            {type="fluid", name="sludge", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "sludge-2",
        icons = du.icons("sludge"):add_corner("sand"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sand", amount=1},
            {type="fluid", name="sulfuric-acid", amount=3, fluidbox_index=1},
        },
        results = {
            {type="fluid", name="sludge", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sludge-void-1",
        icons = du.icons("sludge"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="sludge", amount=10},
            {type="fluid", name="water", amount=30},
        },
        results = {
            {type="fluid", name="wastewater", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "lime",
        icons = du.icons("lime"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="limestone", amount=3},
            {type="item", name="coke", amount=1},
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
            {type="item", name="lime", amount=10},
            {type="fluid", name="water", amount=20},
        },
        results = {
            {type="fluid", name="slaked-lime", amount=20},
            {type="fluid", name="acetylene", amount=10},
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
            {type="fluid", name="steam", amount=120},
            {type="item", name="green-algae", amount=2},
            {type="item", name="calcium-chloride", amount=1},
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
        icons = du.icons("hydrogen"):add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="syngas", amount=120},
            {type="item", name="iron-oxide", amount=2},
        },
        results = {
            {type="fluid", name="carbon-dioxide", amount=30},
            {type="fluid", name="hydrogen", amount=120},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "evaporating", ---@diagnostic disable-line
        name = "hydrogen-manganese",
        icons = du.icons("hydrogen"):add_corner("manganese-oxides"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="fluid", name="water", amount=50},
            {type="item", name="manganese-oxides", amount=2},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=30},
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
        category = "crafting", ---@diagnostic disable-line
        name = "agar-dish-1",
        icons = du.icons("agar-dish"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
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
        category = "chemistry", ---@diagnostic disable-line
        name = "synthesis-methanogenesis",
        icons = du.icons("methane"):add_corner("hydrogen"):add_corner{name="bacterium", corner=du.right_bottom, scale=0.5},
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
        category = "blending", ---@diagnostic disable-line
        name = "native-biofilm-1",
        icons = du.icons("native-biofilm"):add_corner("dna"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="seawater", amount=20},
            {type="item", name="agar-dish", amount=1},
            {type="item", name="soil", amount=10},
            {type="item", name="log", amount=5},
        },
        results = {
            {type="item", name="native-biofilm", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "native-biofilm-2",
        icons = du.icons("native-biofilm"):add_corner("dna"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="organic-wastewater", amount=20},
            {type="fluid", name="water", amount=60},
            {type="item", name="agar-dish", amount=30},
            {type="item", name="green-algae", amount=4},
        },
        results = {
            {type="fluid", name="wastewater", amount=80},
            {type="item", name="native-biofilm", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "compost-saltberries",
        icons = du.icons("compost"):add_corner("saltberries"),
        main_product = "compost",
        energy_required = 30,
        ingredients = {
            {type="item", name="saltberries", amount=90},
        },
        results = {
            {type="item", name="compost", amount=15},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "compost-thalorain",
        icons = du.icons("compost"):add_corner("thalorain-grain"),
        main_product = "compost",
        energy_required = 30,
        ingredients = {
            {type="item", name="thalorain-grain", amount=180},
        },
        results = {
            {type="item", name="compost", amount=15},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "compost-pale-gull-egg",
        icons = du.icons("compost"):add_corner("pale-gull-egg"),
        main_product = "compost",
        energy_required = 4,
        ingredients = {
            {type="item", name="compost", amount=2},
            {type="item", name="pale-gull-egg", amount=1},
        },
        results = {
            {type="item", name="compost", amount=32},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "compost-rich-soil",
        icons = du.icons("compost"):add_corner("rich-soil"),
        main_product = "compost",
        energy_required = 4,
        ingredients = {
            {type="item", name="compost", amount=16},
            {type="item", name="rich-soil", amount=1},
        },
        results = {
            {type="item", name="compost", amount=24},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "compost-meat",
        icons = du.icons("compost"):add_corner("meat"),
        main_product = "compost",
        energy_required = 4,
        ingredients = {
            {type="item", name="compost", amount=2},
            {type="item", name="meat", amount=1},
        },
        results = {
            {type="item", name="compost", amount=16},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "nauvisworm-hatching-1",
        icons = du.icons("nauvisworm"):add_corner("nauvisworm-egg-sack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 240,
        ingredients = {
            {type="item", name="nauvisworm-egg-sack", amount=5},
        },
        results = {
            {type="item", name="nauvisworm", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "nauvisworm-reproduction-1",
        icons = du.icons("nauvisworm"):add_corner("nauvisworm-egg-sack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 120,
        ingredients = {
            {type="item", name="nauvisworm", amount=20},
            {type="item", name="sweet-thalorain-grain", amount=12},
            {type="item", name="fiberboard", amount=2},
        },
        results = {
            {type="item", name="nauvisworm-egg-sack", amount=3},
            {type="item", name="nauvisworm", amount=10},
            {type="item", name="compost", amount=8},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "composting", ---@diagnostic disable-line
        name = "nauvisworm-reproduction-2",
        icons = du.icons("nauvisworm"):add_corner("nauvisworm-egg-sack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 60,
        ingredients = {
            {type="item", name="nauvisworm", amount=20},
            {type="item", name="worm-meal", amount=3},
            {type="item", name="fiberboard", amount=1},
        },
        results = {
            {type="item", name="nauvisworm-egg-sack", amount=5},
            {type="item", name="nauvisworm", amount=10},
            {type="item", name="rich-soil", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "worm-meal-thalorain",
        icons = du.icons("worm-meal"):add_corner("sweet-thalorain-grain"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sweet-thalorain-grain", amount=8},
            {type="item", name="cellulose", amount=2},
            {type="item", name="compost", amount=2},
        },
        results = {
            {type="item", name="worm-meal", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "worm-meal-saltberries",
        icons = du.icons("worm-meal"):add_corner("saltberries"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="water", amount=20, fluidbox_index=1},
            {type="item", name="saltberries", amount=4},
            {type="item", name="cellulose", amount=2},
            {type="item", name="compost", amount=2},
        },
        results = {
            {type="fluid", name="saline-water", amount=20},
            {type="item", name="worm-meal", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "nauvisworm-rendering-1",
        icons = du.icons("nauvisworm"):add_corner("meat"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="nauvisworm", amount=30},
            {type="item", name="saw", amount=1},
        },
        results = {
            {type="item", name="meat", amount=1},
            {type="item", name="saw", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "soil-from-rich-soil",
        icons = du.icons("soil"):add_corner("rich-soil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sand", amount=2},
            {type="item", name="rich-soil", amount=1},
        },
        results = {
            {type="item", name="soil", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "nitrogenous-fertilizer-feathers",
        icons = du.icons("nitrogenous-fertilizer"):add_corner("feathers"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="compost", amount=4},
            {type="item", name="feathers", amount=16},
            {type="fluid", name="steam", amount=120},
        },
        results = {
            {type="item", name="nitrogenous-fertilizer", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "bone-meal",
        icons = du.icons("bone-meal"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="bones", amount=1},
        },
        results = {
            {type="item", name="bone-meal", amount=1},
            -- should return fat?
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "saw-1",
        icons = du.icons("saw"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-plate", amount=3},
            {type="item", name="bronze-plate", amount=3},
        },
        results = {
            {type="item", name="saw", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "phosphoric-fertilizer-bones",
        icons = du.icons("phosphoric-fertilizer"):add_corner("bones"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="compost", amount=4},
            {type="item", name="bone-meal", amount=4},
            {type="fluid", name="steam", amount=120},
        },
        results = {
            {type="item", name="phosphoric-fertilizer", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "rich-soil-compost",
        icons = du.icons("rich-soil"):add_corner("compost"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="soil", amount=8},
            {type="item", name="urea", amount=1},
            {type="item", name="compost", amount=4},
            {type="fluid", name="water", amount=16, fluidbox_index = 1},
        },
        results = {
            {type="item", name="rich-soil", amount=8},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "rich-soil-organic-wastewater",
        icons = du.icons("rich-soil"):add_corner("organic-wastewater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="soil", amount=8},
            {type="item", name="compost", amount=4},
            {type="fluid", name="organic-wastewater", amount=4},
            {type="fluid", name="water", amount=8},
        },
        results = {
            {type="item", name="rich-soil", amount=8},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "pale-gull-rendering-1",
        icons = du.icons("meat"):add_corner("pale-gull"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="pale-gull", amount=1},
            {type="item", name="saw", amount=1},
        },
        results = {
            {type="item", name="meat", amount=1},
            {type="item", name="feathers", amount=6},
            {type="item", name="saw", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "synthesis-methanobacteria",
        icons = du.icons("cultivated-methanobacteria"):add_corner("dna"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="methane", amount=20},
            {type="fluid", name="hydrogen", amount=12},
            {type="item", name="native-biofilm", amount=1},
            {type="item", name="soil", amount=10},
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
        category = "chemistry", ---@diagnostic disable-line
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
        icons = du.icons("solder"):add_corner("tall-oil"),
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
        category = "evaporating", ---@diagnostic disable-line
        name = "water-1",
        icons = du.icons("evaporate"):add_corner{mod="base", name="fluid/water"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="fluid", name="steam", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=9},    
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "organic-wastewater-void",
        icons = du.icons("evaporate"):add_corner("organic-wastewater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="organic-wastewater", amount=100},
        },
        results = {}
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "water-void",
        icons = du.icons("evaporate"):add_corner{mod="base",name="fluid/water"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="water", amount=100},
        },
        results = {}
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrogen-chloride",
        icons = du.icons("hydrogen-chloride"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="chlorine", amount=10},
            {type="fluid", name="hydrogen", amount=10},
        },
        results = {
            {type="fluid", name="hydrogen-chloride", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrochloric-acid-1",
        icons = du.icons("hydrochloric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="hydrogen-chloride", amount=100},
            {type="fluid", name="water", amount=10},
        },
        results = {
            {type="fluid", name="hydrochloric-acid", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrochloric-acid-2",
        icons = du.icons("hydrochloric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="chlorine", amount=10},
            {type="fluid", name="hydrogen", amount=10},
            {type="fluid", name="water", amount=1},
        },
        results = {
            {type="fluid", name="hydrochloric-acid", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrochloric-acid-void",
        icons = du.icons("saline-water"):add_corner("hydrochloric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="hydrochloric-acid", amount=4},
            {type="fluid", name="caustic-solution", amount=1},
        },
        results = {
            {type="fluid", name="saline-water", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrochloric-acid",
        icons = du.icons("hydrochloric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="hydrogen-chloride", amount=100},
            {type="fluid", name="water", amount=100},
        },
        results = {
            {type="fluid", name="hydrochloric-acid", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "saline-water-electrolysis",
        icons = du.icons("saline-water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="saline-water", amount=1},
        },
        results = {
            {type="item", name="sodium-hydroxide", amount=1, probability=0.25},
            {type="fluid", name="chlorine", amount=10},
            {type="fluid", name="hydrogen", amount=10},
            {type="fluid", name="oxygen", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "water-electrolysis",
        icons = du.icons{mod="base",name="fluid/water"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="water", amount=1},
        },
        results = {
            {type="fluid", name="hydrogen", amount=10},
            {type="fluid", name="oxygen", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "seawater-void",
        icons = du.icons("evaporate"):add_corner("seawater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="seawater", amount=100},
        },
        results = {}
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "saline-water-void",
        icons = du.icons("evaporate"):add_corner("saline-water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="saline-water", amount=100},
        },
        results = {}
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "saline-water-from-calcium-chloride",
        icons = du.icons("saline-water"):add_corner("calcium-chloride"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="water", amount=10},
            {type="item", name="calcium-chloride", amount=1},
        },
        results = {
            {type="fluid", name="saline-water", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "brine-from-evaporate",
        icons = du.icons("brine"):add_corner("evaporate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="water", amount=30},
            {type="item", name="evaporite", amount=2},
        },
        results = {
            {type="fluid", name="brine", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "brine-void",
        icons = du.icons("evaporate"):add_corner("brine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="brine", amount=100},
        },
        results = {
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "evaporating", ---@diagnostic disable-line
        name = "brine-evaporating",
        icons = du.icons("evaporate"):add_corner("brine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="brine", amount=30},
        },
        results = {
            {type="item", name="brine-salt", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "ureic-feces-void",
        icons = du.icons("organic-wastewater"):add_corner("ureic-feces"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="water", amount=4, fluidbox_index=1},
            {type="item", name="ureic-feces", amount=1},
        },
        results = {
            {type="fluid", name="organic-wastewater", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "mineralized-water-1",
        icons = du.icons("mineralized-water"):add_corner("iron-oxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="water", amount=100, fluidbox_index=1},
            {type="item", name="iron-oxide", amount=10},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "mineralized-water-2",
        icons = du.icons("mineralized-water"):add_corner{mod="base",name="stone"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=10, fluidbox_index=1},
            {type="item", name="stone", amount=4},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "flue-gas-void-1",
        icons = du.icons("flue-gas"):add_corner("base.fluid/water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="flue-gas", amount=300},
            {type="fluid", name="water", amount=50},
        },
        results = {
            {type="fluid", name="wastewater", amount=50},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfuric-acid-flue-gas",
        icons = du.icons("sulfuric-acid"):add_corner("flue-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="fluid", name="flue-gas", amount=300},
            {type="fluid", name="water", amount=50},
            {type="item", name="manganese-oxides", amount=1},
        },
        results = {
            {type="fluid", name="sulfuric-acid", amount=50},
            {type="fluid", name="steam", temperature=165, amount=500},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "outfalling", ---@diagnostic disable-line
        name = "mineralized-water-void",
        icons = du.icons("evaporate"):add_corner("mineralized-water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=100},
        },
        results = {}
    }
})
local tube_boiler = data.raw["assembling-machine"]["tube-boiler"]
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "water-boiling",
        icons = du.icons{mod="base", name="fluid/steam"}:add_corner("base.fluid/water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = du.J(tube_boiler.energy_usage) * 60 / tube_boiler.energy_source.effectivity / (du.J(du.fluid("water").heat_capacity) * 10 * (100 - 15)),
        ingredients = {
            {type="fluid", name="water", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=100, temperature=165},
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
        icons = du.icons{mod="base", name="fluid/steam"}:add_corner("seawater"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = du.J(tube_boiler.energy_usage) * 60 / tube_boiler.energy_source.effectivity / (du.J(du.fluid("seawater").heat_capacity) * 10 * (100 - 15)),
        ingredients = {
            {type="fluid", name="seawater", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="saline-water", amount=2},
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
        icons = du.icons{mod="base", name="fluid/steam"}:add_corner("saline-water"),
        subgroup = "raw-material",
        order = "a[b]",
        main_product = "",
        energy_required = du.J(tube_boiler.energy_usage) * 60 / tube_boiler.energy_source.effectivity / (du.J(du.fluid("saline-water").heat_capacity) * 10 * (100 - 15)),
        ingredients = {
            {type="fluid", name="saline-water", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="brine", amount=2},
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
        icons = du.icons{mod="base", name="fluid/steam"}:add_corner("brine"),
        subgroup = "raw-material",
        order = "a[c]",
        main_product = "",
        energy_required = du.J(tube_boiler.energy_usage) * 60 / tube_boiler.energy_source.effectivity / (du.J(du.fluid("brine").heat_capacity) * 10 * (100 - 15)),
        ingredients = {
            {type="fluid", name="brine", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=80, temperature=165},
            {type="fluid", name="mineralized-water", amount=2},
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
        icons = du.icons{mod="base", name="fluid/steam"}:add_corner("mineralized-water"),
        subgroup = "raw-material",
        order = "a[d]",
        main_product = "",
        energy_required = du.J(tube_boiler.energy_usage) * 60 / tube_boiler.energy_source.effectivity / (du.J(du.fluid("mineralized-water").heat_capacity) * 10 * (100 - 15)),
        ingredients = {
            {type="fluid", name="mineralized-water", amount=10},
        },
        results = {
            {type="fluid", name="steam", amount=100, temperature=165},
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
        order = "a[e]-a",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="brine-salt", amount=1},    
        },
        results = {
            {type="item", name="salt", amount=1, probability=0.7},
            {type="item", name="manganese-oxides", amount=1, probability=0.4},
            {type="item", name="sodium-sulfate", amount=1, probability=0.1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "brine-salt-void-1",
        icons = du.icons("brine"):add_corner("brine-salt"),
        subgroup = "raw-material",
        order = "a[e]-b",
        main_product = "",
        energy_required = 0.25,
        ingredients = {
            {type="fluid", name="saline-water", amount=10, fluidbox_index=1},
            {type="item", name="sodium-sulfate", amount=3},
            {type="item", name="salt", amount=4},
        },
        results = {
            {type="fluid", name="brine", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "brine-salt-void-2",
        icons = du.icons("brine"):add_corner("brine-salt"),
        subgroup = "raw-material",
        order = "a[e]-c",
        main_product = "",
        energy_required = 0.25,
        ingredients = {
            {type="fluid", name="saline-water", amount=10, fluidbox_index=1},
            {type="item", name="manganese-oxides", amount=3},
            {type="item", name="salt", amount=4},
        },
        results = {
            {type="fluid", name="brine", amount=10},
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
            {type="fluid", name="steam", temperature=165, amount=30},
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
        subgroup = "aluminum-ore-processing",
        order = "a[crushing]-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="aluminum-ore", amount=4},
        },
        results = {
            {type="item", name="crushed-aluminum-ore", amount=3},
            {type="item", name="gravel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "aluminum-hydroxide-1",
        icons = du.icons("alumina"),
        subgroup = "aluminum-ore-processing",
        order = "b[hydroxide]-1",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="crushed-aluminum-ore", amount=1},
            {type="fluid", name="caustic-solution", amount=1, fluidbox_index=1},
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
        subgroup = "aluminum-ore-processing",
        order = "c[alumina]-1",
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
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "alumina-2",
        icons = du.icons("alumina"),
        subgroup = "aluminum-ore-processing",
        order = "c[alumina]-2",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="clay", amount=5},
            {type="item", name="kelp-ash", amount=1},
            {type="fluid", name="coal-gas", amount=5},
            {type="fluid", name="sulfuric-acid", amount=2},
        },
        results = {
            {type="item", name="alumina", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-plate-1",
        icons = du.icons("aluminum-plate"),
        enabled = false,
        category = "smithing",
        subgroup = "aluminum-ingot-processing",
        energy_required = 1,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="aluminum-ingot", amount=1},
        },
        results ={
            {type="item", name="aluminum-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-cable-1",
        icons = du.icons("aluminum-cable"),
        enabled = false,
        category = "crafting",
        subgroup = "aluminum-ingot-processing",
        energy_required = 1,
        order = "b",
        main_product = "",
        ingredients = {
            {type="item", name="aluminum-plate", amount=1},
        },
        results ={
            {type="item", name="aluminum-cable", amount=2},
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
        subgroup = "aluminum-smelting",
        energy_required = 20,
        order = "1",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="alumina", amount=8},
            {type="item", name="coke", amount=3},
            {type="fluid", name="syngas", amount=10},
        },
        results ={
            {type="item", name="aluminum-ingot", amount=1},
            {type="item", name="aluminum-carbide", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "aluminum-ingot-2",
        icons = du.icons("aluminum-ingot"):add_corner("silica"),
        enabled = false,
        category = "smelting",
        subgroup = "aluminum-smelting",
        energy_required = 24,
        order = "2",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="alumina", amount=12},
            {type="item", name="coke", amount=3},
            {type="item", name="silica", amount=3},
        },
        results ={
            {type="item", name="aluminum-ingot", amount=1},
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
        category = "chemistry",
        subgroup = "aluminum-ore-processing",
        energy_required = 5,
        order = "j[reprocessing]-1",
        main_product = "",
        ingredients = {
            {type="item", name="aluminum-carbide", amount=6},
            {type="fluid", name="water", amount=60},
        },
        results ={
            {type="item", name="aluminum-hydroxide", amount=2},
            {type="fluid", name="methane", amount=6},
            {type="fluid", name="wastewater", amount=20},
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
        allow_decomposition = false,
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
        subgroup = "steel-smelting",
        energy_required = 8,
        order = "a-1",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ingot", amount=3},
            {type="item", name="coke", amount=1},
            {type="item", name="lime", amount=3},
            {type="fluid", name="oxygen", amount=80},
        },
        results ={
            {type="item", name="steel-ingot", amount=1},
            {type="fluid", name="flue-gas", amount=40, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "steel-ingot-1-hot",
        icons = du.icons("steel-ingot"):add_corner("300c"),
        enabled = false,
        category = "blasting",
        subgroup = "steel-smelting",
        energy_required = 6,
        order = "a-1-hot",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ingot", amount=3},
            {type="item", name="coke", amount=1},
            {type="item", name="lime", amount=3},
            {type="fluid", name="oxygen", amount=40},
            {type="fluid", name="300c", amount=40},
        },
        results ={
            {type="item", name="steel-ingot", amount=1},
            {type="fluid", name="carbon-dioxide", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "steel-ingot-2",
        icons = du.icons("steel-ingot"):add_corner("manganese-oxides"),
        enabled = false,
        category = "blasting",
        subgroup = "steel-smelting",
        energy_required = 12,
        order = "b-1",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ingot", amount=12},
            {type="item", name="manganese-ingot", amount=1},
            {type="item", name="coke", amount=3},
            {type="item", name="lime", amount=6},
            {type="fluid", name="oxygen", amount=80},
        },
        results ={
            {type="item", name="steel-ingot", amount=6},
            {type="fluid", name="flue-gas", amount=40, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "steel-ingot-2-hot",
        icons = du.icons("steel-ingot"):add_corner("manganese-oxides"),
        enabled = false,
        category = "blasting",
        subgroup = "steel-smelting",
        energy_required = 8,
        order = "b-1-hot",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="iron-ingot", amount=12},
            {type="item", name="manganese-ingot", amount=1},
            {type="item", name="coke", amount=3},
            {type="item", name="lime", amount=6},
            {type="fluid", name="oxygen", amount=40},
            {type="fluid", name="300c", amount=40},
        },
        results ={
            {type="item", name="steel-ingot", amount=6},
            {type="fluid", name="carbon-dioxide", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-ingot-1",
        icons = du.icons("manganese-ingot"),
        enabled = false,
        category = "blasting",
        subgroup = "manganese-smelting",
        energy_required = 12,
        order = "a-1",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="item", name="manganese-oxides", amount=12},
            {type="item", name="coke", amount=3},
        },
        results ={
            {type="item", name="manganese-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "zinc-oxide-1",
        icons = du.icons("zinc-oxide"),
        enabled = false,
        category = "blasting",
        subgroup = "zinc-ore-processing",
        energy_required = 2,
        order = "a[oxide]-1",
        main_product = "",
        ingredients = {
            {type="item", name="zinc-ore", amount=3},
        },
        results ={
            {type="item", name="zinc-oxide", amount=1},
            {type="fluid", name="sulfur-dioxide", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "zinc-gas-1",
        icons = du.icons("zinc-gas"),
        enabled = false,
        category = "blasting",
        subgroup = "zinc-ore-processing",
        energy_required = 1,
        order = "b[gas]-1",
        main_product = "",
        ingredients = {
            {type="item", name="zinc-oxide", amount=3},
        },
        results ={
            {type="fluid", name="zinc-gas", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "zinc-ingot-1",
        icons = du.icons("zinc-ingot"),
        enabled = false,
        category = "smelting",
        subgroup = "zinc-smelting",
        energy_required = 0.5,
        order = "a-1",
        main_product = "",
        allow_decomposition = false,
        ingredients = {
            {type="fluid", name="zinc-gas", amount=24},
        },
        results ={
            {type="item", name="zinc-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "zinc-plate-1",
        icons = du.icons("zinc-plate"),
        enabled = false,
        category = "smelting",
        subgroup = "zinc-ingot-processing",
        energy_required = 3,
        order = du.order.ingot("plate", 1),
        main_product = "",
        ingredients = {
            {type="item", name="zinc-ingot", amount=1},
        },
        results ={
            {type="item", name="zinc-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "refractory-brick-1",
        icons = du.icons("refractory-brick"),
        enabled = false,
        category = "crafting",
        subgroup = "masonry",
        energy_required = 2,
        order = "c[refractory]-a[brick]-1",
        main_product = "",
        ingredients = {
            {type="item", name="alumina", amount=2},
            {type="item", name="silica", amount=2},
            {type="item", name="stone-brick", amount=1},
        },
        results ={
            {type="item", name="refractory-brick", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "blast-furnace",
        icons = du.icons("blast-furnace"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="small-tank", amount=1},
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="analog-circuit", amount=6},
            {type="item", name="refractory-brick", amount=20},
            {type="item", name="stone-furnace", amount=1},
        },
        results ={
            {type="item", name="blast-furnace", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "battery-1",
        icons = du.icons{mod="base", name="battery"},
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "electronic-products",
        energy_required = 4,
        order = "c[battery]-1",
        main_product = "",
        ingredients = {
            {type="item", name="zinc-plate", amount=3},
            {type="item", name="manganese-oxides", amount=3},
            {type="item", name="cellulose", amount=3},
            {type="item", name="coal-dust", amount=3},
            {type="fluid", name="coal-gas", amount=20},
        },
        results ={
            {type="item", name="battery", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "battery-2",
        icons = du.icons{mod="base", name="battery"},
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "electronic-products",
        energy_required = 4,
        order = "c[battery]-2",
        main_product = "",
        ingredients = {
            {type="item", name="zinc-plate", amount=3},
            {type="item", name="lead-plate", amount=3},
            {type="item", name="synthetic-resin", amount=3},
            {type="fluid", name="sulfuric-acid", amount=20},
        },
        results ={
            {type="item", name="battery", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "magnet-wire-1",
        icons = du.icons("magnet-wire"),
        enabled = false,
        category = "smelting",
        subgroup = "electronic-products",
        energy_required = 0.5,
        order = "a-1",
        main_product = "",
        ingredients = {
            {type="item", name="copper-cable", amount=3},
            {type="item", name="synthetic-resin", amount=1},
        },
        results ={
            {type="item", name="magnet-wire", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "flare-stack",
        icons = du.icons("flare-stack"),
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="steel-beam", amount=10},
            {type="item", name="rivets", amount=30},
            {type="item", name="refractory-brick", amount=20},
        },
        results ={
            {type="item", name="flare-stack", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "coarse-coal-1",
        icons = du.icons("coarse-coal"),
        enabled = false,
        category = "crushing",
        subgroup = "raw-material",
        energy_required = 3,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="raw-coal", amount=4},
        },
        results ={
            {type="item", name="coarse-coal", amount=2},
            {type="item", name="coal", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-coal-1",
        icons = du.icons("crushed-coal"),
        enabled = false,
        category = "crushing",
        subgroup = "raw-material",
        energy_required = 3,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="coarse-coal", amount=2},
        },
        results ={
            {type="item", name="crushed-coal", amount=4},
            {type="item", name="coal-dust", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "coal-2",
        icons = du.icons{mod="base",name="coal"},
        enabled = false,
        category = "crushing",
        subgroup = "raw-material",
        energy_required = 3,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="crushed-coal", amount=3},
        },
        results ={
            {type="item", name="coal", amount=1},
            {type="item", name="coal-dust", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "ferrite-1",
        icons = du.icons("ferrite"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 0.5,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="iron-oxide", amount=6},
            {type="item", name="manganese-oxides", amount=1},
        },
        results ={
            {type="item", name="ferrite", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "lv-capacitor-1",
        icons = du.icons("lv-capacitor"),
        enabled = false,
        category = "crafting",
        subgroup = "raw-material",
        energy_required = 0.5,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="clay", amount=2},
            {type="item", name="aluminum-plate", amount=1},
        },
        results ={
            {type="item", name="lv-capacitor", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "lv-resistor-1",
        icons = du.icons("lv-resistor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="coke", amount=1},
            {type="item", name="copper-cable", amount=1},
            {type="item", name="sap", amount=1},
        },
        results = {
            {type="item", name="lv-resistor", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "vacuum-tube-1",
        icons = du.icons("vacuum-tube"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="glass", amount=8},
            {type="item", name="synthetic-resin", amount=1},
            {type="item", name="aluminum-cable", amount=1},
        },
        results = {
            {type="item", name="vacuum-tube", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "electronic-circuit",
        icons = du.icons{mod="base",name="electronic-circuit"}:add_corner("vacuum-tube"),
        energy_required = 2,
        ingredients = {
            {type="item", name="vacuum-tube", amount=3},
            {type="item", name="lv-resistor", amount=2},
            {type="item", name="lv-capacitor", amount=6},
            {type="item", name="fiberboard", amount=3},
            {type="item", name="solder", amount=1},
            {type="item", name="copper-cable", amount=6},
        },
        results = {
            {type="item", name="electronic-circuit", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "electrolyzer",
        icons = du.icons("__Krastorio2Assets__/icons/entities/electrolysis-plant.png", true),
        energy_required = 2,
        ingredients = {
            {type="item", name="small-electric-pole", amount=12},
            {type="item", name="small-tank", amount=6},
            {type="item", name="steel-beam", amount=8},
            {type="item", name="stone-brick", amount=12},
        },
        results = {
            {type="item", name="electrolyzer", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "splitter",
        icons = du.icons{mod="base",name="splitter"},
        energy_required = 2,
        ingredients = {
            {type="item", name="analog-circuit", amount=2},
            {type="item", name="bronze-plate", amount=5},
            {type="item", name="iron-gear-wheel", amount=5},
            {type="item", name="underground-belt", amount=2},
        },
        results = {
            {type="item", name="splitter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "small-electric-motor-1",
        icons = du.icons("small-electric-motor"),
        enabled = false,
        category = "crafting",
        subgroup = "electronic-products",
        energy_required = 0.5,
        order = "b[motor]-a[electric]-1",
        main_product = "",
        ingredients = {
            {type="item", name="lv-capacitor", amount=2},
            {type="item", name="magnet-wire", amount=6},
            {type="item", name="ferrite", amount=1},
            {type="item", name="analog-circuit", amount=1},
            {type="item", name="aluminum-plate", amount=3},
        },
        results ={
            {type="item", name="small-electric-motor", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "small-electric-pole",
        icons = du.icons{mod="base",name="small-electric-pole"},
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="treated-wood", amount=2},
            {type="item", name="copper-cable", amount=6},
        },
        results ={
            {type="item", name="small-electric-pole", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "shaft",
        icons = du.icons("shaft"),
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="steel-beam", amount=2},
            {type="item", name="iron-gear-wheel", amount=3},
            {type="item", name="bronze-plate", amount=1},
        },
        results ={
            {type="item", name="shaft", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "small-electric-pole-2",
        icons = du.icons{mod="base",name="small-electric-pole"}:add_corner("aluminum-ingot"),
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="treated-wood", amount=2},
            {type="item", name="aluminum-cable", amount=6},
        },
        results ={
            {type="item", name="small-electric-pole", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "lv-generator",
        icons = du.icons("lv-generator"),
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="analog-circuit", amount=5},
            {type="item", name="steel-beam", amount=10},
            {type="item", name="iron-gear-wheel", amount=16},
            {type="item", name="small-electric-motor", amount=8},
        },
        results ={
            {type="item", name="lv-generator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "stationary-motor-1",
        icons = du.icons("stationary-motor"),
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="lv-generator", amount=1},
        },
        results ={
            {type="item", name="stationary-motor-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "inserter",
        icons = du.icons{mod="base", name="inserter"},
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="bronze-plate", amount=2},
            {type="item", name="small-electric-motor", amount=1},
        },
        results ={
            {type="item", name="inserter", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "long-handed-inserter",
        icons = du.icons{mod="base", name="long-handed-inserter"},
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="inserter", amount=1},
            {type="item", name="aluminum-plate", amount=4},
        },
        results ={
            {type="item", name="long-handed-inserter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "copper-sheet-1",
        icons = du.icons("copper-sheet"),
        subgroup = "copper-ingot-processing",
        order =  du.order.ingot("sheet", 1),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-plate", amount=4},
        },
        results = {
            {type="item", name="copper-sheet", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "crafting", ---@diagnostic disable-line
        name = "copper-cable-1",
        icons = du.icons{mod="base", name="copper-cable"},
        subgroup = "copper-ingot-processing",
        order =  du.order.ingot("cable", 1),
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="copper-ingot", amount=1},
        },
        results = {
            {type="item", name="copper-cable", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "iron-sheet-1",
        icons = du.icons("iron-sheet"),
        subgroup = "iron-ingot-processing",
        order =  du.order.ingot("sheet", 1),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-plate", amount=4},
        },
        results = {
            {type="item", name="iron-sheet", amount=3},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "iron-rod-1",
        icons = du.icons("base.iron-stick"),
        subgroup = "iron-ingot-processing",
        order =  du.order.ingot("rod", 1),
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=1},
        },
        results = {
            {type="item", name="iron-rod", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "bound-porcelain",
        icons = du.icons("bound-porcelain"),
        subgroup = "clay-products",
        order = "b",
        main_product = "",
        energy_required = 2,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="clay", amount=3},
            {type="fluid", name="tar", amount=16},
        },
        results = {
            {type="item", name="bound-porcelain", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "stone-brick-1",
        icons = du.icons("__base__/graphics/icons/stone-brick.png", 64, true),
        subgroup = "masonry",
        order = "b[stone]-1",
        main_product = "",
        energy_required = 2,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="stone", amount=5},
            {type="item", name="gravel", amount=10},
            {type="item", name="bound-porcelain", amount=2},
        },
        results = {
            {type="item", name="stone-brick", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "stone-brick-2",
        icons = du.icons("base.stone-brick"),
        subgroup = "masonry",
        order = "b[stone]-2",
        main_product = "",
        energy_required = 2,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="stone", amount=5},
            {type="item", name="gravel", amount=10},
            {type="item", name="asphalt", amount=2},
            {type="fluid", name="tar-pitch", amount=12},
        },
        results = {
            {type="item", name="stone-brick", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "stone-brick-crushing",
        icons = du.icons("__base__/graphics/icons/stone-brick.png", 64, true),
        subgroup = "masonry",
        order = "b[stone]-3",
        main_product = "",
        energy_required = 2,
        allow_decomposition = false,
        ingredients = {
            {type="item", name="stone-brick", amount=1},
        },
        results = {
            {type="item", name="stone", amount=2},
        }
    }
})
-- coal tar is industrially significant
-- coal gas is not
-- coal tar distills into 3 fractions
-- middle
-- light
-- green

-- creosote is produced through
--   green + light
-- or
--   middle oil
-- creosote is then used for wood treatment or can be converted to phenol
-- green -> anthracene
-- middle -> naphthalene
-- light oil -> BTX & fuel

-- fractions are
-- 25% green oil
-- 10% light oil
-- 20% middle oil
-- 40% tar pitch

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "raw-coal-to-coal",
        icons = du.icons("coal"),
        subgroup = "destructive-distillation",
        order = "a[raw-coal]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="raw-coal", amount=4},
        },
        results = {
            {type="item", name="coal", amount=1},
            {type="fluid", name="coal-gas", amount=6}, --(du.fuel_value("raw-coal") * 8 - du.fuel_value("coal") * 2) / du.fuel_value("coal-gas") * 0.6
            {type="fluid", name="tar", amount=10}, --(du.fuel_value("raw-coal") * 8 - du.fuel_value("coal") * 2) / du.fuel_value("tar") * 0.5
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coal-to-coke",
        icons = du.icons("coke"),
        subgroup = "destructive-distillation",
        order = "a[coal]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="coal", amount=4},
        },
        results = {
            {type="item", name="coke", amount=1},
            {type="fluid", name="coal-gas", amount=18},
            {type="fluid", name="tar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coke-gasification",
        icons = du.icons("coke"),
        subgroup = "destructive-distillation",
        order = "a[coke]",
        main_product = "",
        energy_required = 12,
        ingredients = {
            -- 1:1 conversion of coke fuel_value to gaseous fuel value
            -- 75% coal gas
            -- 25% tar
            {type="item", name="coke", amount=6},
        },
        results = {
            {type="fluid", name="coal-gas", amount=25}, --math.floor(du.fuel_value("coke")/du.fuel_value("coal-gas")*0.75)
            {type="fluid", name="tar", amount=10}, --math.floor(du.fuel_value("coke")/du.fuel_value("coal-gas")*0.25)
            {type="item", name="iron-oxide", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "tar-processing",
        icons = du.icons("tar"),
        subgroup = "tar-processing",
        order = "a[tar-processing]-1",
        main_product = "",
        energy_required = 5,
        ingredients = {
            -- getting into some coal products, are we?
            {type="fluid", name="tar", amount=100},
        },
        results = {
            {type="fluid", name="green-oil", amount=40},
            {type="fluid", name="light-oil", amount=25},
            {type="fluid", name="middle-oil", amount=30},
            {type="fluid", name="tar-pitch", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "pitch-processing",
        icons = du.icons("tar-pitch"),
        subgroup = "tar-processing",
        order = "z[pitch-processing]-1",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="tar-pitch", amount=100},
        },
        results = {
            {type="fluid", name="hydrogen", amount=25},
            {type="fluid", name="light-oil", amount=10},
            {type="item", name="coke", amount=25},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-green",
        icons = du.icons("creosote-oil"):add_corner("green-oil"),
        subgroup = "tar-processing",
        order = "a[creosote]-green",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="light-oil", amount=35},
            {type="fluid", name="creosote-oil", amount=25},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=175},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-middle",
        icons = du.icons("creosote-oil"):add_corner("middle-oil"),
        subgroup = "tar-processing",
        order = "a[creosote]-middle",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="middle-oil", amount=100},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "creosote-oil-void",
        icons = du.icons("creosote-oil"):add_corner("chlorine"),
        subgroup = "tar-processing",
        order = "a[creosote]-void",
        main_product = "",
        energy_required = 5,
        ingredients = {
            -- also a void for sodium hydroxide, as sodium hydroxide is produced in a 1 - 40 ratio with chlorine
            {type="fluid", name="creosote-oil", amount=10, fluidbox_index = 1},
            {type="fluid", name="chlorine", amount=20, fluidbox_index = 2},
            {type="item", name="sodium-hydroxide", amount=1},
        },
        results = {
            {type="fluid", name="flue-gas", amount=30, fluidbox_index = 2},
            {type="fluid", name="steam", temperature=100, amount=100, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "water-2",
        icons = du.icons("base.fluid/water"):add_corner("base.fluid/steam"),
        subgroup = "raw-material",
        order = "a[creosote]-void",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="steam", amount=500, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="water", amount=50, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-blended",
        icons = du.icons("creosote-oil"):add_corner("creosote-oil"),
        subgroup = "tar-processing",
        order = "a[creosote]-blended",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="middle-oil", amount=50},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "anthracene-from-green",
        icons = du.icons("anthracene"):add_corner("green-oil"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
        },
        results = {
            {type="fluid", name="anthracene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-creosote",
        icons = du.icons("carbolic-acid"):add_corner("creosote-oil"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="creosote-oil", amount=100},
        },
        results = {
            {type="fluid", name="carbolic-acid", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-middle",
        icons = du.icons("carbolic-acid"):add_corner("middle-oil"),
        subgroup = "tar-processing",
        order = du.order.todo(),
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="middle-oil", amount=100},
        },
        results = {
            {type="fluid", name="carbolic-acid", amount=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "full-tar-gasification",
        icons = du.icons("syngas"):add_corner("tar"),
        subgroup = "destructive-distillation",
        order = "c[tar-related]-a[tar-gasification]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="tar", amount=100},
            {type="fluid", name="water", amount=65},
        },
        results = {
            {type="fluid", name="coal-gas", amount=120},
            {type="fluid", name="syngas", amount=40},
            {type="fluid", name="flue-gas", amount=80, temperature=500},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "wood-oil-gasification",
        icons = du.icons("syngas"):add_corner("wood-oil"),
        subgroup = "destructive-distillation",
        order = "c[tar-related]-a[tar-gasification]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="wood-oil", amount=100},
            {type="fluid", name="water", amount=65},
        },
        results = {
            {type="fluid", name="syngas", amount=120},
            {type="fluid", name="flue-gas", amount=80, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coal-gas-gasification",
        icons = du.icons("syngas"):add_corner("coal-gas"),
        subgroup = "destructive-distillation",
        order = "c[tar-related]-a[gas-gasification]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="coal-gas", amount=100},
            {type="fluid", name="water", amount=300},
        },
        results = {
            {type="fluid", name="syngas", amount=100},
            {type="fluid", name="flue-gas", amount=80, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "wood-oil-separation",
        icons = du.icons("methanol"):add_corner("wood-oil"),
        subgroup = "destructive-distillation",
        order = "b[wood]-a",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="wood-oil", amount=10},
        },
        results = {
            {type="fluid", name="methanol", amount=3},
            {type="fluid", name="creosote-oil", amount=4},
            {type="fluid", name="tar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "wood-gasification",
        icons = du.icons{mod="base",name="wood"}:add_corner("coal-gas"),
        subgroup = "destructive-distillation",
        order = "b[wood]-b",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="wood", amount=10},
        },
        results = {
            {type="fluid", name="wood-oil", amount=30},
            {type="fluid", name="coal-gas", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blending", ---@diagnostic disable-line
        name = "plastic-resin-1",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("synthetic-resin"),
        subgroup = "polymers",
        order = "b[plastic]-a[resin]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="synthetic-resin", amount=1},
            {type="item", name="bound-porcelain", amount=1},
        },
        results = {
            {type="item", name="plastic-bar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "plastic-pvc-1",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("acetylene"),
        subgroup = "polymers",
        order = "b[plastic]-b[pvc]-1",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="acetylene", amount=20},
            {type="fluid", name="hydrogen-chloride", amount=80},
            {type="item", name="lead-plate", amount=1}, -- lead sulfate
            {type="item", name="coal-dust", amount=2},
            {type="item", name="bound-porcelain", amount=1},
        },
        results = {
            {type="item", name="plastic-bar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "environmental-science-pack-2",
        icons = du.icons("environmental-science-pack"),
        subgroup = "science-pack",
        order = "1-2",
        main_product = "",
        enabled = false,
        energy_required = 12,
        ingredients = {
            {type="item", name="saltberries", amount=4},
            {type="item", name="brine-salt", amount=1},
            {type="item", name="soil", amount=4},
            {type="fluid", name="acid-gas", amount=8},
        },
        results = {
            {type="item", name="environmental-science-pack", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "small-lamp",
        icons = du.icons{mod="base",name="small-lamp"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="aluminum-cable", amount=16},
            {type="item", name="iron-sheet", amount=2},
            {type="item", name="glass", amount=2},
        },
        results = {
            {type="item", name="small-lamp", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "constant-combinator",
        icons = du.icons{mod="base",name="constant-combinator"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="ferrite", amount=1},
            {type="item", name="copper-cable", amount=3},
            {type="item", name="glass", amount=1},
        },
        results = {
            {type="item", name="constant-combinator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "arithmetic-combinator",
        icons = du.icons{mod="base",name="arithmetic-combinator"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=2},
            {type="item", name="decider-combinator", amount=1},
        },
        results = {
            {type="item", name="arithmetic-combinator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "decider-combinator",
        icons = du.icons{mod="base",name="decider-combinator"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=2},
            {type="item", name="constant-combinator", amount=1},
        },
        results = {
            {type="item", name="decider-combinator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "transport-belt-2",
        icons = du.icons{mod = "base", name = "transport-belt"},
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="iron-plate", amount=2},
            {type="item", name="iron-gear-wheel", amount=1},
        },
        results = {
            {type="item", name="transport-belt", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "farm-1",
        energy_required = 2,
        ingredients = {
            {type="item", name="treated-wood", amount=10},
            {type="item", name="stone-brick", amount=10},
            {type="item", name="bronze-plate", amount=10},
            {type="item", name="agricultural-soil", amount=9},
            {type="item", name="small-tank", amount=1},
        },
        results = {
            {type="item", name="farm-1", amount=1},
        }
    }
})