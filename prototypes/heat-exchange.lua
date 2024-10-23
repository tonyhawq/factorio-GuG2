local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "200c-production",
        icons = du.icons("200c").add_corner("flue-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="flue-gas", amount=30, minimum_temperature=200, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="200c", amount=30, fluidbox_index = 1},
            {type="fluid", name="flue-gas", amount=30, temperature=100, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "300c-production",
        icons = du.icons("300c").add_corner("flue-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="flue-gas", amount=30, minimum_temperature=300, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="300c", amount=30, fluidbox_index = 1},
            {type="fluid", name="flue-gas", amount=30, temperature=150, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-production",
        icons = du.icons("400c").add_corner("flue-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="flue-gas", amount=30, minimum_temperature=400, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="400c", amount=30, fluidbox_index = 1},
            {type="fluid", name="flue-gas", amount=30, temperature=180, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-production",
        icons = du.icons("500c").add_corner("flue-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="flue-gas", amount=30, minimum_temperature=500, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="500c", amount=30, fluidbox_index = 1},
            {type="fluid", name="flue-gas", amount=30, temperature=200, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-400c",
        icons = du.icons("400c").add_corner("500c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="500c", amount=30, fluidbox_index = 1},
            {type="fluid", name="300c", amount=30, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="400c", amount=30, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-300c",
        icons = du.icons("300c").add_corner("500c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="500c", amount=30, fluidbox_index = 1},
            {type="fluid", name="200c", amount=15, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="300c", amount=30, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-200c",
        icons = du.icons("200c").add_corner("500c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="500c", amount=30, fluidbox_index = 1},
            {type="fluid", name="water", amount=60, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="200c", amount=30, fluidbox_index = 2},
            {type="fluid", name="water", amount=60, fluidbox_index = 1, temperature=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-to-300c",
        icons = du.icons("300c").add_corner("400c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="400c", amount=30, fluidbox_index = 1},
            {type="fluid", name="200c", amount=30, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="300c", amount=30, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-to-200c",
        icons = du.icons("200c").add_corner("400c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="400c", amount=30, fluidbox_index = 1},
            {type="fluid", name="water", amount=48, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="200c", amount=30, fluidbox_index = 2},
            {type="fluid", name="water", amount=48, fluidbox_index = 1, temperature=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "300c-to-200c",
        icons = du.icons("200c").add_corner("300c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="300c", amount=30, fluidbox_index = 1},
            {type="fluid", name="water", amount=36, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="200c", amount=30, fluidbox_index = 2},
            {type="fluid", name="water", amount=36, fluidbox_index = 1, temperature=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "200c-to-water",
        icons = du.icons{mod="base", name="fluid/water"}.add_corner("200c"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="200c", amount=30, fluidbox_index = 1},
            {type="fluid", name="water", amount=48, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="water", amount=48, fluidbox_index = 1, temperature=80},
        }
    }
})