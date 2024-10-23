local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "crude-oil-fractioning",
        icons = du.icons("crude-oil-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="crude-oil", amount=100},
            {type="fluid", name="water", amount=200},
        },
        results = {
            {type="fluid", name="heavy-distillates", amount=30},
            {type="fluid", name="medium-distillates", amount=45},
            {type="fluid", name="light-distillates", amount=25},
            {type="fluid", name="residuals", amount=10},
            {type="item", name="bitumen", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "heavy-distillates-fractioning",
        icons = du.icons("heavy-distillates-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="heavy-distillates", amount=100},
        },
        results = {
            {type="fluid", name="heavy-naphtha", amount=20},
            {type="fluid", name="heavy-oil", amount=30},
            {type="fluid", name="diesel", amount=50},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "medium-distillates-fractioning",
        icons = du.icons("medium-distillates-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="medium-distillates", amount=100},
        },
        results = {
            {type="fluid", name="light-naphtha", amount=30},
            {type="fluid", name="fuel-oil", amount=30},
            {type="fluid", name="gasoline", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "light-distillates-fractioning",
        icons = du.icons("light-distillates-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-distillates", amount=100},
        },
        results = {
            {type="fluid", name="petroleum-gas", amount=20},
            {type="fluid", name="raw-kerosene", amount=30},
            {type="fluid", name="light-naphtha", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "residuals-fractioning",
        icons = du.icons("light-distillates-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="residuals", amount=100},
        },
        results = {
            {type="fluid", name="raw-lubricating-oil", amount=20},
            {type="fluid", name="condensates", amount=30},
            {type="fluid", name="hvgo", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "condensates-fractioning",
        icons = du.icons("light-distillates-fractioning"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="condensates", amount=100},
        },
        results = {
            {type="fluid", name="natural-gas", amount=20},
            {type="fluid", name="heavy-oil", amount=30},
        }
    }
})


data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "raw-kerosene-treating",
        icons = du.icons("kerosene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="raw-kerosene", amount=100},
            {type="fluid", name="hydrogen", amount=100},
        },
        results = {
            {type="fluid", name="kerosene", amount=100},
            {type="fluid", name="hydrogen-sulfide", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gasoline-pyrolysis",
        icons = du.icons("gasoline-pyrolysis"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gasoline", amount=100},
        },
        results = {
            {type="fluid", name="btx", amount=20},
            {type="fluid", name="hvgo", amount=30},
            {type="fluid", name="petroleum-gas", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "fcc-gasoline",
        icons = du.icons("gasoline-pyrolysis"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gasoline", amount=100},
            {type="fluid", name="hvgo", amount=30},
        },
        results = {
            {type="fluid", name="light-naphtha", amount=100},
            {type="fluid", name="ethylene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gasoline-to-styrene",
        icons = du.icons("gasoline-pyrolysis"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gasoline", amount=100},
            {type="fluid", name="lvgo", amount=30},
        },
        results = {
            {type="fluid", name="gas-oil", amount=100},
            {type="fluid", name="styrene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "petroleum-gas-cracking",
        icons = du.icons("petroleum-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=100},
        },
        results = {
            {type="fluid", name="ethylene", amount=5},
            {type="fluid", name="methane", amount=60},
            {type="fluid", name="butane", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "light-naphtha-cracking",
        icons = du.icons("light-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-naphtha", amount=100},
        },
        results = {
            {type="fluid", name="ethylene", amount=100},
            {type="fluid", name="propylene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "mixed-naphtha-cracking",
        icons = du.icons("light-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-naphtha", amount=100},
            {type="fluid", name="heavy-naphtha", amount=100},
        },
        results = {
            {type="fluid", name="propylene", amount=100},
            {type="fluid", name="butadiene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "heavy-naphtha-cracking",
        icons = du.icons("light-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="heavy-naphtha", amount=100},
        },
        results = {
            {type="fluid", name="butadiene", amount=100},
            {type="fluid", name="benzene", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gasoline-from-heavy-naphtha",
        icons = du.icons("gasoline").add_corner("heavy-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="heavy-naphtha", amount=100},
            {type="fluid", name="fuel-oil", amount=100},
        },
        results = {
            {type="fluid", name="gasoline", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gasoline-from-light-naphtha",
        icons = du.icons("gasoline").add_corner("light-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-naphtha", amount=100},
            {type="fluid", name="btx", amount=10},
        },
        results = {
            {type="fluid", name="gasoline", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "fuel-oil-from-light-gas-oil",
        icons = du.icons("fuel-oil").add_corner("light-gas-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-gas-oil", amount=100},
            {type="fluid", name="heavy-gas-oil", amount=20},
            {type="fluid", name="diesel", amount=20},
        },
        results = {
            {type="fluid", name="fuel-oil", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "fuel-oil-from-heavy-gas-oil",
        icons = du.icons("fuel-oil").add_corner("heavy-gas-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-gas-oil", amount=20},
            {type="fluid", name="heavy-gas-oil", amount=100},
            {type="fluid", name="gasoline", amount=20},
        },
        results = {
            {type="fluid", name="fuel-oil", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "mixed-gas-oil-from-kerosene",
        icons = du.icons("gas-oil").add_corner("kerosene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="kerosene", amount=100},
            {type="fluid", name="diesel", amount=20},
        },
        results = {
            {type="fluid", name="gas-oil", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "gas-oil-separation",
        icons = du.icons("gas-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="gas-oil", amount=100},
        },
        results = {
            {type="fluid", name="light-gas-oil", amount=40},
            {type="fluid", name="heavy-gas-oil", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "btx-separation",
        icons = du.icons("btx"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="btx", amount=100},
        },
        results = {
            {type="fluid", name="benzene", amount=50},
            {type="fluid", name="toluene", amount=40},
            {type="fluid", name="xylenes", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "diesel-cracking",
        icons = du.icons("diesel"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="diesel", amount=100},
        },
        results = {
            {type="fluid", name="gasoline", amount=50},
            {type="fluid", name="petroleum-gas", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "fcc-heavy-oil",
        icons = du.icons("__base__/graphics/icons/fluid/heavy-oil.png", 64, true),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="heavy-oil", amount=100},
        },
        results = {
            {type="fluid", name="heavy-naphtha", amount=50},
            {type="fluid", name="diesel", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe",
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "diesel-from-heavy-oil",
        icons = du.icons("diesel").add_corner("__base__/graphics/icons/fluid/heavy-oil.png", 64, true),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="heavy-oil", amount=100},
            {type="fluid", name="gasoline", amount=20},
        },
        results = {
            {type="fluid", name="diesel", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe",
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "raw-lubricating-oil",
        icons = du.icons("raw-lubricating-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="hvgo", amount=100},
            {type="fluid", name="heavy-oil", amount=20},
            {type="item", name="aluminum-hydroxide", amount=1},
        },
        results = {
            {type="fluid", name="raw-lubricating-oil", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe",
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "fuel-oil-cracking",
        icons = du.icons("fuel-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="fuel-oil", amount=100},
        },
        results = {
            {type="fluid", name="heavy-oil", amount=60},
            {type="fluid", name="kerosene", amount=60},
            {type="fluid", name="hvgo", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe",
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "hvgo-cracking",
        icons = du.icons("fuel-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="hvgo", amount=100},
        },
        results = {
            {type="fluid", name="lvgo", amount=60},
            {type="fluid", name="heavy-gas-oil", amount=60},
        }
    }
})










data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "acrylonitrile",
        icons = du.icons_ext{name="acrylonitrile"}.add_corner("propylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="propylene", amount=50},
            {type="fluid", name="ammonia", amount=70},
            {type="fluid", name="oxygen", amount=150},
            {type="item", name="bismuth", amount=1},
        },
        results = {
            {type="fluid", name="acrylonitrile", amount=60},
            {type="fluid", name="flue-gas", amount=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "plastic-polypropylene",
        icons = du.icons_ext{name="plastic-bar", mod="base"}.add_corner("propylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ethylene", amount=30},
            {type="fluid", name="propylene", amount=100},
        },
        results = {
            {type="fluid", name="molten-plastic", amount=25},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "plastic-polypropylene-2",
        icons = du.icons_ext{name="plastic-bar", mod="base"}.add_corner("propylene").add_corner("anthracene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ethylene", amount=30},
            {type="fluid", name="propylene", amount=100},
            {type="fluid", name="anthracene", amount=15},
        },
        results = {
            {type="fluid", name="molten-plastic", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "plastic-pvc-1",
        icons = du.icons_ext{name="plastic-bar", mod="base"}.add_corner("acetylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="acetylene", amount=100},
            {type="fluid", name="hydrogen-chloride", amount=200},
            {type="item", name="lead-sulfate", amount=2},
            {type="item", name="coal-dust", amount=2},
            {type="item", name="bound-porcelain", amount=1},
        },
        results = {
            {type="item", name="plastic-bar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "plastic-pvc-2",
        icons = du.icons_ext{name="plastic-bar", mod="base"}.add_corner("ethylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ethylene", amount=100},
            {type="fluid", name="hydrogen-chloride", amount=200},
            {type="item", name="lead-sulfate", amount=2},
        },
        results = {
            {type="fluid", name="molten-plastic", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "rubber-sbr",
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="styrene", amount=200},
            {type="fluid", name="butadiene", amount=100},
        },
        results = {
            {type="item", name="rubber-stock", amount=20},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "polymer-additives-1",
        icons = du.icons("polymer-additives").add_corner("bound-porcelain"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="bound-porcelain", amount=1},
            {type="item", name="alumina", amount=3},
            {type="item", name="silica", amount=3},
            {type="item", name="coal-dust", amount=2},
        },
        results = {
            {type="item", name="polymer-additives", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "polymer-additives-2",
        icons = du.icons("polymer-additives").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="glycerol", amount=2},
            {type="item", name="alumina", amount=3},
            {type="item", name="silica", amount=3},
            {type="item", name="graphite", amount=2},
        },
        results = {
            {type="item", name="polymer-additives", amount=6},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "low-quality-plastic",
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="polymer-additives", amount=12},
            {type="fluid", name="molten-plastic", amount=50},
        },
        results = {
            {type="item", name="plastic-bar", amount=5},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "finished-plastic",
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="polymer-additives", amount=1},
            {type="fluid", name="molten-plastic", amount=25},
        },
        results = {
            {type="item", name="plastic-bar", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "high-quality-plastic",
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="polymer-additives", amount=2},
            {type="fluid", name="hals", amount=5},
            {type="fluid", name="acrylonitrile", amount=2},
            {type="fluid", name="molten-plastic", amount=25},
        },
        results = {
            {type="item", name="plastic-bar", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "hals", -- 2,2,6,6-Tetramethylpiperidine
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="acetone", amount=30},
            {type="fluid", name="ethanol", amount=15},
            {type="fluid", name="hydrochloric-acid", amount=10},
            {type="item", name="hydrazine-barrel", amount=1},
            {type="fluid", name="ammonia", amount=30},
            {type="item", name="potassium-hydroxide", amount=2},

        },
        results = {
            {type="fluid", name="hals", amount=30},
            {type="fluid", name="steam", amount=30, temperature=300},
            {type="item", name="barrel", amount=1},
        }
    }
})


data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "finished-rubber",
        icons = du.icons("rubber").add_corner("styrene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="rubber-stock", amount=3},
            {type="item", name="carbon-black", amount=1},
            {type="item", name="aluminum-hydroxide", amount=1},
            {type="item", name="sulfur", amount=1},
        },
        results = {
            {type="item", name="rubber", amount=3},
        }
    }
})
