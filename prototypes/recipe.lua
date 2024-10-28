-- analog circuit board
-- wood base
-- chains & pulleys

local du = require("dutil")



data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "bolts",
        icons = du.icons("bolts"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="steel-rod", amount=1},
            {type="item", name="silica", amount=1},
        },
        results = {
            {type="item", name="bolts", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "scale-boiler",
        icons = du.icons{mod="base", name="boiler"},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="brick", amount=10},
            {type="item", name="pipe", amount=10},
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="copper-sheet", amount=12},
        },
        results = {
            {type="item", name="scale-boiler", amount=1},
        }
    }
})

-- iron & lead -> basic belts (called chutes?)

-- stone furnace -> iron & lead -> boiler -> DD tower -> bound porcelain -> glassworks -> science
-- boiler -> assembling machine & inserter -> screws -> steam miner
-- screws & bound porcelain -> steam engine -> electrolysis -> steel
-- screws & glass & inserter -> chemical plant
-- science -> ammonia & urea -> melamine -> electromagnets -> electric machines

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "lv-resistor-1",
        icons = du.icons("lv-resistor"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="coke", amount=1},
            {type="item", name="tinned-copper-wire", amount=1},
            {type="item", name="sap", amount=1},
        },
        results = {
            {type="item", name="lv-resistor", amount=1},
        }
    }
})




-- resources progression
-- tin, copper, limestone -> environmental science pack
-- bronze -> smithy
-- smithy -> wrought iron, steel

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "copper-sheet-1",
        icons = du.icons("copper-sheet"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-plate", amount=4},
        },
        results = {
            {type="item", name="copper-sheet", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "autocrafting", ---@diagnostic disable-line
        name = "copper-wire-1",
        icons = du.icons("copper-wire"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="copper-ingot", amount=1},
        },
        results = {
            {type="item", name="copper-wire", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "wrought-iron-sheet-1",
        icons = du.icons("wrought-iron-sheet"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wrought-iron-plate", amount=4},
        },
        results = {
            {type="item", name="wrought-iron-sheet", amount=3},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "wrought-iron-rod-1",
        icons = du.icons("wrought-iron-rod"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=1},
        },
        results = {
            {type="item", name="wrought-iron-rod", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "bound-porcelain",
        icons = du.icons("bound-porcelain"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="clay", amount=3},
            {type="fluid", name="tar", amount=16},
        },
        results = {
            {type="item", name="bound-porcelain", amount=2},
        }
    }
})
--[[data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "electrolytic-cell-1",
        icons = du.icons("electrolytic-cell"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="brick", amount=20},
            {type="item", name="copper-wire", amount=10},
            {type="item", name="pipe", amount=20},
            {type="item", name="iron-sheet", amount=10},
        },
        results = {
            {type="item", name="electrolytic-cell", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "water-electrolysis",
        icons = du.icons{mod="base", name="fluid/water"}.add_corner("oxygen"):add(du.icon_co("hydrogen")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=20},
        },
        results = {
            {type="fluid", name="hydrogen", amount=40},
            {type="fluid", name="oxygen", amount=20},
        }
    }
})]]
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "stone-brick-1",
        icons = du.icons("__base__/graphics/icons/stone-brick.png", 64, true),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone", amount=5},
            {type="item", name="gravel", amount=10},
            {type="item", name="bound-porcelain", amount=2},
        },
        results = {
            {type="item", name="stone-brick", amount=5},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "stone-brick-crushing",
        icons = du.icons("__base__/graphics/icons/stone-brick.png", 64, true),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-brick", amount=1},
        },
        results = {
            {type="item", name="stone", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "refractory-brick-1",
        icons = du.icons("refractory-brick"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-brick", amount=1},
            {type="item", name="silica", amount=1},
            {type="item", name="crushed-aluminum-ore", amount=2},
        },
        results = {
            {type="item", name="refractory-brick", amount=2},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "latex-to-rubber-1",
        icons = du.icons("rubber").add_corner("latex"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="latex", amount=10},
            {type="item", name="carbon-black", amount=3},
            {type="item", name="aluminum-hydroxide", amount=3},
            {type="fluid", name="200c", amount=100},
        },
        results = {
            {type="item", name="rubber", amount=10},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "wood-gasificiation",
        icons = du.icons("wood-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wood", amount=10},
        },
        results = {
            {type="item", name="coal", amount=5},
            {type="fluid", name="coal-gas", amount=30},
            {type="fluid", name="wood-oil", amount=20},
        }
    }
})

