require("util")

GuG2 = GuG2 or {aliases={}, renamed_paths = {}}

local dutil = {}

function dutil.rename(name, to)
    GuG2.renamed_paths[name] = to
end

function dutil.alias(name, as, make_copies)
    if type(make_copies) == "nil" then
        make_copies = dutil.default_copy
    end
    if not as then
        if not GuG2.aliases[name] then
            error("No alias for name "..name)
        end
        if type(GuG2.aliases[name]) == "table" then
            if GuG2.aliases[name].copy then
                return table.deepcopy(GuG2.aliases[name].tab)
            end
            return GuG2.aliases[name].tab
        end
        return GuG2.aliases[name]
    end
    if GuG2.aliases[name] then
        error("Alias already exists with name "..name)
    end
    if type(as) == "table" then
        GuG2.aliases[name] = {tab=as, copy=make_copies or false}
    else
        GuG2.aliases[name] = as
    end
end

dutil.order = {}

function dutil.order.todo()
    return "z[todo]"
end

function dutil.order.ingot(name, tier)
    local order_main = "z"
    if name == "rod" then
        order_main = "a"
    elseif name == "plate" then
        order_man = "b"
    elseif name == "sheet" then
        order_man = "c"
    elseif name == "beam" then
        order_man = "d"
    elseif name == "cable" then
        order_man = "e"
    elseif name == "gear" then
        order_man = "f"
    else
        error("No order for "..tostring(name))
    end
    return order_main.."["..name.."]".."-"..tier
end

dutil.default_copy = false
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

function dutil.missing_sprite()
    return {
        filename = "__GuG2__/graphics/missing.png",
        width = 64,
        height = 64,
    }
end

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

local function get_mod_from_namestring(name)
    local _, has_mod = name:find("^.-%.")
    if not has_mod then
        return
    end
    local modname = name:sub(1, has_mod - 1)
    if modname:len() == 0 then
        return
    end
    if not mods[modname] then
        return
    end
    return modname, has_mod
end

function dutil.get_desc_from_item(item)
    if not item.localised_description and not item.place_result then
        return {"?", {"item-description."..item.name}}
    end
    if item.localised_description then
        return table.deepcopy(item.localised_description)
    end
    return {"?", {"entity-description."..item.place_result}}
end

---@class IconPathParams
---@field size number?
---@field tint table?

local function extract_size_from_path(name)
    local size_spec_start, size_spec_end, size_spec = name:find("&x(%d+)")
    if size_spec_start and size_spec_end and size_spec then
        name = name:sub(1, size_spec_start - 1)
        return name, tonumber(size_spec)
    end
    return name
end

local function extract_tint_from_path(name)
    local tint_spec_start, tint_spec_end, hex = name:find("&#(%x%x%x%x%x%x)")
    if tint_spec_start and tint_spec_end and hex then
        local r = tonumber(hex:sub(1,2), 16)
        local g = tonumber(hex:sub(3,4), 16)
        local b = tonumber(hex:sub(5,6), 16)
        name = name:sub(1, tint_spec_start - 1)
        return name, {r, g, b}
    end
    return name
end

---@return string, IconPathParams
local function get_icon_path_from_config(config)
    local first_char = config.name:sub(1, 1)
    if first_char == "%" then
        config = table.deepcopy(config)
        config.name = config.name:sub(2, config.name:len())
        config.discard = true
    end
    local second_char = config.name:sub(1, 1)
    if first_char..second_char == "!$" then
        config = table.deepcopy(config)
        config.name = config.name:sub(2, config.name:len())    
    end
    local name = config.name
    local override_mod, remove = get_mod_from_namestring(config.name)
    if first_char ~= "!$" and not override_mod and not config.mod and not config.discard and GuG2.renamed_paths[config.name] then
        local new_config = table.deepcopy(config)
        new_config.name = GuG2.renamed_paths[config.name]
        return get_icon_path_from_config(new_config)
    end
    local icon_path_params = {}
    name, icon_path_params.size = extract_size_from_path(name)
    name, icon_path_params.tint = extract_tint_from_path(name)

    if override_mod and (not config.mod) then
        log("now removing")
        name = config.name:sub(remove + 1, config.name:len())
    end
    if not config.discard then
        local mod = config.mod or override_mod or dutil.mod
        local path = config.path or dutil.path
        local ext = config.ext or dutil.ext
        name = "__"..mod.."__"..path..name..ext
    end
    return name, icon_path_params
end

local function get_icon_path(name, discard)
    return get_icon_path_from_config({name=name, discard=discard})
end

local function ensure_colon_syntax(first_argument)
    if type(first_argument) == "table" and first_argument.mt_type == "g2" then
        return
    end
    error("Ensure metatable calls use : syntax")
end

