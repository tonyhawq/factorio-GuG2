local du = require("dutil")

data:extend({
    {
        type = "item",
        name = "bitumen",
        icons = du.icons("bitumen"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
      },
})
data:extend({
  {
      type = "item",
      name = "rubber",
      icons = du.icons("rubber"),
      subgroup = "smelting-machine",
      order = "a[stone-furnace]",
      stack_size = 50
    },
})
data:extend({
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
})
data:extend({
  {
    type = "item",
    name = "rivets",
    icons = du.icons("rivets"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "screws",
    icons = du.icons("screws"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "bolts",
    icons = du.icons("bolts"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
})
data:extend({
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
    fuel_value = "2MJ"
  },
  {
    type = "item",
    name = "coal",
    icons = du.icons("coal"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "4MJ"
  },
  {
    type = "item",
    name = "coke",
    icons = du.icons("coke"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "8MJ"
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
    stack_size = 50
  },
  {
    type = "item",
    name = "iron-oxide",
    icons = du.icons("iron-oxide"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
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
    stack_size = 50
  },
  {
    type = "item",
    name = "copper-ingot",
    icons = du.icons("copper-ingot"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "wrought-iron-sheet",
    icons = du.icons("wrought-iron-sheet"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },

  {
    type = "item",
    name = "wrought-iron-plate",
    icons = du.icons("wrought-iron-plate"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "wrought-iron-rod",
    icons = du.icons("wrought-iron-rod"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
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
    stack_size = 50
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
    name = "copper-wire",
    icons = du.icons("copper-wire"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "tinned-copper-wire",
    icons = du.icons("tinned-copper-wire"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "annealed-copper-wire",
    icons = du.icons("annealed-copper-wire"),
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
    stack_size = 50
  },
  {
    type = "item",
    name = "sand",
    icons = du.icons("sand"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
  },
  {
    type = "item",
    name = "silica-sand",
    icons = du.icons("silica-sand"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
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
    name = "crushed-aluminum-ore",
    icons = du.icons("crushed-aluminum-ore"),
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
    name = "analog-circuit",
    icons = du.icons("analog-circuit"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
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
    name = "lead-ore",
    icons = du.icons("lead-ore"),
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    stack_size = 50
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
    name = "limestone",
    icons = du.icons("limestone"),
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
    stack_size = 50
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
    stack_size = 50
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
})