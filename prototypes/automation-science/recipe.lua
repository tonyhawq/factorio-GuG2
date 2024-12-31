local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "solar-panel",
        icons = du.icons("base.solar-panel"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="silicon-carbide", amount=7},
            {type="item", name="glass", amount=6},
            {type="item", name="silver-plate", amount=2},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="power-switch", amount=1},
        },
        results = {
            {type="item", name="solar-panel", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "modular-armor",
        icons = du.icons("base.modular-armor"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="fiberglass", amount=30},
            {type="item", name="rayon", amount=30},
            {type="item", name="advanced-circuit", amount=15},
            {type="item", name="glowing-mangaloy-ingot", amount=15},
            {type="item", name="nickel-plate", amount=15},
            {type="item", name="small-parts", amount=40},
        },
        results = {
            {type="item", name="modular-armor", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "solar-panel-equipment",
        icons = du.icons("base.solar-panel-equipment"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="solar-panel", amount=1},
            {type="item", name="fiberglass", amount=5},
            {type="item", name="rayon", amount=5},
            {type="item", name="program", amount=5},
        },
        results = {
            {type="item", name="solar-panel-equipment", amount=1},
        }
    }
})