function dutil.get_icons_from_recipe(from)
    if from.type ~= "recipe" then
        error("Cannot get icons from a recipe which is not a recipe")
        return {}
    end
    if from.icon or from.icons then
        return dutil.get_icons(from)
    end
    local main_product = nil
    if from.main_product then
        main_product = dutil.get_item_or_fluid_errorno(from.main_product)
        if not main_product then
            error("Recipe "..tostring(from.name).." has main product "..tostring(from.main_product).." but no such item/fluid exists.")
        end
    end
    if #from.results == 1 then
        local result = from.results[1]
        local product = result.type == "fluid" and dutil.fluid(result.name, true) or dutil.item(result.name, true)
        if not product then
            error("Recipe "..tostring(from.name).." has one product "..tostring(result.name).." but no such item/fluid exists.")
        end
    end
    return dutil.get_icons(main_product)
end

function dutil.get_icons(from)
    if (not from.icons) and (not from.icon) then
        if from.type ~= "recipe" then
            error("Cannot get icons from table without icons or icon or recipe:\n"..serpent.block(from))
            return {}
        end
        return dutil.get_icons_from_recipe(from)
    end
    if from.icons then
        return table.deepcopy(from.icons)
    end
    return {
        {
            icon = from.icon,
            icon_size = from.icon_size
        }
    }
end

