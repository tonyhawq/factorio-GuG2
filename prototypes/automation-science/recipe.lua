local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "induction-melter",
        icons = du.icons("induction-melter"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-furnace", amount=1},
            {type="item", name="crucible", amount=10},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="transformer", amount=12},
            {type="item", name="hardened-machine-chassis", amount=1},
        },
        results ={
            {type="item", name="induction-melter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "alloy-furnace",
        icons = du.icons("alloy-furnace"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-furnace", amount=1},
            {type="item", name="hardened-machine-chassis", amount=1},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="transformer", amount=12},
        },
        results ={
            {type="item", name="alloy-furnace", amount=1},
        }
    }
})
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
            {type="item", name="glowing-mangaloy-plate", amount=15},
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
            {type="item", name="hardened-machine-chassis", amount=1},
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
            {type="item", name="hardened-machine-chassis", amount=1},
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
        energy_required = 10,
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
        energy_required = 10,
        ingredients = {
            {type="fluid", name="argon", amount=10},
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
        energy_required = 10,
        main_product = "substantial-silicon-boule",
        ingredients = {
            {type="fluid", name="argon", amount=10},
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
        energy_required = 10,
        main_product = "silicon-boule",
        ingredients = {
            {type="fluid", name="argon", amount=10},
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "high-discharge-lamp",
        energy_required = 2,
        ingredients = {
            -- metal halide UV light (tungsten comes later, cant use that, no mercury, no cobalt)
            {type="item", name="small-lamp", amount=1},
            {type="item", name="molybdenum-special-alloy", amount=1},
            {type="item", name="lead-plate", amount=2},
            {type="fluid", name="argon", amount=10},
            {type="fluid", name="molten-glass", amount=20},
        },
        results = {
            {type="item", name="high-discharge-lamp", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "sand-casting",
        icons = du.icons("sand-casting"),
        main_product = "sand-casting",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="sand", amount=5},
            {type="fluid", name="creosote-oil", amount=2},
        },
        results = {
            {type="item", name="sand-casting", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "alloying", ---@diagnostic disable-line
        name = "molten-stainless-steel-1",
        icons = du.icons("angels/molten-stainless-steel"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            -- 20 molten fluid per ingot
            {type="fluid", name="molten-iron", amount=68},
            {type="fluid", name="molten-nickel", amount=10},
            {type="fluid", name="molten-chrome", amount=20},
            {type="fluid", name="molten-manganese", amount=2},
        },
        results = {
            {type="fluid", name="molten-stainless-steel", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "alloying", ---@diagnostic disable-line
        name = "molten-glowing-mangaloy-1",
        icons = du.icons("angels/molten-glowing-mangaloy"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            -- 20 molten fluid per ingot
            {type="fluid", name="molten-antimony", amount=10},
            {type="fluid", name="molten-lead", amount=20},
            {type="fluid", name="molten-manganese", amount=30},
            {type="fluid", name="molten-iron", amount=40},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="fluid", name="molten-glowing-mangaloy", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "alloying", ---@diagnostic disable-line
        name = "molten-molybdenum-special-alloy-1",
        icons = du.icons("angels/molten-molybdenum-special-alloy"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            -- 20 molten fluid per ingot
            {type="fluid", name="molten-aluminum", amount=15},
            {type="fluid", name="molten-molybdenum", amount=15},
            {type="fluid", name="molten-nickel", amount=50},
            {type="fluid", name="molten-iron", amount=15},
            {type="item", name="coke", amount=1},
            {type="item", name="white-phosphorous", amount=5},
        },
        results = {
            {type="fluid", name="molten-molybdenum-special-alloy", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "alloying", ---@diagnostic disable-line
        name = "molten-solder-1",
        icons = du.icons("angels/molten-solder"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            -- 20 molten fluid per ingot
            {type="fluid", name="molten-lead", amount=10},
            {type="fluid", name="molten-tin", amount=10},
        },
        results = {
            {type="fluid", name="molten-solder", amount=20},
        }
    }
})
local function melt_and_cast_ingot(name)
    data:extend({
        {
            type = "recipe", 
            always_show_made_in = true,
            enabled = false,
            category = "induction", ---@diagnostic disable-line
            name = "molten-"..name.."-1",
            icons = du.icons("angels/molten-"..name),
            subgroup = "raw-material",
            order = "a[a]",
            main_product = "",
            energy_required = 1,
            ingredients = {
                -- 20 molten fluid per ingot
                {type="item", name=name.."-ingot", amount=1},
            },
            results = {
                {type="fluid", name="molten-"..name, amount=20},
            }
        }
    })
    data:extend({
        {
            type = "recipe", 
            always_show_made_in = true,
            enabled = false,
            category = "casting", ---@diagnostic disable-line
            name = name.."-ingot-casting",
            icons = du.icons(name.."-ingot"),
            subgroup = "raw-material",
            order = "a[a]",
            main_product = "",
            energy_required = 1,
            ingredients = {
                -- 20 molten fluid per ingot
                {type="fluid", name="molten-"..name, amount=20},
            },
            results = {
                {type="item", name=name.."-ingot", amount=1},
            }
        }
    })
end
melt_and_cast_ingot("iron")
melt_and_cast_ingot("copper")
melt_and_cast_ingot("lead")
melt_and_cast_ingot("tin")
melt_and_cast_ingot("bronze")
melt_and_cast_ingot("silver")
melt_and_cast_ingot("nickel")
melt_and_cast_ingot("chrome")
melt_and_cast_ingot("molybdenum")
melt_and_cast_ingot("manganese")
melt_and_cast_ingot("aluminum")
melt_and_cast_ingot("stainless-steel")
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "iron-plate-casting",
        icons = du.icons("base.iron-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-iron", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="iron-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "iron-sheet-casting",
        icons = du.icons("iron-sheet"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-iron", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="iron-sheet", amount=6},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "iron-rod-casting",
        icons = du.icons("base.iron-stick"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-iron", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="iron-rod", amount=20},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "copper-plate-casting",
        icons = du.icons("base.copper-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-copper", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="copper-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "copper-cable-casting",
        icons = du.icons("base.copper-cable"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-copper", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="copper-cable", amount=20},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "lead-plate-casting",
        icons = du.icons("lead-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-lead", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="lead-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "tin-plate-casting",
        icons = du.icons("tin-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-tin", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="tin-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "silver-plate-casting",
        icons = du.icons("silver-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-silver", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="silver-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "nickel-plate-casting",
        icons = du.icons("nickel-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-nickel", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="nickel-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "chrome-plate-casting",
        icons = du.icons("chrome-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-chrome", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="chrome-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "aluminum-plate-casting",
        icons = du.icons("aluminum-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-aluminum", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="aluminum-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "aluminum-cable-casting",
        icons = du.icons("aluminum-cable"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-aluminum", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="aluminum-cable", amount=20},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "stainless-steel-plate-casting",
        icons = du.icons("stainless-steel-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-stainless-steel", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="stainless-steel-plate", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "molybdenum-special-alloy-casting",
        icons = du.icons("molybdenum-special-alloy"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-molybdenum-special-alloy", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="molybdenum-special-alloy", amount=5},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "glowing-mangaloy-ingot-casting",
        icons = du.icons("glowing-mangaloy-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-glowing-mangaloy", amount=100},
            {type="item", name="sand-casting", amount=1},
        },
        results = {
            {type="item", name="glowing-mangaloy-ingot", amount=5},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "casting", ---@diagnostic disable-line
        name = "steel-ingot-casting",
        icons = du.icons("steel-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-iron", amount=100},
            {type="item", name="sand-casting", amount=1},
            {type="item", name="coke", amount=5},
        },
        results = {
            {type="item", name="steel-ingot", amount=5},
        }
    },
})