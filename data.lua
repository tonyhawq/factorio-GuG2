table.insert(data.raw.lab.lab.inputs, "environmental-science-pack")

require("prototypes.pre-science.recipe")
require("prototypes.environmental-science.recipe")
require("prototypes.environmental-science.technology")

require("prototypes.minibuffer-entity")
require("prototypes.entity")
require("prototypes.fluid")
require("prototypes.petrochem")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.programming")
require("prototypes.heat-exchange")
require("prototypes.tile")
require("prototypes.styles")
require("prototypes.yafc-fixes")

local du = require("dutil")

data:extend({
    {
        type = "item",
        name = "sig",
        icons = du.icons{mod="base",name="iron-plate"}.add_corner{mod="base",name="iron-plate"}.add_corner("steel-plate").add_corner("steel-plate").add("steel-plate"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    }
})

-- replace du.icons with iron plate
-- du.icons(.+)
-- to
-- {{icon="__base__/graphics/icons/iron-plate.png", icon_size=64}},--$1

-- replace that with original
-- \{\{icon="__base__/graphics/icons/iron-plate.png", icon_size=64\}\},--
-- to
-- du.icons