-- coal tar is industrially significant
-- coal gas is not
-- coal tar distills into 3 fractions
-- middle
-- light
-- green

-- creosote is produced through
--   green + light
-- or
--   middle oil
-- creosote is then used for wood treatment or can be converted to phenol
-- green -> anthracene
-- middle -> naphthalene
-- light oil -> BTX & fuel

-- fractions are
-- 25% green oil
-- 10% light oil
-- 20% middle oil
-- 40% tar pitch

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "raw-coal-to-coal",
        icons = du.icons("coal"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="raw-coal", amount=4},
        },
        results = {
            {type="item", name="coal", amount=1},
            {type="fluid", name="coal-gas", amount=6}, --(du.fuel_value("raw-coal") * 8 - du.fuel_value("coal") * 2) / du.fuel_value("coal-gas") * 0.6
            {type="fluid", name="tar", amount=10}, --(du.fuel_value("raw-coal") * 8 - du.fuel_value("coal") * 2) / du.fuel_value("tar") * 0.5
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coal-to-coke",
        icons = du.icons("coke"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="coal", amount=4},
        },
        results = {
            {type="item", name="coke", amount=1},
            {type="fluid", name="coal-gas", amount=18},
            {type="fluid", name="tar", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coke-gasification",
        icons = du.icons("coke"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 12,
        ingredients = {
            -- 1:1 conversion of coke fuel_value to gaseous fuel value
            -- 75% coal gas
            -- 25% tar
            {type="item", name="coke", amount=6},
        },
        results = {
            {type="fluid", name="coal-gas", amount=25}, --math.floor(du.fuel_value("coke")/du.fuel_value("coal-gas")*0.75)
            {type="fluid", name="tar", amount=10}, --math.floor(du.fuel_value("coke")/du.fuel_value("coal-gas")*0.25)
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "tar-processing",
        icons = du.icons("tar"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            -- getting into some coal products, are we?
            {type="fluid", name="tar", amount=100},
        },
        results = {
            {type="fluid", name="green-oil", amount=25},
            {type="fluid", name="light-oil", amount=5},
            {type="fluid", name="middle-oil", amount=20},
            {type="fluid", name="tar-pitch", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "pitch-processing",
        icons = du.icons("tar-pitch"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            -- getting into some coal products, are we?
            {type="fluid", name="tar-pitch", amount=100},
        },
        results = {
            {type="fluid", name="hydrogen", amount=25},
            {type="fluid", name="light-oil", amount=10},
            {type="item", name="coke", amount=6},
            {type="item", name="asphalt", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-green",
        icons = du.icons("creosote-oil").add_corner("green-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="light-oil", amount=35},
            {type="fluid", name="creosote-oil", amount=25},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=175},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-middle",
        icons = du.icons("creosote-oil").add_corner("middle-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="middle-oil", amount=100},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-blended",
        icons = du.icons("creosote-oil").add_corner("creosote-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="middle-oil", amount=50},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=60},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "anthracene-from-green",
        icons = du.icons("anthracene").add_corner("green-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
        },
        results = {
            {type="fluid", name="anthracene", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-creosote",
        icons = du.icons("carbolic-acid").add_corner("creosote-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="creosote-oil", amount=100},
        },
        results = {
            {type="fluid", name="carbolic-acid", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-middle",
        icons = du.icons("carbolic-acid").add_corner("middle-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="middle-oil", amount=100},
        },
        results = {
            {type="fluid", name="carbolic-acid", amount=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbon-black-green-oil",
        icons = du.icons("carbon-black").add_corner("green-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="syngas", amount=10},
            {type="fluid", name="500c", amount=30},
        },
        results = {
            {type="item", name="carbon-black", amount=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "full-tar-gasification",
        icons = du.icons("syngas").add_corner("tar"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="tar", amount=100},
            {type="fluid", name="water", amount=65},
        },
        results = {
            {type="fluid", name="coal-gas", amount=120},
            {type="fluid", name="syngas", amount=40},
            {type="fluid", name="flue-gas", amount=80, temperature=500},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coal-gas-gasification",
        icons = du.icons("syngas").add_corner("coal-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="coal-gas", amount=100},
            {type="fluid", name="water", amount=100},
        },
        results = {
            {type="fluid", name="syngas", amount=80},
            {type="fluid", name="flue-gas", amount=80, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "oxygenated-coal-gas-gasification",
        icons = du.icons("syngas").add_corner("coal-gas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="coal-gas", amount=120},
            {type="fluid", name="water", amount=100},
            {type="fluid", name="oxygen", amount=25},
        },
        results = {
            {type="fluid", name="syngas", amount=300},
            {type="fluid", name="flue-gas", amount=100, temperature=300},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "separating", ---@diagnostic disable-line
        name = "wood-oil-separation",
        icons = du.icons("methanol").add_corner("wood-oil"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="fluid", name="wood-oil", amount=10},
        },
        results = {
            {type="fluid", name="methanol", amount=3},
            {type="fluid", name="creosote-oil", amount=4},
            {type="fluid", name="tar", amount=3},
        }
    }
})
local syngas_MJ = du.MJ(data.raw.fluid.syngas.fuel_value)
local water_cap = du.MJ(data.raw.fluid.water.heat_capacity)
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-water",
        icons = du.icons("steam").add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-15)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-15))), temperature=165},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-40c-water",
        icons = du.icons("steam").add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-40)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-40))), temperature=165},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-60c-water",
        icons = du.icons("steam").add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-60)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-60))), temperature=165},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-80c-water",
        icons = du.icons("steam").add_corner("syngas"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-80)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-80))), temperature=165},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})

