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
        category = "electrolysis", ---@diagnostic disable-line
        name = "sodium-1",
        icons = du.icons("sodium"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="salt", amount=1},
        },
        results = {
            {type="item", name="sodium", amount=1},
            {type="fluid", name="chlorine", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "refrigerant-1",
        icons = du.icons("se/refrigerant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="methanol", amount=30},
            {type="fluid", name="sulfuric-acid", amount=30},
            {type="item", name="salt", amount=6},
        },
        results = {
            {type="fluid", name="refrigerant", amount=10},
            {type="fluid", name="sulfuric-wastewater", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "low-temperature-refrigerant-1",
        icons = du.icons("se/low-temperature-refrigerant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="refined-gas", amount=30},
            {type="fluid", name="carbon-dioxide", amount=100},
            {type="item", name="sulfur", amount=2},
            {type="item", name="nickel-plate", amount=2},
        },
        results = {
            {type="fluid", name="low-temperature-refrigerant", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "refrigerant-cooling",
        icons = du.icons("se/refrigerant"):add_corner("waste-heat"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="hot-refrigerant", amount=101, fluidbox_index = 1},
        },
        results = {
            {type="fluid", name="waste-heat", amount=200, temperature=150, fluidbox_index = 1},
            {type="fluid", name="refrigerant", amount=100, fluidbox_index = 2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "low-temperature-refrigerant-cooling",
        icons = du.icons("se/low-temperature-refrigerant"):add_corner("se/hot-refrigerant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="hot-low-temperature-refrigerant", amount=101, fluidbox_index = 1},
            {type="fluid", name="cold-refrigerant", amount=101, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="low-temperature-refrigerant", amount=100, fluidbox_index = 2},
            {type="fluid", name="hot-refrigerant", amount=100, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chilling", ---@diagnostic disable-line
        name = "cold-refrigerant",
        icons = du.icons("se/cold-refrigerant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="refrigerant", amount=305},
        },
        results = {
            {type="fluid", name="cold-refrigerant", amount=150, fluidbox_index = 2},
            {type="fluid", name="hot-refrigerant", amount=150, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chilling", ---@diagnostic disable-line
        name = "cold-low-temperature-refrigerant",
        icons = du.icons("se/cold-low-temperature-refrigerant"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="low-temperature-refrigerant", amount=305},
        },
        results = {
            {type="fluid", name="cold-low-temperature-refrigerant", amount=150, fluidbox_index = 2},
            {type="fluid", name="hot-low-temperature-refrigerant", amount=150, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "distillation", ---@diagnostic disable-line
        name = "air-separation",
        icons = du.icons("air-separation"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="fluid", name="cold-low-temperature-refrigerant", amount=105},
        },
        results = {
            {type="fluid", name="oxygen", amount=210},
            {type="fluid", name="nitrogen", amount=780},
            {type="fluid", name="trace-gases", amount=10},
            {type="fluid", name="low-temperature-refrigerant", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "distillation", ---@diagnostic disable-line
        name = "trace-gases-separation",
        icons = du.icons("air-separation"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="cold-low-temperature-refrigerant", amount=20},
            {type="fluid", name="trace-gases", amount=10},
        },
        results = {
            {type="fluid", name="argon", amount=9, fluidbox_index = 2},
            -- to be implemented
            {type="fluid", name="low-temperature-refrigerant", amount=20, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chilling", ---@diagnostic disable-line
        name = "liquid-oxygen",
        icons = du.icons("liquid-oxygen"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="cold-low-temperature-refrigerant", amount=50},
            {type="fluid", name="oxygen", amount=500},
        },
        results = {
            {type="fluid", name="liquid-oxygen", amount=50, fluidbox_index = 2},
            {type="fluid", name="hot-low-temperature-refrigerant", amount=50, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chilling", ---@diagnostic disable-line
        name = "liquid-nitrogen",
        icons = du.icons("liquid-nitrogen"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="cold-low-temperature-refrigerant", amount=50},
            {type="fluid", name="nitrogen", amount=500},
        },
        results = {
            {type="fluid", name="liquid-nitrogen", amount=50, fluidbox_index = 2},
            {type="fluid", name="hot-low-temperature-refrigerant", amount=50, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "night-vision-equipment",
        icons = du.icons("base.night-vision-equipment"),
        energy_required = 0.5,
        ingredients = {
            -- NaKSb photocathode
            {type="item", name="sodium", amount=15},
            {type="item", name="antimony", amount=15},
            -- zinc copper phosphor
            {type="item", name="zinc-oxide", amount=15},
            {type="item", name="sulfur", amount=15},
            {type="item", name="copper-plate", amount=15},
            {type="item", name="advanced-circuit", amount=10},
        },
        results = {
            {type="item", name="night-vision-equipment", amount=1},
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "insulation",
        icons = du.icons("insulation"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="rayon", amount=1},
            {type="item", name="rubylith", amount=1}, -- mylar substitute
            {type="item", name="lead-plate", amount=1},
            {type="item", name="antimony", amount=1},
        },
        results = {
            {type="item", name="insulation", amount=1},
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
        energy_required = 0.5,
        ingredients = {
            {type="item", name="bronze-plate", amount=1},
            {type="item", name="plastic-bar", amount=1},
            {type="fluid", name="ethylene-glycol", amount=3},
        },
        results = {
            {type="item", name="heat-pipe", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "heat-break",
        icons = du.icons("heat-break"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="heat-pipe", amount=4},
            {type="item", name="copper-plate", amount=20},
            {type="item", name="aluminum-plate", amount=20},
            {type="item", name="fiberglass", amount=5},
        },
        results = {
            {type="item", name="heat-break", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "chiller",
        icons = du.icons("chiller"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="radiator", amount=1},
            {type="item", name="insulation", amount=5},
            {type="item", name="phenolic-resin", amount=15},
            {type="item", name="chemical-plant", amount=1},
            {type="item", name="advanced-circuit", amount=5},
        },
        results = {
            {type="item", name="chiller", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "radiator",
        icons = du.icons("se/radiator"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="heat-break", amount=5},
            {type="item", name="medium-electric-motor", amount=2},
            {type="item", name="insulation", amount=10},
            {type="item", name="steel-beam", amount=30},
            {type="item", name="advanced-circuit", amount=5},
        },
        results = {
            {type="item", name="radiator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "crystallizer",
        icons = du.alias("crystallizer"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="advanced-circuit", amount=6},
            {type="item", name="medium-electric-motor", amount=5},
            {type="item", name="phenolic-resin", amount=1},
            {type="item", name="glass", amount=20},
            {type="item", name="fiberglass", amount=10},
            {type="fluid", name="argon", amount=10},
        },
        results = {
            {type="item", name="crystallizer", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        main_product = "crucible",
        category = "blasting", ---@diagnostic disable-line
        name = "crucible",
        icons = du.icons("crucible"),
        energy_required = 20,
        ingredients = {
            {type="item", name="silica", amount=20},
            -- quartz
        },
        results = {
            {type="item", name="crucible", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        main_product = "miniscule-silicon-boule",
        category = "crystallizing", ---@diagnostic disable-line
        name = "miniscule-silicon-boule",
        icons = du.icons("pm/miniscule-silicon-boule"),
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="nitrogen", amount=200},
            {type="fluid", name="silane", amount=50},
            {type="item", name="silica", amount=1},
            {type="item", name="crucible", amount=1},
        },
        results = {
            {type="item", name="miniscule-silicon-boule", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crystallizing", ---@diagnostic disable-line
        name = "moderate-silicon-boule",
        main_product = "moderate-silicon-boule",
        icons = du.icons("pm/moderate-silicon-boule"),
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="nitrogen", amount=200},
            {type="fluid", name="silane", amount=50},
            {type="item", name="miniscule-silicon-boule", amount=1},
        },
        results = {
            {type="item", name="moderate-silicon-boule", amount=1, probability=0.9},
            {type="item", name="polysilicon", amount=1, probability=0.1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crystallizing", ---@diagnostic disable-line
        name = "substantial-silicon-boule",
        icons = du.icons("pm/substantial-silicon-boule"),
        energy_required = 0.5,
        main_product = "substantial-silicon-boule",
        ingredients = {
            {type="fluid", name="nitrogen", amount=200},
            {type="fluid", name="silane", amount=50},
            {type="item", name="moderate-silicon-boule", amount=1},
        },
        results = {
            {type="item", name="substantial-silicon-boule", amount=1, probability=0.9},
            {type="item", name="polysilicon", amount=1, probability=0.1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crystallizing", ---@diagnostic disable-line
        name = "silicon-boule",
        icons = du.icons("silicon-boule"),
        energy_required = 0.5,
        main_product = "silicon-boule",
        ingredients = {
            {type="fluid", name="nitrogen", amount=200},
            {type="fluid", name="silane", amount=50},
            {type="item", name="substantial-silicon-boule", amount=1},
        },
        results = {
            {type="item", name="silicon-boule", amount=1, probability=0.9},
            {type="item", name="polysilicon", amount=1, probability=0.1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "polysilicon-crushing",
        icons = du.icons("polysilicon"):add_corner("crushing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="polysilicon", amount=1},
        },
        results = {
            {type="item", name="silicon", amount=4},
        }
    }
})