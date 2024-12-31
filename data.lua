G2_wafer_recipes = {}

local du = require("dutil")

for _, technology in pairs(data.raw.technology) do
    technology.hidden = true
end
for _, recipe in pairs(data.raw.recipe) do
    recipe.hidden = true
    recipe.enabled = false
end

require("prototypes.alias")
require("prototypes.groups")

require("prototypes.minibuffer-entity")
require("prototypes.fluid")
require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.programming")
require("prototypes.heat-exchange")
require("prototypes.tile")
require("prototypes.styles")
require("prototypes.resource.ore")

require("prototypes.pre-science.recipe")

require("prototypes.environmental-science.recipe")
require("prototypes.environmental-science.technology")
require("prototypes.environmental-science.forestry")
--require("prototypes.environmental-science.incinerating-recipe")

require("prototypes.electromagnetic-science.recipe")
require("prototypes.electromagnetic-science.petrochem")
require("prototypes.electromagnetic-science.wafers")
require("prototypes.electromagnetic-science.technology")

require("prototypes.automation-science.recipe")
require("prototypes.automation-science.technology")

require("prototypes.environmental-science.flaring")

require("prototypes.fixes")
require("prototypes.yafc-fixes")

for _, type in pairs(data.raw) do
    for _, proto in pairs(data.raw[type] or {}) do
        if proto.energy_source then
            if proto.energy_source.type == "burner" then
                proto.energy_source.burnt_inventory_size = proto.energy_source.burnt_inventory_size or 1
            end
        end
    end
end

local order_by_tech = {
    ["environmental-science-pack"] = 1,
    ["mechanical-science-pack"] = 2,
    ["electromagnetic-science-pack"] = 3,
    ["automation-science-pack"] = 4,
    ["logistic-science-pack"] = 5,
}

for _, technology in pairs(data.raw.technology) do
    if technology.unit then
        if technology.unit.ingredients then
            local do_autosort = false
            if not technology.order then
                do_autosort = true
            end
            technology.order = technology.order or "a"
            local curr_order = 0
            local curr_cost = 0
            for _, ingredient in pairs(technology.unit.ingredients) do
                if order_by_tech[ingredient[1] or ""] or 0 > curr_order then
                    curr_order = order_by_tech[ingredient[1]]
                    curr_cost = (technology.unit.count or 1) * (ingredient[2] or 1)
                end
            end
            if do_autosort then
                technology.order = tostring(curr_cost).."-"..technology.order
            else
                technology.order = "0-"..technology.order
            end
            technology.order = tostring(curr_order).."-"..technology.order
        end
    end
end

for _, fluid in pairs(data.raw.fluid) do
    if not fluid.fuel_value or fluid.no_canister or data.raw.item[fluid.name.."-canister"] then
        goto continue
    end
    local canister_name = fluid.name.."-canister"
    local canister_item = {
        type = "item",
        name = canister_name,
        fuel_value = (du.MJ(fluid.fuel_value) * 8).."MJ",
        localised_name = {"label.filled-canister", {"fluid-name."..fluid.name}},
        fuel_category = "chemical",
        subgroup = "smelting-machine",
        order = "a",
        stack_size = 20,
        burnt_result = "empty-canister",
        icons = du.icons("empty-canister"):add_icons(du.get_icons(fluid)),
    }
    local canister_recipe = {
        type = "recipe",
        name = fluid.name.."-canister-filling",
        localised_name = {"label.canister-filling", {"fluid-name."..fluid.name}},
        category = "crafting-with-fluid",
        energy_required = 1,
        ingredients = {
            {type="item", name="empty-canister", amount=1},
            {type="fluid", name=fluid.name, amount=10},
        },
        results = {{type="item", name=canister_name, amount=1}}
    }
    data:extend({canister_item, canister_recipe})
    local canister_tech = data.raw.technology.canisters
    table.insert(canister_tech.effects, {type="unlock-recipe", recipe=canister_recipe.name})
    ::continue::
end
table.insert(data.raw.technology.canisters.effects, {type="unlock-recipe", recipe="oxygen-canister-filling"})
