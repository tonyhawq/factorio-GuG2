local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "stone-furnace",
        icons = du.icons{mod = "base", name = "stone-furnace"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
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
        category = "smelting", ---@diagnostic disable-line
        name = "burner-mining-drill",
        icons = du.icons{mod = "base", name = "burner-mining-drill"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
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
        category = "smelting", ---@diagnostic disable-line
        name = "transport-belt",
        icons = du.icons{mod = "base", name = "transport-belt"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
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
        name = "clay-collecting",
        icons = du.icons("clay"),
        subgroup = "raw-material",
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
        subgroup = "raw-material",
        order = "a[a]",
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
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
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
        name = "tin-plate-1",
        icons = du.icons("tin-plate"),
        subgroup = "raw-material",
        order = "a[a]",
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
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
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
        name = "copper-plate-1",
        icons = du.icons{mod="base", name="copper-plate"},
        subgroup = "raw-material",
        order = "a[a]",
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
        energy_required = 2,
        ingredients = {
            {type="item", name="wood", amount=2},
            {type="item", name="tin-plate", amount=1},
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
        category = "crafting", ---@diagnostic disable-line
        name = "environmental-science-pack",
        icons = du.icons("environmental-science-pack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="planter-box", amount=2},
            {type="item", name="iron-ore", amount=6},
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
        category = "smelting", ---@diagnostic disable-line
        name = "lead-ingot-1",
        icons = du.icons("lead-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="lead-ore", amount=4},
        },
        results = {
            {type="item", name="lead-ingot", amount=2},
            {type="item", name="raw-silver-dust", amount=1, probability=0.25},
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
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type="item", name="lead-ingot", amount=4},
        },
        results = {
            {type="item", name="lead-plate", amount=3},
        }
    }
})