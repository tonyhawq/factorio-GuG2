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
            {type="item", name="fiber", amount=1},
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
            {type="item", name="agar", amount=2},
        },
        results = {
            {type="fluid", name="methane", amount=6},
            {type="fluid", name="organic-wastewater", amount=2},
        }
    }
})
