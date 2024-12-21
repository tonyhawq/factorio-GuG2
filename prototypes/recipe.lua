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

-- iron & lead -> basic belts (called chutes?)

-- stone furnace -> iron & lead -> boiler -> DD tower -> bound porcelain -> glassworks -> science
-- boiler -> assembling machine & inserter -> screws -> steam miner
-- screws & bound porcelain -> steam engine -> electrolysis -> steel
-- screws & glass & inserter -> chemical plant
-- science -> ammonia & urea -> melamine -> electromagnets -> electric machines



-- resources progression
-- tin, copper, limestone -> environmental science pack
-- bronze -> smithy
-- smithy -> wrought iron, steel

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
            {type="item", name="copper-cable", amount=10},
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
        icons = du.icons{mod="base", name="fluid/water"}:add_corner("oxygen"):add(du.icon_co("hydrogen")),
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
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "latex-to-rubber-1",
        icons = du.icons("rubber"):add_corner("latex"),
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
            {type="fluid", name="coal-gas", amount=20},
            {type="fluid", name="wood-oil", amount=30},
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
        icons = du.icons("carbon-black"):add_corner("green-oil"),
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

local syngas_MJ = du.MJ(data.raw.fluid.syngas.fuel_value)
local water_cap = du.MJ(data.raw.fluid.water.heat_capacity)
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-water",
        icons = du.icons("steam"):add_corner("syngas"),
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
        icons = du.icons("steam"):add_corner("syngas"),
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
        icons = du.icons("steam"):add_corner("syngas"),
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
        icons = du.icons("steam"):add_corner("syngas"),
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