-- wafer production begins with treatment of the wafer
-- simple-wafer has large enough feature size to not require Hexamethyldisilazane
-- cleaning is done with pure water, acetone and methanol
-- simplification of nMOS 3 step etching is done by giving 1/3 finished products and 2/3 ingredients
-- pre-etching steps
-- {type="item", name="sodium-hydroxide", amount=1},
-- alternatively, tetramethylammonium hydroxide
-- etching fluids:
-- hydrofluoric acid & ammonium fluoride
-- ethylenediamene pyrocatechol
-- tetramethylammonium hydroxide

-- TODO: meaningful byproducts that are "realistic"!!
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
            {type="fluid", name="methanol", amount=36},
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
            {type="fluid", name="naphthalene", amount=1},
            {type="fluid", name="nitric-acid", amount=1},
            {type="fluid", name="hydrogen", amount=1},
            {type="item", name="barrel", amount=1},
        },
        results = {
            {type="item", name="photoresist", amount=1},
            {type="fluid", name="wastewater", amount=1},
            {type="fluid", name="ammonia", amount=1},
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
            {type="item", name="silicon-wafer", amount=1},
            {type="item", name="photoresist", amount=1},
            {type="item", name="silica", amount=1},
            {type="item", name="polysilicon", amount=1},
        },
        results = {
            {type="item", name="pre-etched-simple-wafer", amount=1, probability=0.9},
            {type="item", name="barrel", amount=1},
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
        energy_required = 1,
        ingredients = {
            {type="item", name="pre-etched-simple-wafer", amount=1},
            {type="item", name="photomask", amount=1},
        },
        results = {
            {type="item", name="lithographed-simple-wafer", amount=1},
            {type="item", name="photomask", amount=1, probability=0.95},
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
            {type="fluid", name="ammonium-fluoride", amount=1},
            {type="fluid", name="hydrofluoric-acid", amount=1},
        },
        results = {
            {type="item", name="simple-wafer", amount=1, probability=1/3},
            {type="item", name="pre-etched-simple-wafer", amount=1, probability=2/3},
            {type="item", name="barrel", amount=1, probability=5/6},
            {type="item", name="photoresist", amount=1, probability=1/6},
            {type="fluid", name="fluoric-wastewater", amount=1},
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
        }
    },
})