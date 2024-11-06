require("util")

local dutil = {}

dutil.show_on_modify = true
dutil.mod = "GuG2"
dutil.path = "/graphics/icons/"
dutil.ext = ".png"
dutil.size = 64
dutil.corner_scale = 0.3

dutil.middle = 0
dutil.left_top = 1
dutil.right_top = 2
dutil.left_bottom = 3
dutil.right_bottom = 4

dutil.default_corner = dutil.right_top

function dutil.get_corner_offset(direction)
    if direction == dutil.left_top then
        return {-10, -10}
    end
    if direction == dutil.right_top then
        return {10, -10}
    end
    if direction == dutil.left_bottom then
        return {-10, 10}
    end
    if direction == dutil.right_bottom then
        return {10, 10}
    end
    if direction == dutil.middle then
        return {0,0}
    end
    error("Please input a direction", 2)
end

---@class dutil.IconSpecArgs
---@field name string
---@field mod string?
---@field path string?
---@field ext string?
---@field size number?
---@field discard boolean?

local function get_icon_path(name, discard)
    if not discard then
        name = "__"..dutil.mod.."__"..dutil.path..name..dutil.ext
    end
    return name
end

local function get_icon_path_from_config(config)
    local name = config.name
    if not config.discard then
        local mod = config.mod or dutil.mod
        local path = config.path or dutil.path
        local ext = config.ext or dutil.ext
        name = "__"..mod.."__"..path..name..ext
    end
    return name
end

local function ensure_colon_syntax(first_argument)
    if type(first_argument) == "table" and first_argument.mt_type == "g2" then
        return
    end
    error("Ensure metatable calls use : syntax")
end

dutil.metatables = {}

dutil.base_mt =
{
    mt_type = "g2",
    set = function (tabl, k, v)
        ensure_colon_syntax(tabl)
        tabl[k] = v
        return tabl
    end,
}
dutil.base_mt.__index = function(_, key)
    return dutil.base_mt[key]
end

