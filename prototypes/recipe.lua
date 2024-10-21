-- analog circuit board
-- wood base
-- chains & pulleys

local du = require("dutil")


data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "glassworking", ---@diagnostic disable-line
        name = "quartz-glass",
        icons = du.icons("glass"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="raw-quartz", amount=3},
        },
        results = {
            {type="item", name="glass", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "mechanical-inserter",
        icons = du.icons("mechanical-inserter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            -- spring?
            {type="item", name="wrought-iron-sheet", amount=1},
            {type="item", name="wrought-iron-rod", amount=1},
        },
        results = {
            {type="item", name="mechanical-inserter", amount=1},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "smithy",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/advanced-foundry-mk01.png"}:fin(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="stone-furnace", amount=1},
            {type="item", name="iron-ingot", amount=12},
            {type="item", name="mechanical-inserter", amount=6},
        },
        results = {
            -- consumes gaseous fuel (infinite source present in crashed ship until DD tower produced)
            {type="item", name="smithy", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "autocrafting", ---@diagnostic disable-line
        name = "screws",
        icons = du.icons("screws"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wrought-iron-rod", amount=1},
            {type="item", name="bound-porcelain", amount=1},
        },
        results = {
            {type="item", name="screws", amount=2},
            {type="fluid", name="tar", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
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
        category = "crafting", ---@diagnostic disable-line
        name = "pipe",
        icons = du.icons("pipe"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="rivets", amount=2},
            {type="item", name="lead-sheet", amount=1},
        },
        results = {
            {type="item", name="pipe", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "scale-boiler",
        icons = du.icons_ext{mod="__base__", name="boiler"}:fin(),
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "assembling-machine-1",
        icons = du.icons_ext{mod="__base__", name="assembling-machine-1"}:fin(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=4},
            {type="item", name="mechanical-inserter", amount=3},
            {type="item", name="transport-belt", amount=3},
            {type="item", name="brick", amount=10},
        },
        results = {
            {type="item", name="assembling-machine-1", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "offshore-pump",
        icons = du.icons_ext{mod="__base__", name="offshore-pump"}:fin(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="iron-ingot", amount=4},
        },
        results = {
            {type="item", name="offshore-pump", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "steam-inserter",
        icons = du.icons("steam-inserter"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="mechanical-inserter", amount=1},
            {type="item", name="pipe", amount=3},
            {type="item", name="bound-porcelain", amount=2},
        },
        results = {
            {type="item", name="steam-inserter", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "glassworks",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/glassworks-mk01.png"}:fin(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="scale-boiler", amount=2},
            {type="item", name="screws", amount=12},
            {type="item", name="lead-sheet", amount=12},
            {type="item", name="brick", amount=10},
        },
        results = {
            {type="item", name="glassworks", amount=1},
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "analog-circuit-1",
        icons = du.icons("analog-circuit"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="wood", amount=2},
            {type="item", name="lv-resistor", amount=1},
            {type="item", name="steel-cable", amount=1},
            {type="item", name="iron-gear-wheel", amount=1},
        },
        results = {
            {type="item", name="analog-circuit", amount=1},
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
        category = "smithing", ---@diagnostic disable-line
        name = "bound-porcelain-1",
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
        category = "electrolysis", ---@diagnostic disable-line
        name = "water-electrolysis",
        icons = du.icons_ext{mod="__base__", name="fluid/water"}:addm(du.icon_c("oxygen")):add(du.icon_co("hydrogen")),
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
        category = "crafting", ---@diagnostic disable-line
        name = "destructive-distillation-tower",
        icons = du.icons_ext{mod="__pycoalprocessinggraphics__", name="distilator"}:fin(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="scale-boiler", amount=2},
            {type="item", name="wrought-iron-sheet", amount=20},
        },
        results = {
            {type="item", name="destructive-distillation-tower", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "steel-ingot",
        icons = du.icons("steel-ingot"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
        ingredients = {
            {type="item", name="iron-ingot", amount=3},
            {type="item", name="coke", amount=1},
        },
        results = {
            {type="item", name="steel-ingot", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-rod",
        icons = du.icons("steel-rod"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
        },
        results = {
            {type="item", name="steel-rod", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-plate",
        icons = du.icons("steel-plate"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
        },
        results = {
            {type="item", name="steel-plate", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smithing", ---@diagnostic disable-line
        name = "steel-beam",
        icons = du.icons("steel-beam"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="steel-ingot", amount=1},
            {type="item", name="steel-plate", amount=2},
            {type="item", name="steel-rod", amount=2},
        },
        results = {
            {type="item", name="steel-beam", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "smelting", ---@diagnostic disable-line
        name = "steel-cable",
        icons = du.icons("steel-cable"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="item", name="steel-rod", amount=2},
        },
        results = {
            {type="item", name="steel-cable", amount=3},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
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
        category = "crushing", ---@diagnostic disable-line
        name = "stone-brick-crushing-1",
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
        category = "boiling", ---@diagnostic disable-line
        name = "seawater-boiling-1",
        icons = du.icons_ext{mod="__base__", name="fluid/steam"}:add(du.icon_c("seawater")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="seawater", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80},
            {type="fluid", name="brine", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "boiling", ---@diagnostic disable-line
        name = "saline-water-boiling-1",
        icons = du.icons_ext{mod="__base__", name="fluid/steam"}:add(du.icon_c("saline-water")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="saline-water", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80},
            {type="fluid", name="mineralized-water", amount=20},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "boiling", ---@diagnostic disable-line
        name = "brine-boiling-1",
        icons = du.icons_ext{mod="__base__", name="fluid/steam"}:add(du.icon_c("brine")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="brine", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80},
            {type="item", name="salt", amount=1},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "boiling", ---@diagnostic disable-line
        name = "mineralized-water-boiling-1",
        icons = du.icons_ext{mod="__base__", name="fluid/steam"}:add(du.icon_c("mineralized-water")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="mineralized-water", amount=100},
        },
        results = {
            {type="fluid", name="steam", amount=80},
            {type="item", name="stone", amount=1},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "latex-to-rubber-1",
        icons = du.icons_m("rubber"):add(du.icon_c("latex")),
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
-- light oil -> benzene

-- fractions are
-- 25% green oil
-- 10% light oil
-- 20% middle oil
-- 40% tar pitch

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
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
            {type="fluid", name="light-oil", amount=10},
            {type="fluid", name="middle-oil", amount=20},
            {type="fluid", name="tar-pitch", amount=40},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "creosote-oil-from-green",
        icons = du.icons_m("creosote-oil"):add(du.icon_c("creosote-oil")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="green-oil", amount=100},
            {type="fluid", name="light-oil", amount=10},
            {type="fluid", name="creosote-oil", amount=25},
        },
        results = {
            {type="fluid", name="creosote-oil", amount=125},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "anthracene-from-green",
        icons = du.icons_m("anthracene"):add(du.icon_c("green-oil")),
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
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-creosote",
        icons = du.icons_m("carbolic-acid"):add(du.icon_c("creosote-oil")),
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
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "carbolic-acid-middle",
        icons = du.icons_m("carbolic-acid"):add(du.icon_c("middle-oil")),
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
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "tar-gasification",
        icons = du.icons_m("syngas"):add(du.icon_c("tar")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="fluid", name="tar", amount=100},
            {type="fluid", name="oxygen", amount=25},
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
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "coal-gas-gasification",
        icons = du.icons_m("syngas"):add(du.icon_c("coal-gas")),
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
        category = "destructive-distillation", ---@diagnostic disable-line
        name = "oxygenated-coal-gas-gasification",
        icons = du.icons_m("syngas"):addm(du.icon_c("coal-gas")):add(du.icon_co("oxygen")),
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
        category = "separating", ---@diagnostic disable-line
        name = "wood-oil-separation",
        icons = du.icons_m("methanol"):add(du.icon_c("wood-oil")),
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
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-water",
        icons = du.icons_m("steam"):add(du.icon_c("syngas")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-15)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-15)))},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-40c-water",
        icons = du.icons_m("steam"):add(du.icon_c("syngas")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-40)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-40)))},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-60c-water",
        icons = du.icons_m("steam"):add(du.icon_c("syngas")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-60)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-60)))},
            {type="fluid", name="flue-gas", amount=2, temperature=200},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "flash-boiling", ---@diagnostic disable-line
        name = "flash-boil-80c-water",
        icons = du.icons_m("steam"):add(du.icon_c("syngas")),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="fluid", name="water", amount=2*math.ceil(syngas_MJ / (water_cap * (165-80)))},
            {type="fluid", name="syngas", amount=2},
        },
        results = {
            {type="fluid", name="steam", amount=2*math.ceil(syngas_MJ / (water_cap * (165-80)))},
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