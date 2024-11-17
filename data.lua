for _, technology in pairs(data.raw.technology) do
    technology.hidden = true
end
for _, recipe in pairs(data.raw.recipe) do
    recipe.hidden = true
    recipe.enabled = false
end

require("prototypes.alias")

require("prototypes.groups")

require("prototypes.pre-science.recipe")

require("prototypes.environmental-science.recipe")
require("prototypes.environmental-science.technology")
require("prototypes.environmental-science.forestry")

require("prototypes.electromagnetic-science.recipe")

require("prototypes.minibuffer-entity")
require("prototypes.fluid")
require("prototypes.entity")
require("prototypes.petrochem")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.programming")
require("prototypes.heat-exchange")
require("prototypes.tile")
require("prototypes.styles")
require("prototypes.yafc-fixes")
require("prototypes.fixes")
require("prototypes.environmental-science.incinerating-recipe")
require("prototypes.resource.ore")

for _, type in pairs(data.raw) do
    for _, proto in pairs(data.raw[type] or {}) do
        if proto.energy_source then
            if proto.energy_source.type == "burner" then
                proto.energy_source.burnt_inventory_size = proto.energy_source.burnt_inventory_size or 1
            end
        end
    end
end
