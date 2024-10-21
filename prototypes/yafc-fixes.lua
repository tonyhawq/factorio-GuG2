if not data.data_crawler then ---@diagnostic disable-line
    return
end

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
        icons = du.icons("creative-fuel"),
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
        icons = du.icons("creative-fuel"),
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
    -- Required due to YAFC not registering items you spawned with / are scripted in
    creative_recipe("creative-fuel", "fluid"),
    creative_recipe("mechanical-inserter"),
    -- TODO: eliminate all these recipes
    creative_recipe("lead-ore"),
    creative_recipe("tin-ore"),
    creative_recipe("raw-coal"),
    creative_recipe("crude-oil", "fluid"),
    creative_recipe("clay"),
})
