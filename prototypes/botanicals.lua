local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "tree-growing",
        icons = du.icons("burner-generator"),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="sapling", amount=30},
            {type="item", name="planter-box", amount=12},
            {type="item", name="soil", amount=10},
            {type="fluid", name="water", amount=2},
        },
        results = {
            {type="item", name="burner-generator", amount=1},
        }
    }
})

data:extend{
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "moss-growing",
        icons = du.icons("burner-generator"),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone", amount=2},
            {type="fluid", name="mineralized-water", amount=100},
        },
        results = {
            {type="item", name="moss", amount=10},
        }
    }
}