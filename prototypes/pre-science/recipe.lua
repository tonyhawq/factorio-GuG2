local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "stone-furnace",
        icons = du.icons{mod = "base", name = "stone-furnace"},
        enabled = true,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sandstone", amount=6},
            {type="item", name="clay", amount=3},
        },
        results = {
            {type="item", name="stone-furnace", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "burner-mining-drill",
        icons = du.icons{mod = "base", name = "burner-mining-drill"},
        enabled = true,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="lead-plate", amount=6},
        },
        results = {
            {type="item", name="burner-mining-drill", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "transport-belt",
        icons = du.icons{mod = "base", name = "transport-belt"},
        enabled = true,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="lead-plate", amount=2},
        },
        results = {
            {type="item", name="transport-belt", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "barrel",
        icons = du.icons("base.fluid/barreling/empty-barrel"),
        enabled = true,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="small-tank", amount=1},
            {type="item", name="steel-beam", amount=1},
        },
        results = {
            {type="item", name="barrel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "clay-collecting",
        icons = du.icons("clay"),
        subgroup = "extracting",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 0.5,
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
        category = "smelting", ---@diagnostic disable-line
        name = "brick",
        icons = du.icons("brick"),
        subgroup = "masonry",
        order = "a[clay-brick]-1",
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="clay", amount=2},
        },
        results = {
            {type="item", name="brick", amount=1},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "tin-ingot-1",
        icons = du.icons("tin-ingot"),
        subgroup = "tin-smelting",
        order = "a-1",
        main_product = "",
        enabled = true,
        energy_required = 4,
        ingredients = {
            {type="item", name="tin-ore", amount=4},
            {type="item", name="limestone", amount=2},
        },
        results = {
            {type="item", name="tin-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "tin-ingot-2",
        icons = du.icons("tin-ingot"),
        subgroup = "tin-smelting",
        order = "a-2",
        main_product = "",
        enabled = true,
        energy_required = 3,
        ingredients = {
            {type="item", name="crushed-tin-ore", amount=6},
            {type="item", name="limestone", amount=2},
        },
        results = {
            {type="item", name="tin-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "crafting", ---@diagnostic disable-line
        name = "underground-belt",
        icons = du.icons{mod="base",name="underground-belt"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="transport-belt", amount=6},
            {type="item", name="pipe-to-ground", amount=2},
        },
        results = {
            {type="item", name="underground-belt", amount=4},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="bronze-plate", amount=1},
            {type="item", name="lead-plate", amount=1},
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
        name = "burner-inserter",
        icons = du.icons{mod="base",name="burner-inserter"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="mechanical-inserter", amount=2},
            {type="item", name="rivets", amount=4},
        },
        results = {
            {type="item", name="burner-inserter", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "tin-plate-1",
        icons = du.icons("tin-plate"),
        subgroup = "tin-ingot-processing",
        order = du.order.ingot("plate", 1),
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="tin-ingot", amount=1},
        },
        results = {
            {type="item", name="tin-plate", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "copper-ingot-1",
        icons = du.icons("copper-ingot"),
        subgroup = "copper-smelting",
        order = "a-1",
        main_product = "",
        enabled = true,
        energy_required = 4,
        ingredients = {
            {type="item", name="copper-ore", amount=4},
        },
        results = {
            {type="item", name="copper-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "copper-ingot-2",
        icons = du.icons("copper-ingot"),
        subgroup = "copper-smelting",
        order = "a-2",
        main_product = "",
        enabled = true,
        energy_required = 3,
        ingredients = {
            {type="item", name="crushed-copper-ore", amount=6},
        },
        results = {
            {type="item", name="copper-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "copper-plate-1",
        icons = du.icons{mod="base", name="copper-plate"},
        subgroup = "copper-ingot-processing",
        order = du.order.ingot("plate", 1),
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-ingot", amount=1},
        },
        results = {
            {type="item", name="copper-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "planter-box",
        icons = du.icons("planter-box"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="wood", amount=2},
            {type="item", name="lead-plate", amount=1},
        },
        results = {
            {type="item", name="planter-box", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "crafting", ---@diagnostic disable-line
        name = "lab-1",
        icons = du.icons("burner-lab"),
        main_product = "burner-lab",
        energy_required = 2,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="transport-belt", amount=3},
            {type="item", name="brick", amount=15},
        },
        results = {
            {type="item", name="burner-lab", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "environmental-science-pack-1",
        icons = du.icons("environmental-science-pack"),
        subgroup = "science-pack",
        order = "1-1",
        main_product = "",
        enabled = true,
        energy_required = 24,
        ingredients = {
            {type="item", name="planter-box", amount=2},
            {type="item", name="bronze-plate", amount=2},
            {type="item", name="clay", amount=2},
        },
        results = {
            {type="item", name="environmental-science-pack", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "lead-ingot-1",
        icons = du.icons("lead-ingot"),
        subgroup = "lead-smelting",
        order = "a-1",
        main_product = "",
        enabled = true,
        energy_required = 4,
        ingredients = {
            {type="item", name="lead-ore", amount=8},
        },
        results = {
            {type="item", name="lead-ingot", amount=1},
            {type="item", name="raw-silver-dust", amount=1, probability=0.125},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "lead-ingot-2",
        icons = du.icons("lead-ingot"),
        subgroup = "lead-smelting",
        order = "a-2",
        main_product = "",
        enabled = true,
        energy_required = 3,
        ingredients = {
            {type="item", name="crushed-lead-ore", amount=12},
        },
        results = {
            {type="item", name="lead-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "lead-plate-1",
        icons = du.icons("lead-plate"),
        subgroup = "lead-ingot-processing",
        order = du.order.ingot("plate", 1),
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="lead-ingot", amount=1},
        },
        results = {
            {type="item", name="lead-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "firearm-magazine",
        localised_name = {"recipe-name.firearm-magazine"},
        icons = du.icons{mod="base", name="firearm-magazine"},
        enabled = true,
        energy_required = 0.5,
        ingredients = {
            {type="item", name="iron-rod", amount=4},
        },
        results = {
            {type="item", name="firearm-magazine", amount=1},
        }
    }
})