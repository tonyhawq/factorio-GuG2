require("util")

local dutil = {}

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

local function ensure_dot_syntax(first_argument)
    if type(first_argument) == "table" and first_argument.type == "icons" then
        error("Ensure all icons calls are . syntax, not :")
    end
end

dutil.icon_mt = {
    __index = function(icons, key)
        if key == "type" then
            return "icons"
        elseif key == "get" then
            if #icons == 0 then
                error("Cannot get from empty icons table", 2)
            end
            return function(first_arg) ensure_dot_syntax(first_arg) return icons[#icons] end
        elseif key == "add" then
            return function(name, size, discard)
                ensure_dot_syntax(name)
                if type(name) == "table" then
                    local config = name
                    return icons.add(get_icon_path_from_config(config), config.size, true)
                end
                table.insert(icons, {
                    icon = get_icon_path(name, discard),
                    icon_size = size or dutil.size
                })
                return icons
            end
        elseif key == "add_corner" then
            return function(name, size, discard)
                ensure_dot_syntax(name)
                if type(name) == "table" then
                    local config = name
                    icons.add(config)
                    icons.get().scale = config.scale or dutil.corner_scale
                    icons.get().shift = dutil.get_corner_offset(config.corner or dutil.default_corner)
                    return icons
                end
                table.insert(icons, {
                    icon = get_icon_path(name, discard),
                    icon_size = size or dutil.size,
                    scale = dutil.corner_scale,
                    shift = dutil.get_corner_offset(dutil.default_corner)
                })
                return icons
            end
        elseif key == "tint" then
            if #icons == 0 then
                error("Cannot tint empty icons table", 2)
            end
            return function(tint)
                ensure_dot_syntax(tint)
                if type(tint) ~= "table" then
                    error("Tint requires a table")
                end
                icons.get().tint = tint
                return icons
            end
        end
    end
}

local function_types = {
    "assembling-machine",
    "item",
    "fluid",
}

for _, type in pairs(function_types) do
    dutil[type:gsub("-", "_")] = function(name)
        if not data.raw[type][name] then
            error("No "..type.." exists with name "..tostring(name))
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
    setmetatable(returned, dutil.icon_mt)
    return returned
end

function dutil.icons(name, size, discard)
    local returned = dutil.empty_icons()
    if not name then
        return returned
    end
    return returned.add(name, size, discard)
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