local du = require("dutil")

local stone_formula = "SiO4"
local limestone_formula = "CaCO3"
local assorted_rock = stone_formula.." + "..limestone_formula

data:extend({
  {
    type = "item",
    name = "bitumen",
    icons = du.icons("bitumen"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "rubber",
    icons = du.icons("rubber"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "cladding",
    icons = du.icons("cladding"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "phenol",
    icons = du.icons("phenol"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "phenolic-resin",
    icons = du.icons("phenolic-resin"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "phenolic-board",
    icons = du.icons("phenolic-board"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "cobalt-nodule",
    icons = du.icons("cobalt-nodule"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 3
  },
  {
    type = "item",
    name = "silicon",
    icons = du.icons("silicon"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "Si",
  },
  {
    type = "item",
    name = "gaskets",
    icons = du.icons("gaskets"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  -- SUPERSCRIPT
  -- ¹²³⁴⁵⁶⁷⁸⁹
  -- ⁽⁾
  -- ²³⁵
  -- ²³⁸
  {
    type = "item",
    name = "urania",
    icons = du.icons("urania"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "U^(235)(238)O2",
  },
  {
    type = "item",
    name = "urania-238",
    icons = du.icons("urania-238"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    --[font=default-game]²³⁸[/font]
    formula = "U^238O2",
  },
  {
    type = "item",
    name = "urania-235",
    icons = du.icons("urania-235"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "U^235O2",
  },
  {
    type = "item",
    name = "wind-turbine-1",
    icons = du.icons("base.stone-brick"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 3
  },
  {
    type = "item",
    name = "crushed-quartz",
    icons = du.icons("crushed-quartz"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 100,
    formula = "SiO2 + SiO4^t + CaF2^t",
  },
  {
    type = "tool",
    name = "environmental-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("environmental-science-pack"),
    subgroup = "science-pack",
    order = "a[a]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "mechanical-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("mechanical-science-pack"),
    subgroup = "science-pack",
    order = "a[b]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "electromagnetic-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("electromagnetic-science-pack"),
    subgroup = "science-pack",
    order = "a[c]",
    stack_size = 200,
    durability = 1, 
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "optimization-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("optimization-science-pack"),
    subgroup = "science-pack",
    order = "a[c]",
    stack_size = 200,
    durability = 1, 
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "automation-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("automation-science-pack"),
    subgroup = "science-pack",
    order = "a[d]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nuclear-science-pack",
    localised_description = {"item-description.science-pack"},
    icons = du.icons("nuclear-science-pack"),
    subgroup = "science-pack",
    order = "a[e]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "item",
    name = "rivets",
    icons = du.icons("rivets"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "screws",
    icons = du.icons("screws"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "bolts",
    icons = du.icons("bolts"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "aluminum-hydroxide",
    icons = du.icons("aluminum-hydroxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "bound-porcelain",
    icons = du.icons("bound-porcelain"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lead-sulfate",
    icons = du.icons("lead-sulfate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "coal-dust",
    icons = du.icons("coal-dust"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "crushed-coal",
    icons = du.icons("crushed-coal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "coarse-coal",
    icons = du.icons("coarse-coal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "raw-coal",
    icons = du.icons("raw-coal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "4MJ"
  },
  {
    type = "item",
    name = "coal",
    icons = du.icons("coal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "8MJ"
  },
  {
    type = "item",
    name = "coke",
    icons = du.icons("coke"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "16MJ"
  },
  {
    type = "item",
    name = "activated-carbon",
    icons = du.icons("activated-carbon"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "alumina",
    icons = du.icons("alumina"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silica",
    icons = du.icons("silica"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "SiO2",
  },
  {
    type = "item",
    name = "iron-oxide",
    icons = du.icons("iron-oxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "Fe2O3"
  },
  {
    type = "item",
    name = "polymer-additives",
    icons = du.icons("polymer-additives"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "graphite",
    icons = du.icons("graphite"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "graphite-dust",
    icons = du.icons("graphite-dust"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silicon-carbide",
    icons = du.icons("silicon-carbide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "rubber-stock",
    icons = du.icons("rubber-stock"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "carbon-black",
    icons = du.icons("carbon-black"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "sodium-hydroxide",
    icons = du.icons("sodium-hydroxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "potassium-hydroxide",
    icons = du.icons("potassium-hydroxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "bismuth",
    icons = du.icons("bismuth"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "iron-ingot",
    icons = du.icons("iron-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "battery-alloy-plate",
    icons = du.icons("battery-alloy-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "antimony-ore",
    icons = du.icons("antimony-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "glowing-mangaloy-ingot",
    icons = du.icons("glowing-mangaloy-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "glowing-mangaloy-plate",
    icons = du.icons("glowing-mangaloy-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "antimony-oxide",
    icons = du.icons("antimony-oxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "antimony",
    icons = du.icons("antimony"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "copper-ingot",
    icons = du.icons("copper-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "copper-sulfate",
    icons = du.icons("copper-sulfate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "copper-hydroxide",
    icons = du.icons("copper-hydroxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "sand-casting",
    icons = du.icons("sand-casting"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "chrome-plate",
    icons = du.icons("chrome-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "iron-sheet",
    icons = du.icons("iron-sheet"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  
  {
    type = "item",
    name = "iron-plate",
    icons = du.icons("base.iron-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "iron-rod",
    icons = du.icons("base.iron-stick"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  
  {
    type = "item",
    name = "copper-sheet",
    icons = du.icons("copper-sheet"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-ingot",
    icons = du.icons("steel-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "stainless-steel-ingot",
    icons = du.icons("stainless-steel-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "chrome-ingot",
    icons = du.icons("chrome-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "silver-ingot",
    icons = du.icons("silver-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-ingot",
    icons = du.icons("manganese-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "steel-beam",
    icons = du.icons("steel-beam"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-plate",
    icons = du.icons("steel-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-rod",
    icons = du.icons("steel-rod"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-cable",
    icons = du.icons("steel-cable"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "brick",
    icons = du.icons("brick"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "raw-quartz",
    icons = du.icons("raw-quartz"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  
  {
    type = "item",
    name = "lead-ingot",
    icons = du.icons("lead-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lead-plate",
    icons = du.icons("lead-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lead-sheet",
    icons = du.icons("lead-sheet"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "latex",
    icons = du.icons("latex"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "sap",
    icons = du.icons("sap"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "clay",
    icons = du.icons("clay"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "gravel",
    icons = du.icons("gravel"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = assorted_rock,  
  },
  {
    type = "item",
    name = "sand",
    icons = du.icons("sand"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = assorted_rock,
  },
  {
    type = "item",
    name = "silica-sand",
    icons = du.icons("silica-sand"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = stone_formula.." + SiO2^t",
  },
  {
    type = "item",
    name = "construction-aggregate",
    icons = du.icons("construction-aggregate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "aluminum-ore",
    icons = du.icons("aluminum-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "vacuum-tube",
    icons = du.icons("vacuum-tube"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "crushed-aluminum-ore",
    icons = du.icons("crushed-aluminum-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "nickel-ore",
    icons = du.icons("nickel-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "nickel-ingot",
    icons = du.icons("nickel-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "nickel-plate",
    icons = du.icons("nickel-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "cobalt-dust",
    icons = du.icons("cobalt-dust"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-oxides",
    icons = du.icons("manganese-oxides"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "aluminum-ingot",
    icons = du.icons("aluminum-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "rayon",
    icons = du.icons("rayon"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "rubylith",
    icons = du.icons("rubylith"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "filter",
    icons = du.icons("filter"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "impure-nickel-concentrate",
    icons = du.icons("impure-nickel-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "crushed-manganese-ore",
    icons = du.icons("crushed-manganese-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "impure-manganese-concentrate",
    icons = du.icons("impure-manganese-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-calcite",
    icons = du.icons("manganese-calcite"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-precipitate",
    icons = du.icons("manganese-precipitate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "module-harness",
    icons = du.icons("module-harness"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "high-purity-manganese-concentrate",
    icons = du.icons("high-purity-manganese-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-slime",
    icons = du.icons("manganese-slime"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "manganese-ore",
    icons = du.icons("manganese-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "sodium",
    icons = du.icons("sodium"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "insulation",
    icons = du.icons("insulation"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "automotive-fuel",
    icons = du.icons("automotive-fuel"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
    fuel_category = "chemical",
    fuel_value = "10MJ",
    fuel_top_speed_multiplier = 1.5,
    fuel_acceleration_multiplier = 1.2,
    burnt_result = "empty-canister",
  },
  {
    type = "item",
    name = "thalorain",
    icons = du.icons("thalorain"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "thalorain-grain",
    icons = du.icons("thalorain-grain"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "sweet-thalorain-grain",
    icons = du.icons("sweet-thalorain-grain"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "thalorain-ferment",
    icons = du.icons("thalorain-ferment"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "empty-canister",
    icons = du.icons("empty-canister"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "oxygen-canister",
    localised_name = {"label.filled-canister", {"fluid-name.oxygen"}},
    icons = du.icons("empty-canister"):add_icons({{icon="__GuG2__/graphics/icons/oxygen.png"}}),
    subgroup = "canister",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "stainless-steel-plate",
    icons = du.icons("stainless-steel-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "transformer",
    icons = du.icons("transformer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "computed-automation-science-pack",
    icons = du.icons("computed-automation-science-pack"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "brazing-kit",
    icons = du.icons("brazing-kit"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "small-parts",
    icons = du.icons("small-parts"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "cement",
    icons = du.icons("cement"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "mortar",
    icons = du.icons("mortar"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "molybdenum-special-alloy",
    icons = du.icons("molybdenum-special-alloy"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "molybdenum-ingot",
    icons = du.icons("molybdenum-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "molybdenum-ore",
    icons = du.icons("molybdenum-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "impure-molybdenum-concentrate",
    icons = du.icons("impure-molybdenum-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "phosphate-rock",
    icons = du.icons("phosphate-rock"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
    formula = "Ca5(PO4)3OH"
  },
  {
    type = "item",
    name = "aluminum-carbide",
    icons = du.icons("aluminum-carbide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lv-resistor",
    icons = du.icons("lv-resistor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lv-capacitor",
    icons = du.icons("lv-capacitor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "mv-resistor",
    icons = du.icons("mv-resistor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "mv-capacitor",
    icons = du.icons("mv-capacitor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "impure-zinc-concentrate",
    icons = du.icons("impure-zinc-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "fiberglass",
    icons = du.icons("fiberglass"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "small-electric-motor",
    icons = du.icons("small-electric-motor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "medium-electric-motor",
    icons = du.icons("medium-electric-motor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "large-electric-motor",
    icons = du.icons("large-electric-motor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "huge-electric-motor",
    icons = du.icons("huge-electric-motor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "manganese-dioxide",
    icons = du.icons("manganese-dioxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "analog-circuit",
    icons = du.icons("analog-circuit"),
    subgroup = "circuits",
    order = "a[analog]",
    stack_size = 200
  },
  {
    type = "item",
    name = "electronic-circuit",
    icons = du.icons("base.electronic-circuit"),
    subgroup = "circuits",
    order = "b[electronic]",
    stack_size = 200
  },
  {
    type = "item",
    name = "glass",
    icons = du.icons("glass"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "environmental-insight",
    icons = du.icons("environmental-insight"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "mechanical-insight",
    icons = du.icons("mechanical-insight"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "electromagnetic-insight",
    icons = du.icons("electromagnetic-insight"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "refractory-brick",
    icons = du.icons("refractory-brick"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "salt",
    icons = du.icons("salt"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "crucible",
    icons = du.icons("crucible"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "miniscule-silicon-boule",
    icons = du.icons("pm/miniscule-silicon-boule"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "moderate-silicon-boule",
    icons = du.icons("pm/moderate-silicon-boule"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "substantial-silicon-boule",
    icons = du.icons("pm/substantial-silicon-boule"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silicon-boule",
    icons = du.icons("silicon-boule"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silicon-wafer",
    icons = du.icons("silicon-wafer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "pre-etched-simple-wafer",
    icons = du.icons("pre-etched-simple-wafer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "lithographed-simple-wafer",
    icons = du.icons("lithographed-simple-wafer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "simple-wafer",
    icons = du.icons("simple-wafer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "integrated-circuit-die",
    icons = du.icons("integrated-circuit-die"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "photoresist",
    icons = du.icons("photoresist"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "photomask",
    icons = du.icons("photomask"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "polysilicon",
    icons = du.icons("polysilicon"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "yellowcake",
    icons = du.icons("yellowcake"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "crushed-iron-ore",
    icons = du.icons("crushed-iron-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "crushed-copper-ore",
    icons = du.icons("crushed-copper-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "crushed-tin-ore",
    icons = du.icons("crushed-tin-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "lead-ore",
    icons = du.icons("lead-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "(PbS)6(Pb5(AsO4)3Cl)3(Ag3AsS3)1"
  },
  {
    type = "item",
    name = "crushed-lead-ore",
    icons = du.icons("crushed-lead-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "(PbS)6(Pb5(AsO4)3Cl)3(Ag3AsS3)1"
  },
  {
    type = "item",
    name = "impure-lead-concentrate",
    icons = du.icons("impure-lead-concentrate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "(PbS)6(Pb5(AsO4)3Cl)2"
  },
  {
    type = "item",
    name = "lead-oxite",
    icons = du.icons("lead-oxite"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "Pb3SO3Cl2"
  },
  {
    type = "item",
    name = "raw-silver-dust",
    icons = du.icons("raw-silver-dust"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silver-slime",
    icons = du.icons("silver-slime"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silver-plate",
    icons = du.icons("silver-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "limestone",
    icons = du.icons("limestone"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "CaCO3",
  },
  {
    type = "item",
    name = "transistor",
    icons = du.icons("transistor"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "graphite-electrode",
    icons = du.icons("graphite-electrode"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "graphite-block",
    icons = du.icons("graphite-block"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "gearbox-1",
    icons = du.icons("gearbox-1"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "sandstone",
    icons = du.icons("sandstone"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "tin-ingot",
    icons = du.icons("tin-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "tin-plate",
    icons = du.icons("tin-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "bronze-ingot",
    icons = du.icons("bronze-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200
  },
  {
    type = "item",
    name = "bronze-plate",
    icons = du.icons("bronze-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "tin-ore",
    icons = du.icons("tin-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "planter-box",
    icons = du.icons("planter-box"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "treated-wood",
    icons = du.icons("treated-wood"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "fiberboard",
    icons = du.icons("fiberboard"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "fiber",
    icons = du.icons("fiber"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "asphalt",
    icons = du.icons("asphalt"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "green-algae",
    icons = du.icons("green-algae"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    burnt_result = "kelp-ash",
    fuel_value = "0.2MJ",
    fuel_category = "chemical",
  },
  {
    type = "item",
    name = "kelp-ash",
    icons = du.icons("kelp-ash"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "urea",
    icons = du.icons("urea"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "fiberboard",
    icons = du.icons("fiberboard"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "ureic-feces",
    icons = du.icons("ureic-feces"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "synthetic-resin",
    icons = du.icons("synthetic-resin"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cellulose",
    icons = du.icons("cellulose"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "evaporite",
    icons = du.icons("evaporite"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "soil",
    icons = du.icons("soil"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "sodium-carbonate",
    icons = du.icons("sodium-carbonate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "calcium-chloride",
    icons = du.icons("calcium-chloride"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "white-phosphorous",
    icons = du.icons("white-phosphorous"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "P4"
  },
  {
    type = "item",
    name = "disodium-phosphate",
    icons = du.icons("disodium-phosphate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "lime",
    icons = du.icons("lime"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "agar",
    icons = du.icons("agar"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "brine-salt",
    icons = du.icons("brine-salt"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "sodium-sulfate",
    icons = du.icons("sodium-sulfate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "solder",
    icons = du.icons("solder"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "petri-dish",
    icons = du.icons("petri-dish"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "agar-dish",
    icons = du.icons("agar-dish"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "raw-silica",
    icons = du.icons("raw-silica"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    formula = "SiO2 + H2O"
  },
  {
    type = "item",
    name = "meat",
    icons = du.icons("meat"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bones",
    icons = du.icons("bones"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bone-meal",
    icons = du.icons("bone-meal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "nitrogenous-fertilizer",
    icons = du.icons("nitrogenous-fertilizer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "phosphoric-fertilizer",
    icons = du.icons("phosphoric-fertilizer"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "feathers",
    icons = du.icons("feathers"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    fuel_value = "200kJ",
    fuel_category = "chemical",
    stack_size = 200,
  },
  {
    type = "item",
    name = "saw",
    icons = du.icons("saw"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "rich-soil",
    icons = du.icons("rich-soil"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "module",
    name = "nauvisworm",
    icons = du.icons("nauvisworm"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
    tier = 1,
    category = "composting",
    effect = {speed = 10}
  },
  {
    type = "item",
    name = "nauvisworm-egg-sack",
    icons = du.icons("nauvisworm-egg-sack"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "worm-meal",
    icons = du.icons("worm-meal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "compost",
    icons = du.icons("compost"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "native-biofilm",
    icons = du.icons("native-biofilm"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cultivated-methanobacteria",
    icons = du.icons("cultivated-methanobacteria"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "zinc-ore",
    icons = du.icons("zinc-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "zinc-oxide",
    icons = du.icons("zinc-oxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "zinc-ingot",
    icons = du.icons("zinc-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "zinc-plate",
    icons = du.icons("zinc-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "magnet-wire",
    icons = du.icons("magnet-wire"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "ferrite",
    icons = du.icons("ferrite"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "aluminum-plate",
    icons = du.icons("aluminum-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "aluminum-cable",
    icons = du.icons("aluminum-cable"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
  },
})

local speed_module = data.raw.module["speed-module"]
local eff_module = data.raw.module["efficiency-module"]
eff_module.effect.consumption = -0.15