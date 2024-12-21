local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "raw-kerosene-treating",
        icons = du.icons("kerosene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="raw-kerosene", amount=100},
            {type="fluid", name="hydrogen", amount=40},
        },
        results = {
            {type="fluid", name="kerosene", amount=100},
            {type="fluid", name="acid-gas", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "gasoline-from-heavy-naphtha",
        icons = du.icons("gasoline"):add_corner("heavy-naphtha"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "gasoline-from-light-naphtha",
        icons = du.icons("gasoline"):add_corner("light-naphtha"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "fuel-oil-from-light-gas-oil",
        icons = du.icons("fuel-oil"):add_corner("light-gas-oil"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "fuel-oil-from-heavy-gas-oil",
        icons = du.icons("fuel-oil"):add_corner("heavy-gas-oil"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "mixed-gas-oil-from-kerosene",
        icons = du.icons("gas-oil"):add_corner("kerosene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        type = "recipe",
        always_show_made_in = true,
        category = "oil-processing", ---@diagnostic disable-line
        name = "diesel-from-heavy-oil",
        icons = du.icons("diesel"):add_corner("__base__/graphics/icons/fluid/heavy-oil.png", 64, true),
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
        enabled = false,
        type = "recipe",
        always_show_made_in = true,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        type = "recipe",
        always_show_made_in = true,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        type = "recipe",
        always_show_made_in = true,
        category = "oil-processing", ---@diagnostic disable-line
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "cumene",
        icons = du.icons("cumene"):add_corner("propylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="propylene", amount=20},
            {type="fluid", name="benzene", amount=70},
            {type="fluid", name="sulfuric-acid", amount=10},
            {type="item", name="aluminum-plate", amount=1}, -- aluminum trichloride
        },
        results = {
            {type="fluid", name="cumene", amount=60},
            {type="fluid", name="wastewater", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "phenol-1",
        icons = du.icons("phenol"):add_corner("carbolic-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="carbolic-acid", amount=50},
        },
        results = {
            {type="item", name="phenol", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "aniline-1",
        icons = du.icons("aniline"):add_corner("phenol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ammonia", amount=50},
            {type="fluid", name="hydrochloric-acid", amount=5},
            {type="fluid", name="organic-solvent", amount=5},
            {type="item", name="phenol", amount=5},
            {type="item", name="alumina", amount=1},
        },
        results = {
            {type="fluid", name="aniline", amount=50},
            {type="fluid", name="brine", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "aniline-2",
        icons = du.icons("aniline"):add_corner("phenol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ammonia", amount=50},
            {type="item", name="phenol", amount=10},
            {type="item", name="alumina", amount=1},
            {type="item", name="silica", amount=1},
        },
        results = {
            {type="fluid", name="aniline", amount=100},
            {type="fluid", name="cyclohexanone", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "phenol-2",
        icons = du.icons("phenol"):add_corner("cumene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="cumene", amount=50},
            {type="fluid", name="oxygen", amount=50},
        },
        results = {
            {type="item", name="phenol", amount=10},
            {type="fluid", name="acetone", amount=50},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "phenol-3",
        icons = du.icons("isopropyl-alcohol"):add_corner("phenol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="cumene", amount=50},
            {type="fluid", name="oxygen", amount=50},
            {type="item", name="nickel-plate", amount=6},
        },
        results = {
            {type="item", name="phenol", amount=3},
            {type="fluid", name="acetone", amount=30},
            {type="fluid", name="isopropyl-alcohol", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "epichlorohydrin-1",
        icons = du.icons("epichlorohydrin"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="propylene", amount=20},
            {type="fluid", name="chlorine", amount=50},
            {type="fluid", name="water", amount=20},
            {type="item", name="cobalt-dust", amount=1},
            {type="item", name="sodium-hydroxide", amount=1},
        },
        results = {
            {type="fluid", name="epichlorohydrin", amount=20},
            {type="fluid", name="wastewater", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "bpa-1",
        icons = du.icons("bpa"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="organic-solvent", amount=20},
            {type="fluid", name="acetone", amount=36},
            {type="fluid", name="sulfuric-acid", amount=10},
            {type="item", name="phenol", amount=6},
            {type="item", name="cobalt-dust", amount=1},
        },
        results = {
            {type="fluid", name="bpa", amount=20},
            {type="fluid", name="water", amount=20},
            {type="fluid", name="sulfuric-acid", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "epoxy-1",
        icons = du.icons("epoxy"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="bpa", amount=20},
            {type="fluid", name="epichlorohydrin", amount=20},
        },
        results = {
            {type="fluid", name="epoxy", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "organic-solvent-1",
        icons = du.icons("organic-solvent"):add_corner("tar"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="carbolic-acid", amount=20},
            {type="fluid", name="btx", amount=10},
            {type="item", name="urea", amount=2},
        },
        results = {
            {type="fluid", name="organic-solvent", amount=20},
            {type="fluid", name="btx", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "methlyamine-1",
        icons = du.icons("methylamine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ammonia", amount=20},
            {type="fluid", name="methanol", amount=10},
            -- {type="item", name="aluminosilicate-catalyst", amount=1},
        },
        results = {
            {type="fluid", name="methylamine", amount=20},
            {type="fluid", name="trimethylamine", amount=20}, -- used in tetramethylammonium hydroxide
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "mdea",
        icons = du.icons("mdea"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="methylamine", amount=20},
            {type="fluid", name="ethylene", amount=20},
            -- {type="item", name="aluminosilicate-catalyst", amount=1},
        },
        results = {
            {type="fluid", name="mdea", amount=20},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fuel-refining", ---@diagnostic disable-line
        name = "solid-fuel-fuel-oil",
        icons = du.icons{mod="base",name="solid-fuel"}:add_corner("fuel-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=20},
            {type="fluid", name="fuel-oil", amount=20},
        },
        results = {
            {type="item", name="solid-fuel", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fuel-refining", ---@diagnostic disable-line
        name = "solid-fuel-kerosene",
        icons = du.icons{mod="base",name="solid-fuel"}:add_corner("kerosene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=20},
            {type="fluid", name="kerosene", amount=5},
        },
        results = {
            {type="item", name="solid-fuel", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fuel-refining", ---@diagnostic disable-line
        name = "solid-fuel-gas-oil",
        icons = du.icons{mod="base",name="solid-fuel"}:add_corner("gas-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=20},
            {type="fluid", name="gas-oil", amount=40},
        },
        results = {
            {type="item", name="solid-fuel", amount=3},
        }
    }
})
local function solid_fuel_localised_desc(recp)
    local got = du.recipe(recp)
    local in_mj = 0
    for _, ingred in pairs(got.ingredients) do
        if ingred.type == "fluid" then
            local fluid = du.fluid(ingred.name)
            if fluid.fuel_value then
                in_mj = in_mj + du.MJ(fluid.fuel_value) * ingred.amount
            end
        end
    end
    local out_mj = 0
    for _, result in pairs(got.results) do
        if result.type == "item" then
            local item = du.item(result.name)
            if item.fuel_value then
                out_mj = out_mj + du.MJ(item.fuel_value) * result.amount
            end
        end
    end
    got.localised_description = {"label.fluid_input_to_solid_output", tostring(in_mj), "MJ", tostring(out_mj), "MJ"}
end
solid_fuel_localised_desc("solid-fuel-fuel-oil")
solid_fuel_localised_desc("solid-fuel-gas-oil")
solid_fuel_localised_desc("solid-fuel-kerosene")






data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "acrylonitrile",
        icons = du.icons{name="acrylonitrile"}:add_corner("propylene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "plastic-polypropylene",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("propylene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "plastic-pet",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("pet-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="pet-solution", amount=50},
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
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "rubylith",
        icons = du.icons("rubylith"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="pet-solution", amount=30},
            {type="fluid", name="middle-oil", amount=100},
            -- add a different (interesting) dye
        },
        results = {
            {type="item", name="rubylith", amount=6},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "ethylene-glycol-1",
        icons = du.icons("ethylene-glycol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="ethylene", amount=20},
            {type="fluid", name="water", amount=400},
            -- more interesting recipes possible
        },
        results = {
            {type="fluid", name="ethylene-glycol", amount=20},
            {type="fluid", name="wastewater", amount=400},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acetic-acid-1",
        icons = du.icons("acetic-acid"):add_corner("acetylene"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="acetylene", amount=20},
            {type="fluid", name="oxygen", amount=30},
        },
        results = {
            {type="fluid", name="acetic-acid", amount=15},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acetic-acid-2",
        icons = du.icons("acetic-acid"):add_corner("light-naphtha"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="light-naphtha", amount=20},
            {type="fluid", name="oxygen", amount=30},
            {type="item", name="manganese-oxides", amount=1},
        },
        results = {
            {type="fluid", name="acetic-acid", amount=25},
            {type="fluid", name="formaldehyde", amount=25},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "acetic-acid-3",
        icons = du.icons("acetic-acid"):add_corner("methanol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="methanol", amount=20},
            {type="fluid", name="carbon-monoxide", amount=50},
        },
        results = {
            {type="fluid", name="acetic-acid", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "pet-solution-1",
        icons = du.icons("pet-solution"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="xylenes", amount=20},
            {type="fluid", name="ethylene-glycol", amount=30},
            {type="fluid", name="acetic-acid", amount=30},
            {type="item", name="glass", amount=4},
            {type="item", name="manganese-oxides", amount=2},
            -- highly corrosive, requires more advanced chemical plants?
            -- produced with three catalysts, bromide, cobalt, manganese.
        },
        results = {
            {type="fluid", name="pet-solution", amount=20},
            {type="fluid", name="sludge", amount=50},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "plastic-polypropylene-2",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("propylene"):add_corner("anthracene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "plastic-pvc-2",
        icons = du.icons{name="plastic-bar", mod="base"}:add_corner("ethylene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "rubber-sbr",
        icons = du.icons("rubber"):add_corner("styrene"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "polymer-additives-1",
        icons = du.icons("polymer-additives"):add_corner("bound-porcelain"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "polymer-additives-2",
        icons = du.icons("polymer-additives"):add_corner("glycerol"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "low-quality-plastic",
        icons = du.icons{mod="base",name="plastic-bar"}:add_corner("polymer-additives"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "finished-plastic",
        icons = du.icons{mod="base",name="plastic-bar"},
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "high-quality-plastic",
        icons = du.icons{mod="base",name="plastic-bar"}:add_corner("hals"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "hals", -- 2,2,6,6-Tetramethylpiperidine
        icons = du.icons("hals"),
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
        enabled = false,
        category = "oil-processing", ---@diagnostic disable-line
        name = "finished-rubber",
        icons = du.icons("rubber"):add_corner("styrene"),
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

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfur-1",
        icons = du.icons{mod="base",name="sulfur"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="hydrogen-sulfide", amount=30},
            {type="fluid", name="sulfur-dioxide", amount=30},
        },
        results = {
            {type="item", name="sulfur", amount=3},
            {type="fluid", name="sulfuric-wastewater", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "sulfur-dioxide-2",
        icons = du.icons("sulfur-dioxide"):add_corner{mod="base",name="sulfur"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sulfur", amount=3},
            {type="fluid", name="oxygen", amount=30},
        },
        results = {
            {type="fluid", name="sulfur-dioxide", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "alcohol-solvent-1",
        icons = du.icons("alcohol-solvent"):add_corner("isopropyl-alcohol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sulfur", amount=1},
            {type="fluid", name="isopropyl-alcohol", amount=30},
            {type="fluid", name="methanol", amount=30},
        },
        results = {
            {type="fluid", name="alcohol-solvent", amount=30},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "alcohol-solvent-2",
        icons = du.icons("alcohol-solvent"):add_corner("ethanol"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="sulfur", amount=1},
            {type="fluid", name="ethanol", amount=30},
            {type="fluid", name="methanol", amount=30},
        },
        results = {
            {type="fluid", name="alcohol-solvent", amount=30},
        }
    }
})