dutil.metatable_indicies =
{
    icons = {
        type = "icons",
        get = function (icons)
            ensure_colon_syntax(icons)
            if #icons == 0 then
                error("Cannot get from empty icons table", 2)
            end
            return icons[#icons]
        end,
        add = function (icons, name, size, discard)
            ensure_colon_syntax(icons)
            if type(name) == "table" then
                local config = name
                return icons:add(get_icon_path_from_config(config), config.size, true)
            end
            table.insert(icons, {
                icon = get_icon_path(name, discard),
                icon_size = size or dutil.size
            })
            return icons
        end,
        add_corner = function(icons, name, size, discard)
            ensure_colon_syntax(icons)
            if type(name) == "table" then
                local config = name
                icons:add(config)
                icons:get().scale = config.scale or dutil.corner_scale
                icons:get().shift = dutil.get_corner_offset(config.corner or dutil.default_corner)
                return icons
            end
            table.insert(icons, {
                icon = get_icon_path(name, discard),
                icon_size = size or dutil.size,
                scale = dutil.corner_scale,
                shift = dutil.get_corner_offset(dutil.default_corner)
            })
            return icons
        end,
        tint = function(icons, tint)
            ensure_colon_syntax(icons)
            if type(tint) ~= "table" then
                error("Tint requires a table")
            end
            icons:get().tint = tint
            return icons
        end
    },
    assembling_machine = {},
    item = {},
    fluid = {},
    recipe = {
        set_ingredients = function (recipe, ingredients)
            ensure_colon_syntax(recipe)
            recipe.ingredients = ingredients
            return recipe
        end,
        set_results = function (recipe, results)
            ensure_colon_syntax(recipe)
            recipe.results = results
            return recipe
        end,
        add_generic = function (recipe, generic, tabl)
            ensure_colon_syntax(recipe)
            for key, present in pairs(tabl) do
                if present.type == (generic.type or "item") and present.name == generic.name then
                    table.remove(tabl, key)
                    break
                end
            end
            table.insert(tabl, generic)
            return recipe 
        end,
        has_generic = function (recipe, generic, tabl)
            ensure_colon_syntax(recipe)
            log("hola senor")
            if type(generic) == "string" then
                generic = {name=generic}
            end
            generic.type = data.raw.fluid[generic.name] and "fluid" or "item"
            for key, present in pairs(tabl) do
                if present.type == (generic.type or "item") and present.name == generic.name then
                    return key
                end
            end
            return nil
        end,
        get_generic = function (recipe, generic, tabl)
            local idx = recipe:has_generic(generic, tabl)
            local ingredient = tabl[idx]
            return ingredient
        end,
        adjust_generic_amount = function (recipe, tabl, by_or_name, optional_by)
            ensure_colon_syntax(recipe)
            local ingredient = type(by_or_name) == "string" and {name=by_or_name} or type(by_or_name) == "table" and by_or_name
            if ingredient then
                if not optional_by then
                    error("Expected number as argument 3, got nil")
                end
                if recipe:has_generic(ingredient, tabl) then
                    local present = recipe:get_generic(ingredient, tabl)
                    recipe:add_generic({type=present.type, name=present.name, amount=present.amount * optional_by}, tabl)
                else
                    error("Recipe "..tostring(recipe.name).." does not contain an ingredient with name "..tostring(ingredient.name))
                end
                return recipe
            end
            for _, generic in pairs(tabl) do
                generic.amount = generic.amount * by_or_name
            end
            return recipe
        end,
        get_ingredient = function (recipe, ingredient)
            return recipe:get_generic(ingredient, recipe.ingredients)
        end,
        get_result = function (recipe, result)
            return recipe:get_generic(result, recipe.results)
        end,
        adjust_ingredient_amount = function (recipe, by_or_name, optional_by)
            ensure_colon_syntax(recipe)
            return recipe:adjust_generic_amount(recipe.ingredients, by_or_name, optional_by)
        end,
        adjust_product_amount = function (recipe, by_or_name, optional_by)
            ensure_colon_syntax(recipe)
            return recipe:adjust_generic_amount(recipe.results, by_or_name, optional_by)
        end,
        has_ingredient = function (recipe, ingredient)
            ensure_colon_syntax(recipe)
            return recipe:has_generic(ingredient, recipe.ingredients)
        end,
        has_result = function (recipe, result)
            ensure_colon_syntax(recipe)
            return recipe:has_generic(result, recipe.results)
        end,
        add_ingredient = function (recipe, ingredient)
            ensure_colon_syntax(recipe)
            return recipe:add_generic(ingredient, recipe.ingredients)
        end,
        add_result = function (recipe, result)
            ensure_colon_syntax(recipe)
            return recipe:add_generic(result, recipe.results)
        end,
        remove_ingredient = function (recipe, ingredient)
            ensure_colon_syntax(recipe)
            if type(ingredient) == "table" then
                for key, present in pairs(recipe.ingredients) do
                    if present.type == (ingredient.type or "item") and present.name == ingredient.name then
                        if ingredient.amount and ingredient.amount < present.amount then
                            present.amount = present.amount - ingredient.amount
                        else
                            table.remove(recipe.ingredients, key)
                            break
                        end
                    end
                end
            else
                for key, present in pairs(recipe.ingredients) do
                    if present.name == ingredient then
                        table.remove(recipe.ingredients, key)
                        break
                    end
                end
            end
            return recipe
        end,
        add_unlock = function (recipe, technology)
            ensure_colon_syntax(recipe)
            recipe.enabled = false
            dutil.technology(technology):add_unlock(recipe.name)
            return recipe
        end,
        set_unlock = function (recipe, technology)
            ensure_colon_syntax(recipe)
            recipe.enabled = false
            for _, tech in pairs(data.raw.technology) do
                for i = 1, #(tech.effects or {}) do
                    local effect = tech.effects[i]
                    if effect.type == "unlock-recipe" and effect.recipe == recipe then
                        table.remove(tech.effects, i)
                        i = i - 1
                    end
                end
            end
            dutil.technology(technology):add_unlock(recipe.name)
            return recipe
        end,
        show = function (recipe)
            ensure_colon_syntax(recipe)
            recipe.hidden = false
            return recipe
        end,
        hide = function (recipe)
            ensure_colon_syntax(recipe)
            recipe.hidden = true
            return recipe
        end,
    },
    technology = {
        add_unlock = function (tech, recipe)
            tech.effects = tech.effects or {}
            for _, effect in pairs(tech.effects) do
                if effect.recipe and effect.recipe.name == recipe then
                    return tech
                end
            end
            table.insert(tech.effects, {type="unlock-recipe", recipe=recipe})
            return tech
        end,
    },
    inserter = {},
}

function dutil.metatable(name)
    if not dutil.metatables[name] then
        if not dutil.metatable_indicies[name] then
            error("No metatable exists for "..tostring(name)) 
        end
        dutil.metatables[name] = {
            __index = function(real_table, key)
                local value = dutil.metatable_indicies[name][key]
                if not value then
                    value = dutil.base_mt[key]
                end
                return value 
            end,
        }
    end
    return dutil.metatables[name]
end

function dutil.metatable_constructable(name)
    if dutil.metatables[name] or dutil.metatable_indicies[name] then
        return true
    end
    return false
end

local function_types = {
    "assembling-machine",
    "item",
    "fluid",
    "recipe",
    "inserter",
    "technology"
}

for _, type in pairs(function_types) do
    local keyable = type:gsub("-", "_")
    dutil[keyable] = function(name)
        if not data.raw[type][name] then
            error("No "..type.." exists with name "..tostring(name))
        end
        if getmetatable(data.raw[type][name]) then
            if tostring(data.raw[type][name].mt_type) ~= "g2" then
                error(tostring(name).." ("..tostring(type)..") already has a conflicting metatable.")
            end
        else
            if dutil.metatable_constructable(keyable) then
                setmetatable(data.raw[type][name], dutil.metatable(keyable))
            end
        end
        return data.raw[type][name]
    end
end

function dutil.MJ(string)
    return dutil.J(string)
end

function dutil.J(string)
    return util.parse_energy(string)
end

function dutil.empty_icons()
    local returned = {}
    setmetatable(returned, dutil.metatable("icons"))
    return returned
end

function dutil.icons(name, size, discard)
    local returned = dutil.empty_icons()
    if not name then
        return returned
    end
    return returned:add(name, size, discard)
end

---@param name string
---@return number
function dutil.fuel_value(name)
    local prototype = data.raw.item[name] or data.raw.fluid[name]
    if not prototype then
        error("No such prototype exists with name "..tostring(name)..". Did you mean to require() your items before this?")
        return 0
    end
    if not prototype.fuel_value then
        error("Prototype "..tostring(name).." does not have a fuel value.")
        return 0
    end
    return util.parse_energy(prototype.fuel_value)
end

return dutil

-- replace du.icons with iron plate
-- du.icons(.+)
-- to
-- {{icon="__base__/graphics/icons/iron-plate.png", icon_size=64}},--$1

-- replace that with original
-- \{\{icon="__base__/graphics/icons/iron-plate.png", icon_size=64\}\},--
-- to
-- du.icons