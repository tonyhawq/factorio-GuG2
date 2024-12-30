local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "steel-furnace",
        icons = du.icons("base.steel-furnace"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="blast-furnace", amount=1},
            {type="item", name="steel-beam", amount=20},
            {type="item", name="concrete", amount=12},
            {type="item", name="refractory-brick", amount=12},
            {type="item", name="small-parts", amount=12},
        },
        results ={
            {type="item", name="steel-furnace", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "boiler",
        icons = du.icons("base.boiler"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-furnace", amount=1},
            {type="item", name="tube-boiler", amount=1},
            {type="item", name="pump", amount=1},
            {type="item", name="refractory-brick", amount=12},
        },
        results ={
            {type="item", name="boiler", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "radar",
        icons = du.icons("base.radar"),
        enabled = false,
        category = "crafting",
        energy_required = 2,
        ingredients = {
            {type="item", name="program", amount=1},
            {type="item", name="steel-beam", amount=20},
            {type="item", name="aluminum-plate", amount=20},
            {type="item", name="small-electric-motor", amount=6},
            {type="item", name="electronic-circuit", amount=6},
        },
        results ={
            {type="item", name="radar", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "battery-2",
        icons = du.icons{mod="base", name="battery"},
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="battery-alloy-plate", amount=3},
            {type="fluid", name="sulfuric-acid", amount=20},
            {type="fluid", name="water", amount=20},
        },
        results ={
            {type="item", name="battery", amount=1},
            {type="fluid", name="wastewater", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "antimony-oxide-1",
        icons = du.icons("antimony-oxide"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 6,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="antimony-ore", amount=6},
            {type="item", name="iron-ingot", amount=1},
            {type="fluid", name="hydrogen", amount=10},
        },
        results ={
            {type="item", name="antimony-oxide", amount=1},
            {type="item", name="antimony", amount=1},
            {type="item", name="iron-ingot", amount=1},
            {type="fluid", name="hydrogen-sulfide", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "antimony-1",
        icons = du.icons("antimony"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="antimony-oxide", amount=6},
            {type="item", name="coke", amount=2},
            {type="item", name="sodium-carbonate", amount=1},
        },
        results ={
            {type="item", name="antimony", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "battery-alloy-plate-1",
        icons = du.icons("battery-alloy-plate"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="lead-plate", amount=24},
            {type="item", name="antimony", amount=12},
            {type="item", name="solder", amount=2},
        },
        results ={
            {type="item", name="battery-alloy-plate", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "glowing-mangaloy-ingot-1",
        icons = du.icons("glowing-mangaloy-ingot"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 8,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="battery-alloy-plate", amount=3},
            {type="item", name="steel-ingot", amount=4},
            {type="item", name="manganese-ingot", amount=3},
            {type="fluid", name="light-oil", amount=12},
        },
        results = {
            {type="item", name="glowing-mangaloy-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "grease-1",
        icons = du.icons("grease"),
        energy_required = 1,
        ingredients = {
            {type="item", name="graphite-dust", amount=6},
            {type="item", name="sodium-hydroxide", amount=2},
            -- fatty acids or soaps
            {type="fluid", name="organic-solvent", amount=4},
            {type="fluid", name="raw-lubricating-oil", amount=6},
        },
        results = {
            {type="fluid", name="grease", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "grease-cracking",
        icons = du.icons("tar"):add_corner("grease"),
        energy_required = 0.25,
        ingredients = {
            {type="fluid", name="grease", amount=6},
        },
        results = {
            {type="fluid", name="tar", amount=6},
            {type="fluid", name="light-distillates", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gearbox-1",
        icons = du.icons("gearbox-1"),
        energy_required = 1,
        ingredients = {
            {type="item", name="nickel-plate", amount=6},
            {type="item", name="iron-gear-wheel", amount=12},
            {type="item", name="glowing-mangaloy-ingot", amount=2},
            {type="item", name="fiberglass", amount=4},
            {type="fluid", name="grease", amount=6},
        },
        results = {
            {type="item", name="gearbox-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "evaporite-separation-1",
        icons = du.icons("evaporite"),
        enabled = false,
        category = "solid-separation",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="evaporite", amount=8},
            {type="fluid", name="water", amount=24},
        },
        results ={
            {type="item", name="raw-quartz", amount=1},
            {type="item", name="sodium-carbonate", amount=2},
            {type="item", name="sodium-sulfate", amount=2},
            {type="item", name="brine-salt", amount=1},
            {type="fluid", name="brine", amount=24},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "impure-nickel-concentrate-1",
        icons = du.icons("impure-nickel-concentrate"),
        enabled = false,
        category = "solid-separation",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="nickel-ore", amount=8},
        },
        results ={
            {type="item", name="impure-nickel-concentrate", amount=7},
            {type="item", name="sulfur", amount=1},
            {type="item", name="iron-oxide", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "nickel-ingot-1",
        icons = du.icons("nickel-ingot"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 12,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="impure-nickel-concentrate", amount=6},
            {type="fluid", name="ammonia", amount=12},
        },
        results ={
            {type="item", name="nickel-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "nickel-plate-1",
        icons = du.icons("nickel-plate"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 3,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="nickel-ingot", amount=1},
        },
        results ={
            {type="item", name="nickel-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "soda-glass",
        icons = du.icons("glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sodium-carbonate", amount=1},
            {type="item", name="silica", amount=3},
            {type="item", name="limestone", amount=1},
        },
        results = {
            {type="fluid", name="molten-glass", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "medium-electric-pole",
        icons = du.icons("base.medium-electric-pole"),
        energy_required = 1,
        ingredients = {
            {type="item", name="plastic-bar", amount=4},
            {type="item", name="glowing-mangaloy-ingot", amount=1},
            {type="item", name="steel-plate", amount=1},
            {type="item", name="aluminum-cable", amount=6},
        },
        results = {
            {type="item", name="medium-electric-pole", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "big-electric-pole",
        icons = du.icons("base.big-electric-pole"),
        energy_required = 1,
        ingredients = {
            {type="item", name="concrete", amount=1},
            {type="item", name="molybdenum-special-alloy", amount=1},
            {type="item", name="small-parts", amount=12},
            {type="item", name="aluminum-cable", amount=40},
        },
        results = {
            {type="item", name="big-electric-pole", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "chemical-plant",
        icons = du.icons{mod="base", name="chemical-plant"},
        energy_required = 1,
        ingredients = {
            {type="item", name="burner-chemical-plant", amount=1},
            {type="item", name="small-electric-motor", amount=3},
            {type="item", name="aluminum-plate", amount=3},
            {type="item", name="steel-beam", amount=4},
            {type="item", name="small-parts", amount=12},
        },
        results = {
            {type="item", name="chemical-plant", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "assembling-machine-2",
        icons = du.icons{mod="base", name="assembling-machine-2"},
        energy_required = 1,
        ingredients = {
            {type="item", name="assembling-machine-1", amount=1},
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="steam-engine", amount=1},
        },
        results = {
            {type="item", name="assembling-machine-2", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "oil-refinery",
        icons = du.alias("oil-refinery"),
        energy_required = 1,
        ingredients = {
            {type="item", name="water-treatment-plant", amount=2},
            {type="item", name="destructive-distillation-tower", amount=2},
            {type="item", name="machine-chassis", amount=3},
        },
        results = {
            {type="item", name="oil-refinery", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fuel-refinery",
        icons = du.alias("fuel-refinery"),
        energy_required = 1,
        ingredients = {
            {type="item", name="oil-refinery", amount=1},
            {type="item", name="chemical-plant", amount=1},
            {type="item", name="machine-chassis", amount=1},
        },
        results = {
            {type="item", name="fuel-refinery", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "heat-exchanging", ---@diagnostic disable-line
        name = "steam-geothermal-water",
        icons = du.icons("hot-geothermal-water"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="hot-geothermal-water", amount=100, fluidbox_index = 1},
            {type="fluid", name="water", amount=100, fluidbox_index = 2},
        },
        results = {
            {type="fluid", name="geothermal-water", amount=100, fluidbox_index = 2},
            {type="fluid", name="steam", temperature=165, amount=1000, fluidbox_index = 1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "geothermal-water-treatment",
        icons = du.icons("geothermal-water"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="geothermal-water", amount=100},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=20},
            {type="fluid", name="water", amount=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "geothermal-water-treatment-2",
        icons = du.icons("geothermal-water"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="geothermal-water", amount=100},
        },
        results = {
            {type="item", name="iron-oxide", amount=6},
            {type="fluid", name="water", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "mineralized-water-treatment",
        icons = du.icons("mineralized-water"):add_corner("manganese-oxides"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=100},
            {type="item", name="coal-dust", amount=5},
        },
        results = {
            {type="fluid", name="water", amount=40},
            {type="item", name="stone", amount=3},
            {type="item", name="manganese-oxides", amount=2},
            {type="item", name="evaporite", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "sludge-bubbling",
        icons = du.icons("sludge"):add_corner("oxygen"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="water", amount=40},
            {type="fluid", name="sludge", amount=40},
            {type="fluid", name="oxygen", amount=30},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=80},
            {type="fluid", name="oxidised-sludge", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "iron-oxidised-sludge-1",
        icons = du.icons("oxidised-sludge"):add_corner("base.iron-ore"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="oxidised-sludge", amount=40},
        },
        results = {
            {type="fluid", name="mineralized-water", amount=20},
            {type="item", name="iron-oxide", amount=4},
            {type="item", name="stone", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "manganese-oxidised-sludge-1",
        icons = du.icons("oxidised-sludge"):add_corner("manganese-oxides"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="oxidised-sludge", amount=40},
        },
        results = {
            {type="item", name="manganese-oxides", amount=2},
            {type="item", name="iron-oxide", amount=1},
            {type="item", name="stone", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "oxidised-sludge-separation-1",
        icons = du.icons("oxidised-sludge"):add_corner("zinc-ore"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="oxidised-sludge", amount=40},
        },
        results = {
            {type="item", name="manganese-oxides", amount=2},
            {type="item", name="iron-oxide", amount=2},
            {type="item", name="zinc-ore", amount=2},
            {type="item", name="manganese-ore", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "organic-wastewater-treatment",
        icons = du.icons("organic-wastewater"):add_corner("chlorine"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="organic-wastewater", amount=100},
            {type="fluid", name="chlorine", amount=300},
        },
        results = {
            {type="fluid", name="water", amount=80},
            {type="fluid", name="nutriment-sludge", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "sulfuric-wastewater-treatment-1",
        icons = du.icons("sulfuric-wastewater"):add_corner{mod="base",name="fluid/water"},
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 20,
        ingredients = {
            {type="fluid", name="sulfuric-wastewater", amount=100},
            {type="fluid", name="water", amount=300},
        },
        results = {
            {type="fluid", name="wastewater", amount=400},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "nutriment-sludge-treatment",
        icons = du.icons("nutriment-sludge"):add_corner("oxygen"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="nutriment-sludge", amount=100},
            {type="fluid", name="chlorine", amount=300},
            {type="item", name="cultivated-methanobacteria", amount=4},
        },
        results = {
            {type="fluid", name="water", amount=100},
            {type="fluid", name="methane", amount=100},
            {type="item", name="petri-dish", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfur-dioxide-1",
        icons = du.icons("sulfur-dioxide"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="hydrogen-sulfide", amount=100},
            {type="fluid", name="oxygen", amount=100},
        },
        results = {
            {type="fluid", name="sulfur-dioxide", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "empty-canister",
        icons = du.icons("empty-canister"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 2,
        ingredients = {
            {type="item", name="plastic-bar", amount=4},
        },
        results = {
            {type="item", name="empty-canister", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe",
        name = "oxygen-canister-filling",
        localised_name = {"label.canister-filling", {"fluid-name.oxygen"}},
        category = "crafting-with-fluid",
        energy_required = 1,
        ingredients = {
            {type="item", name="empty-canister", amount=1},
            {type="fluid", name="oxygen", amount=10},
        },
        results = {{type="item", name="oxygen-canister", amount=1}}
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "brazing-kit-acetylene",
        icons = du.icons("brazing-kit"):add_corner("acetylene"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 2,
        ingredients = {
            {type="item", name="bronze-plate", amount=4},
            {type="item", name="zinc-plate", amount=4},
            {type="item", name="acetylene-canister", amount=4},
            {type="item", name="oxygen-canister", amount=4},
        },
        results = {
            {type="item", name="brazing-kit", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "brazing-kit-aniline",
        icons = du.icons("brazing-kit"):add_corner("aniline"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 2,
        ingredients = {
            {type="item", name="bronze-plate", amount=4},
            {type="item", name="zinc-plate", amount=4},
            {type="item", name="aniline-canister", amount=4},
            {type="item", name="oxygen-canister", amount=4},
        },
        results = {
            {type="item", name="brazing-kit", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "small-parts-1",
        icons = du.icons("small-parts"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 10,
        ingredients = {
            {type="item", name="brazing-kit", amount=1},
            {type="item", name="aluminum-plate", amount=2},
            {type="item", name="aluminum-carbide", amount=1},
            {type="item", name="iron-gear-wheel", amount=4},
            {type="item", name="fiberboard", amount=1},
            {type="fluid", name="lubricant", amount=3},
        },
        results = {
            {type="item", name="small-parts", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "seawater-treatment",
        icons = du.icons("desalination"):add_corner("seawater"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="seawater", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=80},
            {type="fluid", name="saline-water", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "saline-water-treatment",
        icons = du.icons("desalination"):add_corner("saline-water"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="saline-water", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=80},
            {type="fluid", name="brine", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "brine-treatment",
        icons = du.icons("desalination"):add_corner("brine"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 4,
        ingredients = {
            {type="fluid", name="brine", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=80},
            {type="item", name="brine-salt", amount=2},
        }
    }
})
--[[
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "lens-1",
        icons = du.icons("lens"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="molten-glass", amount=6},
            {type="item", name="tin-plate", amount=1},
            {type="item", name="antimony-oxide", amount=1},
        },
        results = {
            {type="item", name="lens", amount=2},
        }
    }
})]]
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "weak-wastewater-void",
        icons = du.icons("wastewater"):add_corner("sodium-carbonate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="wastewater", amount=20},
            {type="item", name="sodium-carbonate", amount=1},
        },
        results = {
            {type="fluid", name="sludge", amount=2},
            {type="fluid", name="water", amount=18},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "activated-carbon-1",
        icons = du.icons("activated-carbon"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="activated-carbon", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "activated-carbon-2",
        icons = du.icons("activated-carbon"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="coke", amount=3},
            {type="item", name="zinc-plate", amount=1},
            {type="item", name="sodium-hydroxide", amount=1},
            {type="fluid", name="hydrogen-chloride", amount=10},
        },
        results = {
            {type="item", name="activated-carbon", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acid-gas-1",
        icons = du.icons("acid-gas"):add_corner("methanol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="methanol", amount=2},
            {type="fluid", name="flue-gas", amount=20},
        },
        results = {
            {type="fluid", name="acid-gas", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acid-gas-treatment-1",
        icons = du.icons("hydrogen-sulfide"):add_corner("acid-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="acid-gas", amount=10},
            {type="fluid", name="steam", amount=40, min_temperature=165},
        },
        results = {
            {type="fluid", name="hydrogen-sulfide", amount=3},
            {type="fluid", name="saturated-gas", amount=7},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acid-gas-treatment-2",
        icons = du.icons("hydrogen-sulfide"):add_corner("mdea"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="acid-gas", amount=10},
            {type="fluid", name="mdea", amount=2},
        },
        results = {
            {type="fluid", name="hydrogen-sulfide", amount=6},
            {type="fluid", name="carbon-dioxide", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acid-gas-treatment-3",
        icons = du.icons("hydrogen-sulfide"):add_corner("filter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="acid-gas", amount=10},
            {type="item", name="filter", amount=1},
        },
        results = {
            {type="fluid", name="hydrogen-sulfide", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfur-dioxide-1",
        icons = du.icons("sulfur-dioxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="hydrogen-sulfide", amount=100},
            {type="fluid", name="oxygen", amount=100},
            {type="item", name="alumina", amount=1},
        },
        results = {
            {type="fluid", name="wastewater", amount=10},
            {type="fluid", name="sulfur-dioxide", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfuric-acid-1",
        icons = du.icons{mod="base", name="fluid/sulfuric-acid"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="sulfur-dioxide", amount=100},
            {type="fluid", name="sulfuric-acid", amount=2},
            {type="fluid", name="water", amount=10},
        },
        results = {
            {type="fluid", name="sulfuric-acid", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "ammonium-chloride-1",
        icons = du.icons("ammonium-chloride"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="limestone", amount=1},
            {type="item", name="salt", amount=1},
            {type="fluid", name="ammonia", amount=6},
            {type="fluid", name="carbon-dioxide", amount=30},
        },
        results = {
            {type="item", name="sodium-carbonate", amount=1},
            {type="item", name="calcium-chloride", amount=1},
            {type="fluid", name="ammonium-chloride", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "copper-sulfate",
        icons = du.icons("copper-sulfate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-ingot", amount=1},
            {type="fluid", name="hydrogen-chloride", amount=30},
            {type="fluid", name="oxygen", amount=30},
        },
        results = {
            {type="item", name="copper-sulfate", amount=1},
            {type="fluid", name="wastewater", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "copper-hydroxide",
        icons = du.icons("copper-hydroxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-sulfate", amount=1},
            {type="item", name="sodium-hydroxide", amount=1},
            {type="fluid", name="ammonium-chloride", amount=10},
        },
        results = {
            {type="item", name="copper-hydroxide", amount=1},
            {type="item", name="sodium-sulfate", amount=1},
            {type="fluid", name="wastewater", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "rayon-1",
        icons = du.icons("rayon"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-hydroxide", amount=1},
            {type="fluid", name="ammonia", amount=20},
            {type="fluid", name="sulfuric-acid", amount=20},
            {type="fluid", name="water", amount=100},
            {type="item", name="cellulose", amount=6},
            {type="item", name="zinc-oxide", amount=1},
        },
        results = {
            {type="item", name="rayon", amount=1},
            {type="fluid", name="sulfuric-wastewater", amount=100},
            {type="fluid", name="acid-gas", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "photomask-1",
        icons = du.icons("photomask"):add_corner("rubylith"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="rubylith", amount=1},
            {type="fluid", name="organic-solvent", amount=20},
            {type="item", name="zinc-oxide", amount=5},
        },
        results = {
            {type="item", name="photomask", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "filter-1",
        icons = du.icons("filter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="zinc-plate", amount=6},
            {type="item", name="rayon", amount=4},
            {type="item", name="activated-carbon", amount=4},
            {type="item", name="silica", amount=12},
            {type="item", name="zinc-oxide", amount=1},
        },
        results = {
            {type="item", name="filter", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "saturated-gas-separation-1",
        icons = du.icons("saturated-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="saturated-gas", amount=60},
            {type="item", name="manganese-oxides", amount=1},
        },
        results = {
            {type="fluid", name="carbon-dioxide", amount=60},
            {type="fluid", name="steam", temperature=80, amount=240},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cladding",
        icons = du.icons("cladding"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="filter", amount=3},
            {type="item", name="small-parts", amount=3},
            {type="item", name="glowing-mangaloy-ingot", amount=1},
            {type="item", name="glass", amount=6},
            {type="item", name="rubylith", amount=12},
        },
        results = {
            {type="item", name="cladding", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cleanroom-tile",
        icons = du.icons("cleanroom-tile"),
        energy_required = 4,
        ingredients = {
            {type="item", name="concrete", amount=3},
            {type="item", name="cladding", amount=3},
        },
        results = {
            {type="item", name="cleanroom-tile", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cleanroom-wall",
        icons = du.icons("cleanroom-wall"),
        energy_required = 4,
        ingredients = {
            {type="item", name="cleanroom-tile", amount=1},
            {type="item", name="stone-wall", amount=1},
            {type="item", name="cladding", amount=2},
        },
        results = {
            {type="item", name="cleanroom-wall", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cleanroom-fluid-interface",
        icons = du.icons("cleanroom-fluid-interface"),
        energy_required = 4,
        ingredients = {
            {type="item", name="cleanroom-wall", amount=1},
            {type="item", name="pump", amount=2},
            {type="item", name="cladding", amount=2},
        },
        results = {
            {type="item", name="cleanroom-fluid-interface", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cleanroom-fluid-interface",
        icons = du.icons("cleanroom-fluid-interface"),
        energy_required = 4,
        ingredients = {
            {type="item", name="cleanroom-wall", amount=1},
            {type="item", name="pump", amount=2},
            {type="item", name="cladding", amount=2},
        },
        results = {
            {type="item", name="cleanroom-fluid-interface", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "cleanroom-controller",
        icons = du.icons("cleanroom-controller"),
        energy_required = 4,
        ingredients = {
            {type="item", name="computer-1", amount=1},
            {type="item", name="cladding", amount=2},
            {type="item", name="aluminum-cable", amount=12},
        },
        results = {
            {type="item", name="cleanroom-controller", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "clean-assembling-machine",
        icons = du.icons("clean-assembling-machine"),
        energy_required = 4,
        ingredients = {
            {type="item", name="cleanroom-controller", amount=1},
            {type="item", name="fabricator-1", amount=1},
        },
        results = {
            {type="item", name="clean-assembling-machine", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "vic-1",
        icons = du.icons("vic-1"),
        energy_required = 4,
        ingredients = {
            {type="item", name="fabricator-1", amount=1},
        },
        results = {
            {type="item", name="clean-assembling-machine", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "clean-inserter",
        icons = du.icons("clean-inserter"),
        energy_required = 4,
        ingredients = {
            {type="item", name="cleanroom-controller", amount=1},
            {type="item", name="fast-inserter", amount=1},
        },
        results = {
            {type="item", name="clean-inserter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "clean-long-handed-inserter",
        icons = du.icons("clean-long-handed-inserter"),
        energy_required = 4,
        ingredients = {
            {type="item", name="glowing-mangaloy-ingot", amount=1},
            {type="item", name="molybdenum-special-alloy", amount=1},
            {type="item", name="clean-inserter", amount=1},
        },
        results = {
            {type="item", name="clean-long-handed-inserter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "clean-pipe",
        icons = du.icons("clean-pipe"),
        energy_required = 1,
        ingredients = {
            {type="item", name="pipe", amount=1},
            {type="item", name="cladding", amount=1},
        },
        results = {
            {type="item", name="clean-pipe", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "clean-pipe-to-ground",
        icons = du.icons("clean-pipe-to-ground"),
        energy_required = 4,
        ingredients = {
            {type="item", name="clean-pipe", amount=12},
            {type="item", name="cladding", amount=12},
        },
        results = {
            {type="item", name="clean-pipe-to-ground", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "accumulator",
        icons = du.icons{mod="base", name="accumulator"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="stone-brick", amount=5},
            {type="item", name="battery", amount=4},
            {type="item", name="aluminum-cable", amount=24},
            {type="fluid", name="lubricant", amount=6},
        },
        results = {
            {type="item", name="accumulator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "solid-separator",
        icons = du.icons("solid-separator"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="steam-crusher", amount=1},
            {type="item", name="magnet-wire", amount=60},
            {type="item", name="ferrite", amount=12},
            {type="item", name="splitter", amount=4},
            {type="item", name="small-parts", amount=10},
            {type="item", name="steel-beam", amount=25},
        },
        results = {
            {type="item", name="solid-separator", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fast-transport-belt",
        icons = du.icons("base.fast-transport-belt"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="transport-belt", amount=1},
            {type="item", name="fiberglass", amount=1},
            {type="item", name="small-parts", amount=6},
        },
        results = {
            {type="item", name="fast-transport-belt", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fast-splitter",
        icons = du.icons("base.fast-splitter"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="fast-transport-belt", amount=1},
            {type="item", name="splitter", amount=1},
            {type="item", name="electronic-circuit", amount=6},
            {type="item", name="gearbox-1", amount=1},
        },
        results = {
            {type="item", name="fast-splitter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fast-underground-belt",
        icons = du.icons("base.fast-underground-belt"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="fast-transport-belt", amount=10},
            {type="item", name="gearbox-1", amount=2},
        },
        results = {
            {type="item", name="fast-underground-belt", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "machine-chassis",
        icons = du.icons("machine-chassis"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="concrete", amount=20},
            {type="item", name="steel-beam", amount=10},
            {type="item", name="glowing-mangaloy-ingot", amount=5},
            {type="item", name="aluminum-cable", amount=5},
            {type="item", name="electronic-circuit", amount=5},
            {type="item", name="pipe", amount=10},
        },
        results = {
            {type="item", name="machine-chassis", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "water-treatment-plant",
        icons = du.icons("water-treatment-plant"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="small-tank", amount=4},
            {type="item", name="chemical-plant", amount=1},
            {type="item", name="small-electric-motor", amount=10},
            {type="item", name="small-parts", amount=20},
            {type="item", name="machine-chassis", amount=1},
        },
        results = {
            {type="item", name="water-treatment-plant", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "computer-1",
        icons = du.alias("computer-1"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="electronic-circuit", amount=20},
            {type="item", name="solder", amount=10},
            {type="item", name="aluminum-plate", amount=20},
            {type="item", name="copper-cable", amount=40},
        },
        results = {
            {type="item", name="computer-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "processor-1",
        icons = du.alias("processor-1"),
        energy_required = 0.5,
        ingredients = {
            {type="item", name="computer-1", amount=4},
            {type="item", name="arithmetic-combinator", amount=12},
            {type="item", name="accumulator", amount=4},
            {type="item", name="small-parts", amount=20},
        },
        results = {
            {type="item", name="processor-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "storage-tank",
        icons = du.icons{mod="base",name="storage-tank"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="glowing-mangaloy-ingot", amount=2},
            {type="item", name="plastic-bar", amount=8},
            {type="item", name="glass", amount=6},
            {type="item", name="steel-beam", amount=6},
        },
        results = {
            {type="item", name="storage-tank", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "fast-inserter",
        icons = du.icons{mod="base",name="fast-inserter"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="inserter", amount=1},
            {type="item", name="small-electric-motor", amount=2},
            {type="item", name="battery", amount=1},
            {type="item", name="glowing-mangaloy-ingot", amount=1},
        },
        results = {
            {type="item", name="fast-inserter", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "computed-automation-science-pack-1",
        icons = du.icons("computed-automation-science-pack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="process", amount=1},
            {type="item", name="wave-gap-simulation", amount=1},
            {type="item", name="molybdenum-special-alloy", amount=2},
            {type="item", name="battery-alloy-plate", amount=2},
            {type="fluid", name="cpu-time", amount=2000},
        },
        results = {
            {type="item", name="process", amount=1},
            {type="item", name="computed-automation-science-pack", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "automation-science-pack",
        icons = du.icons("automation-science-pack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="computed-automation-science-pack", amount=1000},
            {type="item", name="gearbox-1", amount=1},
            {type="item", name="medium-electric-motor", amount=1},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="organic-solvent-barrel", amount=1},
            {type="item", name="nitric-acid-barrel", amount=1},
        },
        results = {
            {type="item", name="automation-science-pack", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "white-phosphorous-1",
        icons = du.icons("white-phosphorous"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 20,
        ingredients = {
            {type="item", name="coke", amount=20},
            {type="item", name="silica", amount=7},
            {type="item", name="phosphate-rock", amount=4},
            {type="fluid", name="oxygen", amount=100},
        },
        results = {
            {type="fluid", name="carbon-monoxide", amount=200},
            {type="fluid", name="steam", amount=50, temperature=500},
            {type="item", name="limestone", amount=18},
            {type="item", name="silica-sand", amount=6},
            {type="item", name="white-phosphorous", amount=4},
        }
    }
})
-- add recipe from bone ash
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "phosphine-1",
        icons = du.icons("phosphine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="white-phosphorous", amount=1},
            {type="item", name="sodium-hydroxide", amount=1},
        },
        results = {
            {type="fluid", name="phosphine", amount=4},
            {type="item", name="disodium-phosphate", probability=0.5, amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "water-treatment", ---@diagnostic disable-line
        name = "disodium-phosphate-void",
        icons = du.icons("wastewater"):add_corner("disodium-phosphate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="disodium-phosphate", amount=1},
            {type="item", name="limestone", amount=1},
            {type="fluid", name="caustic-solution", amount=2},
        },
        results = {
            {type="fluid", name="wastewater", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "solid-separation", ---@diagnostic disable-line
        name = "impure-molybdenum-concentrate",
        icons = du.icons("impure-molybdenum-concentrate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 8,
        ingredients = {
            {type="item", name="molybdenum-ore", amount=8},
            {type="item", name="sulfur", amount=1},
            {type="fluid", name="nitric-acid", amount=36}, -- as a replacement for ammonia
        },
        results = {
            {type="item", name="impure-molybdenum-concentrate", amount=6},
            {type="fluid", name="ammonia", amount=48},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "molybdenum-ingot",
        icons = du.icons("molybdenum-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 24,
        ingredients = {
            {type="item", name="impure-molybdenum-concentrate", amount=8},
            {type="fluid", name="hydrogen", amount=100},
        },
        results = {
            {type="item", name="molybdenum-ingot", amount=1},
            {type="fluid", name="steam", amount=100, temperature=500},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "molybdenum-special-alloy",
        icons = du.icons("molybdenum-special-alloy"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 24,
        ingredients = {
            {type="item", name="molybdenum-ingot", amount=1},
            {type="item", name="aluminum-ingot", amount=1},
            {type="item", name="steel-ingot", amount=1},
            {type="item", name="programatical-metalloid-analysis", amount=1},
            {type="item", name="nickel-ingot", amount=4},
            {type="item", name="white-phosphorous", amount=4},
        },
        results = {
            {type="item", name="molybdenum-special-alloy", amount=1},
            {type="item", name="program-harness", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "program-harness",
        icons = du.icons("program-harness"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 4,
        ingredients = {
            {type="item", name="small-lamp", amount=1},
            {type="item", name="constant-combinator", amount=1},
            {type="item", name="electronic-circuit", amount=1},
            {type="item", name="electromagnetic-science-pack", amount=1},
        },
        results = {
            {type="item", name="program-harness", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "blasting", ---@diagnostic disable-line
        name = "nitric-oxide-1",
        icons = du.icons("nitric-oxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ammonia", amount=4},
            {type="fluid", name="oxygen", amount=5},
            {type="item", name="nickel-plate", amount=1}, -- really uses platnium
        },
        results = {
            {type="fluid", name="nitric-oxide", amount=4},
            {type="fluid", name="nitrogen", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "nitrogen-dioxide-1",
        icons = du.icons("nitrogen-dioxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="nitric-oxide", amount=10},
            {type="fluid", name="oxygen", amount=10},
        },
        results = {
            {type="fluid", name="nitrogen-dioxide", amount=10},
            {type="fluid", name="steam", temperature=500, amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "dilute-nitric-acid-1",
        icons = du.icons("dilute-nitric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="fluid", name="nitrogen-dioxide", amount=10},
            {type="fluid", name="water", amount=10},
        },
        results = {
            {type="fluid", name="dilute-nitric-acid", amount=5},
            {type="fluid", name="nitric-oxide", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "boiling", ---@diagnostic disable-line
        name = "nitric-acid-1",
        icons = du.icons("nitric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = du.J(data.raw["assembling-machine"]["tube-boiler"].energy_usage) * 60 / data.raw["assembling-machine"]["tube-boiler"].energy_source.effectivity / (du.J(du.fluid("dilute-nitric-acid").heat_capacity) * 10 * (100 - du.fluid("dilute-nitric-acid").default_temperature)),
        ingredients = {
            {type="fluid", name="dilute-nitric-acid", amount=10},
            {type="item", name="nickel-plate", amount=1}, -- onsite repairs? or something ? nitric acid cannot be good for the boiler
        },
        results = {
            {type="fluid", name="steam", temperature=165, amount=100},
            {type="fluid", name="nitric-acid", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silicon-1",
        icons = du.icons("silicon"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 12,
        ingredients = {
            {type="item", name="silica", amount=3},
            {type="item", name="coal-dust", amount=1},
        },
        results = {
            {type="item", name="silicon", amount=1},
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
            -- metal halide UV light (tungsten comes later, cant use that, no mercury)
            -- refrigerant comes later, so no xenon/argon/noble gases
            {type="item", name="gaskets", amount=3},
            {type="item", name="small-lamp", amount=1},
            {type="item", name="cobalt-dust", amount=1},
            {type="item", name="molybdenum-special-alloy", amount=1},
            {type="item", name="lead-plate", amount=2},
            -- {type="fluid", name="xenon", amount=10}, -- (perhaps)
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
        name = "gaskets-1",
        icons = du.icons("gaskets"),
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="rubber", amount=3},
            {type="item", name="plastic-bar", amount=1},
            {type="item", name="sulfur", amount=1},
            {type="fluid", name="lubricant", amount=1},
        },
        results = {
            {type="item", name="gaskets", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "flying-robot-frame-1",
        icons = du.icons("base.flying-robot-frame"),
        enabled = false,
        category = "fabricating",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="wind-turbine-1", amount=1},
            {type="item", name="small-electric-motor", amount=6},
            {type="item", name="accumulator", amount=2},
            {type="item", name="molybdenum-special-alloy", amount=2},
            {type="item", name="radar", amount=1},
            {type="fluid", name="lubricant", amount=12},
        },
        results = {
            {type="item", name="flying-robot-frame", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "construction-robot-1",
        icons = du.icons("base.construction-robot"),
        enabled = false,
        category = "fabricating",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="flying-robot-frame", amount=1},
            {type="item", name="fast-inserter", amount=1},
            {type="item", name="brazing-kit", amount=1},
        },
        results = {
            {type="item", name="construction-robot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "crushed-manganese-ore-1",
        icons = du.icons("crushed-manganese-ore"),
        enabled = false,
        category = "crushing",
        subgroup = "raw-material",
        energy_required = 6,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="manganese-ore", amount=2},
        },
        results = {
            {type="item", name="crushed-manganese-ore", amount=4},
            {type="item", name="silica-sand", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "impure-manganese-concentrate-1",
        icons = du.icons("impure-manganese-concentrate"),
        enabled = false,
        category = "chemistry",
        subgroup = "raw-material",
        energy_required = 5,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="crushed-manganese-ore", amount=3},
            {type="fluid", name="middle-oil", amount=3},
            {type="fluid", name="organic-solvent", amount=12},
        },
        results = {
            {type="item", name="impure-manganese-concentrate", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-calcite-1",
        icons = du.icons("manganese-calcite"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 40,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="impure-manganese-concentrate", amount=3},
            {type="item", name="limestone", amount=4},
            {type="fluid", name="sulfuric-acid", amount=40},
        },
        results = {
            {type="item", name="manganese-calcite", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-precipitate-1",
        icons = du.icons("manganese-precipitate"),
        enabled = false,
        category = "water-treatment",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="manganese-calcite", amount=2},
            {type="fluid", name="ammonia", amount=20},
            {type="fluid", name="hydrogen-sulfide", amount=30},
        },
        results = {
            {type="item", name="manganese-precipitate", amount=4},
            {type="item", name="aluminum-hydroxide", amount=1},
            {type="fluid", name="acid-gas", amount=30},
            {type="fluid", name="oxidised-sludge", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "high-purity-manganese-concentrate-1",
        icons = du.icons("high-purity-manganese-concentrate"),
        enabled = false,
        category = "water-treatment",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="manganese-precipitate", amount=2},
            {type="fluid", name="ammonia", amount=20},
            {type="fluid", name="hydrogen-sulfide", amount=30},
        },
        results = {
            {type="item", name="high-purity-manganese-concentrate", amount=4},
            {type="fluid", name="acid-gas", amount=30},
            {type="fluid", name="oxidised-sludge", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-slime-1",
        icons = du.icons("manganese-slime"),
        enabled = false,
        category = "electrolysis",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="high-purity-manganese-concentrate", amount=6},
            {type="item", name="stainless-steel-plate", amount=1},
        },
        results = {
            {type="item", name="manganese-slime", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "silicon-2",
        icons = du.icons("silicon"):add_corner("coke"),
        enabled = false,
        category = "blasting",
        subgroup = "raw-material",
        energy_required = 8,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="silica", amount=6},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="silica", amount=2},
            {type="item", name="silicon", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "silicon-3",
        icons = du.icons("silicon"):add_corner("aluminum-ore"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 2,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="silica", amount=4},
            {type="item", name="aluminum-ingot", amount=1},
        },
        results = {
            {type="item", name="silicon", amount=2},
            {type="item", name="aluminum-hydroxide", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "phenolic-board-1",
        icons = du.icons("phenolic-board"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="copper-plate", amount=3},
            {type="item", name="fiberboard", amount=3},
            {type="item", name="phenolic-resin", amount=1},
            {type="fluid", name="organic-solvent", amount=3},
            {type="fluid", name="acetic-acid", amount=3},
        },
        results = {
            {type="item", name="phenolic-board", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "transistor-1",
        icons = du.icons("transistor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="silver-plate", amount=1},
            {type="item", name="silicon", amount=3},
            {type="item", name="plastic-bar", amount=1},
            {type="fluid", name="acetic-acid", amount=3},
            {type="fluid", name="phosphine", amount=3},
        },
        results = {
            {type="item", name="transistor", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "mv-resistor-1",
        icons = du.icons("mv-resistor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="copper-cable", amount=4},
            {type="item", name="molybdenum-ingot", amount=1},
            {type="item", name="fiberglass", amount=1},
            {type="item", name="brazing-kit", amount=1},
        },
        results = {
            {type="item", name="mv-resistor", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "mv-capacitor-1",
        icons = du.icons("mv-capacitor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="copper-cable", amount=4},
            {type="item", name="alumina", amount=2},
            {type="item", name="aluminum-plate", amount=2},
            {type="item", name="plastic-bar", amount=2},
            {type="fluid", name="acetic-acid", amount=12},
        },
        results = {
            {type="item", name="mv-capacitor", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "medium-electric-motor-1",
        icons = du.icons("medium-electric-motor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="silver-plate", amount=1},
            {type="item", name="transistor", amount=3},
            {type="item", name="aluminum-cable", amount=12},
            {type="item", name="rayon", amount=1},
            {type="item", name="phenolic-resin", amount=2},
            {type="item", name="solder", amount=8},
        },
        results = {
            {type="item", name="medium-electric-motor", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "advanced-circuit-1",
        icons = du.icons("base.advanced-circuit"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="phenolic-board", amount=1},
            {type="item", name="transistor", amount=6},
            {type="item", name="mv-resistor", amount=2},
            {type="item", name="mv-capacitor", amount=3},
            {type="item", name="solder", amount=3},
            {type="item", name="copper-cable", amount=8},
            {type="item", name="silver-plate", amount=1},
            {type="item", name="program-harness", amount=1},
        },
        results = {
            {type="item", name="advanced-circuit", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "phenolic-resin-1",
        icons = du.icons("phenolic-resin"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 24,
        ingredients = {
            {type="item", name="synthetic-resin", amount=1},
            {type="item", name="phenol", amount=4},
            {type="fluid", name="formaldehyde", amount=24},
        },
        results = {
            {type="item", name="phenolic-resin", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "fiberglass-1",
        icons = du.icons("fiberglass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="item", name="synthetic-resin", amount=1},
            {type="fluid", name="epoxy", amount=12},
            {type="fluid", name="molten-glass", amount=12},
        },
        results = {
            {type="item", name="fiberglass", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silicon-to-silica",
        icons = du.icons("silica"):add_corner("silicon"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="silicon", amount=1},
            {type="fluid", name="oxygen", amount=12},
        },
        results = {
            {type="item", name="silica", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silver-plate-1",
        icons = du.icons("silver-plate"),
        subgroup = "silver-smelting",
        order = "a[a]",
        main_product = "",
        energy_required = 24,
        ingredients = {
            {type="item", name="raw-silver-dust", amount=6},
            {type="item", name="lime", amount=6},
            {type="item", name="white-phosphorous", amount=1},
        },
        results = {
            {type="item", name="silver-plate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silver-plate-2",
        icons = du.icons("silver-plate"):add_corner("silver-slime"),
        subgroup = "silver-smelting",
        order = "a[b]",
        main_product = "",
        energy_required = 24,
        ingredients = {
            {type="item", name="silver-slime", amount=1},
            {type="item", name="lime", amount=6},
            {type="item", name="white-phosphorous", amount=1},
        },
        results = {
            {type="item", name="silver-plate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "silver-slime-1",
        icons = du.icons("silver-slime"):add_corner("raw-silver-dust"),
        subgroup = "silver-ore-processing",
        order = "a-a",
        main_product = "",
        energy_required = 40,
        ingredients = {
            {type="item", name="raw-silver-dust", amount=4},
            {type="fluid", name="acetic-acid", amount=24},
        },
        results = {
            {type="item", name="silver-slime", amount=1},
            {type="fluid", name="wastewater", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "impure-lead-concentrate-1",
        icons = du.icons("impure-lead-concentrate"):add_corner("silver-slime"),
        subgroup = "lead-ore-processing",
        order = "b",
        main_product = "",
        energy_required = 6,
        ingredients = {
            -- lead should be molten
            -- should remove all silver
            {type="item", name="crushed-lead-ore", amount=8},
            {type="fluid", name="zinc-gas", amount=20},
        },
        results = {
            {type="item", name="impure-lead-concentrate", amount=4},
            {type="item", name="silver-slime", probability=0.5, amount=1},
            {type="item", name="zinc-ingot", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "crushed-lead-ore-1",
        icons = du.icons("crushed-lead-ore"),
        subgroup = "lead-ore-processing",
        order = "a",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="item", name="lead-ore", amount=4},
        },
        results = {
            {type="item", name="crushed-lead-ore", amount=6},
            {type="item", name="stone", amount=1},
        }
    }
})
-- TODO: Add lead to more recipes
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "lead-oxite-1",
        icons = du.icons("lead-oxite"),
        subgroup = "lead-ore-processing",
        order = "d",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="impure-lead-concentrate", amount=2},
            {type="fluid", name="oxygen", amount=40},
        },
        results = {
            {type="item", name="lead-oxite", amount=4},
            {type="item", name="impure-zinc-concentrate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "radiating", ---@diagnostic disable-line
        name = "water-radiating",
        icons = du.icons("steam"):add_corner("base.fluid/water"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=20},
        },
        results = {
            {type="fluid", name="water", temperature=80, amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "ferrite-2",
        icons = du.icons("ferrite"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 0.25,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="iron-oxide", amount=6},
            {type="item", name="manganese-dioxide", amount=1},
        },
        results ={
            {type="item", name="ferrite", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "battery-3",
        icons = du.icons("base.battery"),
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="cellulose", amount=3},
            {type="item", name="graphite-dust", amount=12},
            {type="item", name="battery-alloy-plate", amount=3},
            {type="item", name="manganese-dioxide", amount=3},
            {type="fluid", name="ammonia", amount=10},
        },
        results ={
            {type="item", name="battery", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "impure-manganese-concentrate-2",
        icons = du.icons("impure-manganese-concentrate"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="manganese-oxides", amount=6},
        },
        results ={
            {type="item", name="impure-manganese-concentrate", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-dioxide-1",
        icons = du.icons("manganese-dioxide"),
        enabled = false,
        category = "chemistry",
        subgroup = "raw-material",
        energy_required = 4,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="impure-manganese-concentrate", amount=2},
            {type="fluid", name="hydrochloric-acid", amount=10},
            {type="fluid", name="caustic-solution", amount=10},
        },
        results ={
            {type="item", name="manganese-dioxide", amount=3},
            {type="fluid", name="mineralized-water", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "manganese-dioxide-2",
        icons = du.icons("manganese-dioxide"),
        enabled = false,
        category = "smelting",
        subgroup = "raw-material",
        energy_required = 20,
        order = "a",
        main_product = "",
        ingredients = {
            {type="item", name="manganese-calcite", amount=6},
            {type="fluid", name="oxygen", amount=100},
        },
        results ={
            {type="item", name="manganese-dioxide", amount=9},
            {type="fluid", name="sulfur-dioxide", amount=40},
        }
    }
})