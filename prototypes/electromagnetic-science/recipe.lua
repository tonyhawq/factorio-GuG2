local du = require("dutil")

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
            {type="fluid", name="heavy-oil", amount=12},
        },
        results ={
            {type="item", name="glowing-mangaloy-ingot", amount=1},
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
        enabled = false,
        category = "glassworking", ---@diagnostic disable-line
        name = "soda-glass",
        icons = du.icons("molten-glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
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
        name = "chemical-plant",
        icons = du.icons{mod="base", name="chemical-plant"},
        energy_required = 1,
        ingredients = {
            {type="item", name="burner-chemical-plant", amount=1},
            {type="item", name="small-electric-motor", amount=3},
            {type="item", name="aluminum-plate", amount=3},
            {type="item", name="steel-beam", amount=4},
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
        category = "fabricating", ---@diagnostic disable-line
        name = "small-parts-1",
        icons = du.icons("small-parts"),
        main_product = "",
        subgroup = "raw-material",
        order = "a[a]",
        energy_required = 10,
        ingredients = {
            {type="item", name="plastic-bar", amount=12},
            {type="item", name="aluminum-plate", amount=12},
            {type="item", name="aluminum-carbide", amount=6},
            {type="item", name="iron-gear-wheel", amount=10},
            {type="item", name="fiberboard", amount=6},
            {type="fluid", name="lubricant", amount=6},
        },
        results = {
            {type="item", name="small-parts", amount=60},
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
            {type="fluid", name="methanol", amount=10},
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
            {type="fluid", name="steam", amount=40, temperature=165},
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
            {type="item", name="plastic-bar", amount=3},
            {type="item", name="rubber", amount=3},
            {type="item", name="glowing-mangaloy-ingot", amount=1},
            {type="item", name="glass", amount=6},
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
            {type="item", name="machine-chassis", amount=1},
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
        name = "medium-electric-pole",
        icons = du.icons{mod="base",name="medium-electric-pole"},
        energy_required = 0.5,
        ingredients = {
            {type="item", name="glowing-mangaloy-ingot", amount=1},
            {type="item", name="plastic-bar", amount=8},
            {type="item", name="small-electric-pole", amount=4},
        },
        results = {
            {type="item", name="medium-electric-pole", amount=4},
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