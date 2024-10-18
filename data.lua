CUTIL = require("__GuG2__.scripts.collision-util")
CUTIL.create_layer("cleanroom-tile")

require("prototypes.entity")
require("prototypes.fluid")
require("prototypes.petrochem")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.programming")
require("prototypes.heat-exchange")
require("prototypes.tile")
require("prototypes.styles")
require("prototypes.creative")
require("prototypes.yafc-fixes")

local missed = {fluid = {}, item = {}}

for _, recipe in pairs(data.raw.recipe) do
    if not recipe.ingredients then
        goto continue
    end
    if not recipe.ingredients[1] then
        goto continue
    end
    if not recipe.ingredients[1].type then
        goto continue
    end
    for _, ingredient in pairs(recipe.ingredients) do
        if string.find(ingredient.name, "barrel$") then
            goto continue2
        end
        if not data.raw[ingredient.type or "item"][ingredient.name] then
            table.insert(missed[ingredient.type or "item"], ingredient.name)
        end
        ::continue2::
    end
    ::continue::
end

if #missed.item > 0 or #missed.fluid > 0 then
    local str = ""
    for _, v in pairs(missed.item) do
        str = str..v.." does not exist.\n"
    end
    for _, v in pairs(missed.fluid) do
        str = str..v.." does not exist.\n"
    end
    error(str)
end
