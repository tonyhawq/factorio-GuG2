local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "200c-production",
        icons = du.icons_m("200c"):add(du.icon_c("flue-gas")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "300c-production",
        icons = du.icons_m("300c"):add(du.icon_c("flue-gas")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-production",
        icons = du.icons_m("400c"):add(du.icon_c("flue-gas")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-production",
        icons = du.icons_m("500c"):add(du.icon_c("flue-gas")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-400c",
        icons = du.icons_m("400c"):add(du.icon_c("500c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-300c",
        icons = du.icons_m("300c"):add(du.icon_c("500c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "500c-to-200c",
        icons = du.icons_m("200c"):add(du.icon_c("500c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-to-300c",
        icons = du.icons_m("300c"):add(du.icon_c("400c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "400c-to-200c",
        icons = du.icons_m("200c"):add(du.icon_c("400c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "300c-to-200c",
        icons = du.icons_m("200c"):add(du.icon_c("300c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "200c-to-water",
        icons = du.icons_ext{mod="__base__", name="fluid/water"}:add(du.icon_c("200c")),
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
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