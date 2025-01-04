local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "trichlorosilane-1",
        icons = du.icons("trichlorosilane"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 10,
        order = "a",
        ingredients = {
            {type="fluid", name="hydrogen", amount=200},
            {type="fluid", name="silicon-tetrachloride", amount=300},
            {type="item", name="silicon", amount=10},
        },
        results ={
            {type="fluid", name="trichlorosilane", amount=400, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "silicon-tetrachloride-jump-1",
        icons = du.icons("trichlorosilane"):add_corner("chlorine"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 20,
        order = "a",
        ingredients = {
            {type="fluid", name="chlorine", amount=400},
            {type="item", name="silicon", amount=20},
        },
        results ={
            {type="fluid", name="trichlorosilane", amount=100, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "trichlorosilane-dichlorosilane-1",
        icons = du.icons("dichlorosilane"):add_corner("trichlorosilane"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 10,
        order = "a",
        ingredients = {
            {type="fluid", name="trichlorosilane", amount=200},
        },
        results ={
            {type="fluid", name="dichlorosilane", amount=100, fluidbox_index = 2},
            {type="fluid", name="silicon-tetrachloride", amount=100, fluidbox_index = 3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "dichlorosilane-1",
        icons = du.icons("dichlorosilane"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 10,
        order = "a",
        ingredients = {
            {type="fluid", name="trichlorosilane", amount=200},
        },
        results ={
            {type="fluid", name="dichlorosilane", amount=100, fluidbox_index = 2},
            {type="fluid", name="silicon-tetrachloride", amount=100, fluidbox_index = 3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "dichlorosilane-chlorosilane-1",
        icons = du.icons("chlorosilane"):add_corner("dichlorosilane"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 10,
        order = "a",
        ingredients = {
            {type="fluid", name="dichlorosilane", amount=200},
        },
        results ={
            {type="fluid", name="trichlorosilane", amount=100, fluidbox_index = 2},
            {type="fluid", name="chlorosilane", amount=100, fluidbox_index = 4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        name = "silane-1",
        icons = du.icons("silane"),
        enabled = false,
        main_product = "",
        category = "distillation",
        subgroup = "raw-material",
        energy_required = 10,
        order = "a",
        ingredients = {
            {type="fluid", name="chlorosilane", amount=200},
        },
        results ={
            {type="fluid", name="silane", amount=100, fluidbox_index = 4},
            {type="fluid", name="dichlorosilane", amount=100, fluidbox_index = 2},
        }
    }
})

-- wafer production begins with treatment of the wafer
-- simple-wafer has large enough feature size to not require Hexamethyldisilazane
-- cleaning is done with pure water, acetone and methanol
-- simplification of nMOS 3 step etching is done by giving 1/3 finished products and 2/3 ingredients
-- pre-etching steps
-- potassium hydroxide or
-- alternatively, tetramethylammonium hydroxide
-- etching fluids:
-- hydrofluoric acid & ammonium fluoride
-- ethylenediamene pyrocatechol
-- tetramethylammonium hydroxide
-- more potassium hydroxide

-- TODO: meaningful byproducts that are "realistic"!

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "clean-crafting", ---@diagnostic disable-line
        name = "wafer-dicing",
        icons = du.icons("silicon-wafer"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="silicon-boule", amount=1},
            {type="fluid", name="acetone", amount=36},
            {type="fluid", name="alcohol-solvent", amount=36},
        },
        results = {
            {type="item", name="silicon-wafer", amount=12},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "photoresist",
        icons = du.icons("photoresist"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="middle-oil", amount=30},
            {type="fluid", name="nitric-acid", amount=10},
            {type="fluid", name="hydrogen", amount=100},
            {type="item", name="barrel", amount=1},
        },
        results = {
            {type="item", name="photoresist", amount=1},
            {type="fluid", name="wastewater", amount=40},
            {type="fluid", name="ammonia", amount=100},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "clean-crafting", ---@diagnostic disable-line
        name = "pre-etched-simple-wafer",
        icons = du.icons("pre-etched-simple-wafer"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            -- doped as p type
            {type="item", name="silicon-wafer", amount=5},
            {type="item", name="photoresist", amount=5},
            {type="item", name="silica", amount=1},
            {type="item", name="polysilicon", amount=1},
        },
        results = {
            {type="item", name="pre-etched-simple-wafer", amount=5, probability=0.9},
            {type="item", name="barrel", amount=5},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "clean-crafting", ---@diagnostic disable-line
        name = "simple-wafer-lithography",
        icons = du.icons("lithographed-simple-wafer"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="item", name="pre-etched-simple-wafer", amount=6},
            {type="item", name="photomask", amount=6},
            {type="item", name="high-discharge-lamp", amount=1},
        },
        results = {
            {type="item", name="lithographed-simple-wafer", amount=6},
            {type="item", name="photomask", amount=6, probability=0.95},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "clean-crafting", ---@diagnostic disable-line
        name = "simple-wafer-etching",
        icons = du.icons("simple-wafer"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="lithographed-simple-wafer", amount=1},
            {type="item", name="barrel", amount=1},
            {type="fluid", name="ethylene", amount=40},
            {type="fluid", name="chlorine", amount=400},
            --{type="fluid", name="ammonium-fluoride", amount=1},
            --{type="fluid", name="hydrofluoric-acid", amount=1},
        },
        results = {
            {type="item", name="simple-wafer", amount=1, probability=1/3},
            {type="item", name="pre-etched-simple-wafer", amount=1, probability=2/3},
            {type="item", name="barrel", amount=1, probability=5/6},
            {type="item", name="photoresist", amount=1, probability=1/6},
            {type="fluid", name="hydrochloric-acid", amount=10},
        }
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "integrated-circuit-die",
        icons = du.icons("integrated-circuit-die"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="simple-wafer", amount=1},
            -- selective p doping
            {type="fluid", name="phosphine", amount=20},
            {type="fluid", name="500c", amount=20},
        },
        results = {
            {type="item", name="integrated-circuit-die", amount=6},
            {type="fluid", name="300c", amount=20},
        }
    },
})