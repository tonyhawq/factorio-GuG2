for _, technology in pairs(data.raw.technology) do
    technology.hidden = true
end
for _, recipe in pairs(data.raw.recipe) do
    recipe.hidden = true
    recipe.enabled = false
end

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