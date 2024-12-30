if not data.data_crawler then ---@diagnostic disable-line
    return
end

require("prototypes.creative")

local du = require("dutil")

---@param name string
---@param fluid "fluid"|nil
---@return data.RecipePrototype
local function creative_recipe(name, fluid)
    return {
        type = "recipe", 
        always_show_made_in = true,
        category = "creative-assembling", ---@diagnostic disable-line
        name = "yafc-fix-"..name,
        icons = {{icon="__GuG2__/graphics/icons/creative-fuel.png", icon_size=64}},
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
        main_product = "",
        energy_required = 1,
        ingredients = {
        },
        results = {
            {type=fluid or "item", name=name, amount=1},
        }
    }
end

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "crafting", ---@diagnostic disable-line
        name = "yafc-fix-creative-assembler",
        icons = {{icon="__GuG2__/graphics/icons/creative-fuel.png", icon_size=64}},
        subgroup = "raw-material",
        order = "a[a]",
        enabled = true,
        main_product = "",
        energy_required = 1,
        ingredients = {
        },
        results = {
            {type="item", name="yafc-fix-creative-assembler", amount=1},
        }
    },
    -- TODO: eliminate all these recipes
    creative_recipe("dead-process"),
    creative_recipe("lead-ore"),
    creative_recipe("tin-ore"),
    creative_recipe("raw-quartz"),
    creative_recipe("nickel-ore"),
    creative_recipe("aluminum-ore"),
    creative_recipe("zinc-ore"),
    creative_recipe("seaweed"),
    creative_recipe("phosphate-rock"),
    creative_recipe("antimony-ore"),
    creative_recipe("molybdenum-ore"),
    creative_recipe("seawater", "fluid"),
    creative_recipe("raw-coal"),
    creative_recipe("crude-oil", "fluid"),
    creative_recipe("clay"),
})
