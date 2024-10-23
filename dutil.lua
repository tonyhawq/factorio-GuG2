require("util")

local dutil = {}

dutil.mod = "GuG2"
dutil.path = "/graphics/icons/"
dutil.ext = ".png"
dutil.size = 64
dutil.corner_scale = 0.3

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

dutil.icon_mt = {
    __index = function(icons, key)
        if key == "get" then
            if #icons == 0 then
                error("Cannot get from empty icons table", 2)
            end
            return function() return icons[#icons] end
        elseif key == "add" then
            return function(name, size, discard)
                table.insert(icons, {
                    icon = get_icon_path(name, discard),
                    icon_size = size or dutil.size
                })
                return icons
            end
        elseif key == "add_corner" then
            return function(name, size, discard)
                if type(name) == "table" then
                    local config = name
                    local path = get_icon_path_from_config(config)
                    icons.add(path, config.size, true)
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
                icons[#icons].tint = tint
                return icons
            end
        end
        error(tostring(key).." is not a part of dutil.icons.")
    end
}

function dutil.MJ(string)
    return util.parse_energy(string)/1000/1000
end

function dutil.icons_ext(config)
    local name = config.name
    if not config.discard then
        local mod = config.mod or dutil.mod
        local path = config.path or dutil.path
        local ext = config.ext or dutil.ext
        name = "__"..mod.."__"..path..name..ext
    end
    return dutil.icons(name, config.size, true)
end

function dutil.icons(name, size, discard)
    name = get_icon_path(name, discard)
    local returned = {}
    setmetatable(returned, dutil.icon_mt)
    returned.add(name, size, discard)
    return returned
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