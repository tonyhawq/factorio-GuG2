local du = require('dutil')

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "centrifuge",
        icons = du.icons("base.centrifuge"),
        energy_required = 1,
        ingredients = {
            {type="item", name="fast-inserter", amount=12},
            {type="item", name="fast-splitter", amount=12},
            {type="item", name="gearbox-1", amount=6},
            {type="item", name="medium-electric-motor", amount=6},
            {type="item", name="concrete", amount=60},
        },
        results = {
            {type="item", name="centrifuge", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "heat-pipe",
        icons = du.icons("base.heat-pipe"),
        energy_required = 1,
        ingredients = {
            {type="item", name="copper-plate", amount=12},
            {type="item", name="aluminum-plate", amount=10},
            {type="item", name="glowing-mangaloy-plate", amount=4},
            {type="fluid", name="water", amount=30},
        },
        results = {
            {type="item", name="heat-pipe", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "heat-exchanger",
        icons = du.icons("base.heat-boiler"),
        energy_required = 1,
        ingredients = {
            {type="item", name="counterflow-heat-exchanger", amount=1},
            {type="item", name="concrete", amount=30},
            {type="item", name="glowing-mangaloy-plate", amount=4},
            {type="item", name="plastic-bar", amount=40},
            {type="item", name="heat-pipe", amount=6},
        },
        results = {
            {type="item", name="heat-exchanger", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "nuclear-reactor",
        icons = du.icons("base.nuclear-reactor"),
        energy_required = 1,
        ingredients = {
            {type="item", name="heat-pipe", amount=40},
            {type="item", name="molybdenum-special-alloy", amount=20},
            {type="item", name="nickel-plate", amount=80},
            {type="item", name="plastic-bar", amount=20},
            {type="item", name="concrete", amount=100},
            {type="item", name="graphite-electrode", amount=60},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="medium-electric-motor", amount=40},
        },
        results = {
            {type="item", name="nuclear-reactor", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "nuclear-science-pack-1",
        icons = du.icons("nuclear-science-pack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="urania-238", amount=1},
            {type="item", name="lead-plate", amount=12},
            {type="item", name="graphite-block", amount=2},
            {type="item", name="heat-pipe", amount=3},
            {type="item", name="fiberglass", amount=2},
        },
        results = {
            {type="item", name="nuclear-science-pack", amount=1},
        }
    }
})
-- after science pack
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "uranium-fuel-cell-1",
        icons = du.icons("base.uranium-fuel-cell"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="urania-235", amount=1},
            {type="item", name="urania-238", amount=4},
            {type="item", name="molybdenum-special-alloy", amount=2},
            {type="item", name="nickel-plate", amount=3},
        },
        results = {
            {type="item", name="uranium-fuel-cell", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-turbine",
        icons = du.icons("base.steam-turbine"),
        energy_required = 1,
        ingredients = {
            {type="item", name="nickel-plate", amount=12},
            {type="item", name="steel-beam", amount=12},
            {type="item", name="concrete", amount=10},
            {type="item", name="heat-pipe", amount=4},
            {type="item", name="fiberglass", amount=20},
            {type="item", name="gearbox-1", amount=4},
        },
        results = {
            {type="item", name="steam-turbine", amount=1},
        }
    }
})
-- uo2 batteries
-- uo2 catalysts
-- uo2 solar cells