function dutil.get_item_or_fluid_errorno(name)
    return dutil.item(name, true) or dutil.fluid(name, true)
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
    extend = function (tabl)
        data:extend({tabl})
        return tabl
    end,
    copy = function (tabl, changes)
        local copied = table.deepcopy(tabl)
        for k, v in pairs(changes) do
            copied[k] = v
        end
        return copied
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
            return (icons[#icons])
        end,
        add_icons = function (icons, new_icons)
            ensure_colon_syntax(icons)
            for _, icon in pairs(new_icons) do
                table.insert(icons, icon)
            end
            return (icons)
        end,
        add = function (icons, name, size, discard)
            ensure_colon_syntax(icons)
            if type(name) == "table" then
                local config = name
                local path, options = get_icon_path_from_config(config)
                table.insert(icons, {
                    icon = path,
                    icon_size = config.size or options.size or dutil.size,
                    tint = config.tint or options.tint
                })
                return (icons)
            end
            local specced_size = size
            local specced_discard = discard
            if type(specced_size) == "boolean" then
                specced_discard = specced_size
                specced_size = nil
            end
            icons:add({name=name, size=specced_size, discard=specced_discard})
            return (icons)
        end,
        add_corner = function(icons, name, size, discard)
            ensure_colon_syntax(icons)
            if type(name) == "table" then
                local config = name
                icons:add(config)
                icons:get().scale = config.scale or dutil.corner_scale
                if not config.shift then
                    icons:get().shift = dutil.get_corner_offset(config.corner or dutil.default_corner)
                else
                    icons:get().shift = config.shift
                end
                return (icons)
            end
            icons:add(name, size, discard)
            local icon = icons:get()
            icon.scale = dutil.corner_scale
            icon.shift = dutil.get_corner_offset(dutil.default_corner)
            return (icons)
        end,
        tint = function(icons, tint)
            ensure_colon_syntax(icons)
            if type(tint) ~= "table" then
                error("Tint requires a table")
            end
            icons:get().tint = tint
            return (icons)
        end,
        scale = function(icons, scale)
            ensure_colon_syntax(icons)
            icons:get().scale = scale
            return (icons)
        end,
        name = function(icons)
            local got = icons:get().icon
            if type(got) ~= "string" then
                error("Could not get name of icons, was "..type(got)..(type(got) == "table" and serpent.block(got) or ""))
            end
            return got
        end,
    },
    assembling_machine = {},
    item = {
        retrieve = function (name)
            return
            data.raw.item[name] or
            data.raw.ammo[name] or
            data.raw.capsule[name] or
            data.raw.gun[name] or
            data.raw["item-with-entity-data"][name] or
            data.raw["item-with-label"][name] or
            data.raw["item-with-inventory"][name] or
            data.raw["item-with-tags"][name] or
            data.raw["spidertron-remote"][name] or
            data.raw["module"][name] or
            data.raw["rail-planner"][name] or
            data.raw["space-platform-starter-pack"][name] or
            data.raw.tool[name] or
            data.raw.armor[name] or
            data.raw["repair-tool"][name]
        end,
    },
    fluid = {
        retrieve = function (name)
            return data.raw.fluid[name]
        end,
    },
    recipe = {
        set_ingredients = function (recipe, ingredients)
            ensure_colon_syntax(recipe)
            recipe.ingredients = ingredients
            return (recipe)
        end,
        set_results = function (recipe, results)
            ensure_colon_syntax(recipe)
            recipe.results = results
            return (recipe)
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
            return (recipe)
        end,
        has_generic = function (recipe, generic, tabl)
            ensure_colon_syntax(recipe)
            if type(generic) == "string" then
                generic = {name=generic}
            end
            generic.type = data.raw.fluid[generic.name] and "fluid" or "item"
            for key, present in pairs(tabl) do
                if present.type == (generic.type or "item") and present.name == generic.name then
                    return (key)
                end
            end
            return nil
        end,
        get_generic = function (recipe, generic, tabl)
            local idx = recipe:has_generic(generic, tabl)
            local ingredient = tabl[idx]
            return (ingredient)
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
                return (recipe)
            end
            for _, generic in pairs(tabl) do
                generic.amount = generic.amount * by_or_name
            end
            return (recipe)
        end,
        get_ingredient = function (recipe, ingredient)
            return (recipe:get_generic(ingredient, recipe.ingredients))
        end,
        get_result = function (recipe, result)
            return (recipe:get_generic(result, recipe.results))
        end,
        adjust_ingredient_amount = function (recipe, by_or_name, optional_by)
            ensure_colon_syntax(recipe)
            return (recipe:adjust_generic_amount(recipe.ingredients, by_or_name, optional_by))
        end,
        adjust_product_amount = function (recipe, by_or_name, optional_by)
            ensure_colon_syntax(recipe)
            return (recipe:adjust_generic_amount(recipe.results, by_or_name, optional_by))
        end,
        has_ingredient = function (recipe, ingredient)
            ensure_colon_syntax(recipe)
            return (recipe:has_generic(ingredient, recipe.ingredients))
        end,
        has_result = function (recipe, result)
            ensure_colon_syntax(recipe)
            return (recipe:has_generic(result, recipe.results))
        end,
        add_ingredient = function (recipe, ingredient)
            ensure_colon_syntax(recipe)
            return (recipe:add_generic(ingredient, recipe.ingredients))
        end,
        add_result = function (recipe, result)
            ensure_colon_syntax(recipe)
            return (recipe:add_generic(result, recipe.results))
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
            return (recipe)
        end,
        add_unlock = function (recipe, technology)
            ensure_colon_syntax(recipe)
            recipe.enabled = false
            dutil.technology(technology):add_unlock(recipe.name)
            return (recipe)
        end,
        set_unlock = function (recipe, technology)
            ensure_colon_syntax(recipe)
            recipe.enabled = false
            for _, tech in pairs(data.raw.technology) do
                local len = #(tech.effects or {})
                local i = 0
                while i < len do
                    i = i + 1
                    local effect = tech.effects[i]
                    if not effect then
                        error(serpent.block(tech).."\nat "..i)
                    end
                    if effect.type == "unlock-recipe" and effect.recipe == recipe.name then
                        table.remove(tech.effects, i)
                        i = i - 1
                        len = len - 1
                    end
                end
            end
            dutil.technology(technology):add_unlock(recipe.name)
            return (recipe)
        end,
        show = function (recipe)
            ensure_colon_syntax(recipe)
            recipe.hidden = false
            return (recipe)
        end,
        hide = function (recipe)
            ensure_colon_syntax(recipe)
            recipe.hidden = true
            return (recipe)
        end,
    },
    technology = {
        add_unlock = function (tech, recipe)
            tech.effects = tech.effects or {}
            for _, effect in pairs(tech.effects) do
                if effect.recipe and effect.recipe.name == recipe then
                    return (tech)
                end
            end
            table.insert(tech.effects, {type="unlock-recipe", recipe=recipe})
            return (tech)
        end,
        add_label_unlock = function (tech, cfg)
            tech.effects = tech.effects or {}
            table.insert(tech.effects, {type="nothing", icons = cfg.icons or cfg.icon, effect_description=cfg.name})
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
    dutil[keyable] = function(name, ignore_error)
        local retrieved = data.raw[type][name]
        if dutil.metatable_constructable(keyable) then
            local mt = dutil.metatable(keyable)
            if mt.retrieve then
                retrieved = mt.retrieve(name)
            end
        end
        if not retrieved then
            if ignore_error then
                return nil
            end
            error("No "..type.." exists with name "..tostring(name))
        end
        if getmetatable(retrieved) then
            if tostring(retrieved.mt_type) ~= "g2" then
                error(tostring(name).." ("..tostring(type)..") already has a conflicting metatable.")
            end
        else
            if dutil.metatable_constructable(keyable) then
                setmetatable(retrieved, dutil.metatable(keyable))
            end
        end
        return retrieved
    end
end

function dutil.as_real_watts(val)
    if type(val) == "string" then
        return dutil.as_real_watts(dutil.J(val))
    end
    return val * 60
end

function dutil.MJ(string)
    return dutil.J(string) / 1000 / 1000
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

function dutil.truncate_decimals(number, places)
    return string.format("%."..(places or 3).."f", number)
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