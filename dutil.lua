require("util")

local dutil = {}

dutil.mod = "__GuG2__"
dutil.path = "/graphics/icons/"
dutil.ext = ".png"
dutil.size = 64

---@class dutil.IconSpec
---@field add fun(self:dutil.IconSpec, any:data.IconData): data.IconData Adds another `icon` before calling `fin`.
---@field addm fun(self:dutil.IconSpec, any:data.IconData): dutil.IconSpec Adds another `icon`, does not call `fin`.
---@field fin fun(self:dutil.IconSpec): data.IconData Removes custom function fields (`add`, `tint`, etc).
---@field tint fun(self:dutil.IconSpec, i: integer, tint: data.Color.struct): data.IconData Tints a specified `icon` before calling `fin`.
---@field tintm fun(self:dutil.IconSpec, i: integer, tint: data.Color.struct): dutil.IconSpec Tints a specified `icon`, does not call `fin`.
---@field icon string
---@field icon_size number
---@field icon_mipmaps number?
---@field scale number?
---@field shift data.Vector.struct|{[1]: number, [2]: number}

---@class dutil.IconSpecArgs
---@field name string
---@field mod string?
---@field path string?
---@field ext string?
---@field size number?
---@field discard boolean?

local function icon_spec_add(self, any)
    table.insert(self, any)
    return self
end

local function icon_spec_fin(self)
    self.add = nil
    self.addm = nil
    self.tint = nil
    self.tintm = nil
    self.fin = nil
    return self
end

local function icon_spec_tint(self, i, tint)
    if not self[i] then
        error("Invalid argument ("..i.."), no icon exists in table with index ("..i..").", 2)
    end
    self[i].tint = tint
    return self
end

local function icon_spec_tint_removing(self, i, tint)
    icon_spec_tint(self, i, tint)
    icon_spec_fin(self)
    return self
end

---@param self dutil.IconSpec
---@return dutil.IconSpec
local function icon_spec_add_removing(self, any)
    icon_spec_add(self, any)
    icon_spec_fin(self)
    return self
end

---Alias of `icons` with a table instead of arguments.
---@param tab dutil.IconSpecArgs
---@return dutil.IconSpec
---@nodiscard
function dutil.icons_ext(tab)
    local modn = tab.mod or dutil.mod
    local path = tab.path or dutil.path
    local ext = tab.ext or dutil.ext
    local size = tab.size or dutil.size
    local fullpath = tab.name
    if not tab.discard then
        fullpath = modn..path..tab.name..ext
    end
    return {
        {
            icon = fullpath,
            icon_size = size or dutil.size,
        },
        add = icon_spec_add_removing,
        addm = icon_spec_add,
        tint = icon_spec_tint_removing,
        tintm = icon_spec_tint,
        fin = icon_spec_fin,
    }
end

---Creates an `icons` table using `dutil.mod`, `.path`, `.ext` and `.size` (unless `discard` is true). Contains an *unserializeable* `add` and `addm` field.    
---`add` removes the `add` and `addm` fields automatically, `addm` preserves them.    
---`fin` removes both `add` and `addm` along with itself.    
---@param name string|dutil.IconSpecArgs
---@param size number?
---@param discard boolean?
---@return dutil.IconSpec
---@nodiscard
function dutil.icons_m(name, size, discard)
    if type(name) == "table" then
        return dutil.icons_ext(name)
    end
    if not discard then
        name = dutil.mod..dutil.path..name..dutil.ext
    end
    return {
        {
            icon = name,
            icon_size = size or dutil.size,
        },
        add = icon_spec_add_removing,
        addm = icon_spec_add,
        fin = icon_spec_fin,
    }
end

---Creates an single icon in the top right corner.
---@param name string
---@param size number?
---@param discard boolean?
---@return data.IconData
---@nodiscard
function dutil.icon_c(name, size, discard)
    if not discard then
        name = dutil.mod..dutil.path..name..dutil.ext
    end
    return {
        icon = name,
        icon_size = size or dutil.size,
        scale = 0.3,
        shift = {10, -10}
    }
end

---Creates an single icon in the top left corner.
---@param name string
---@param size number?
---@param discard boolean?
---@return data.IconData
---@nodiscard
function dutil.icon_co(name, size, discard)
    local res = dutil.icon_c(name, size, discard)
    res.shift[1] = -res.shift[1]
    return res
end

---Creates an icons table without the `add` and `addm` functions.
---@param name string
---@param size number?
---@param discard boolean?
---@return data.IconData
---@nodiscard
function dutil.icons(name, size, discard)
    return dutil.icons_m(name, size, discard):fin()
end

function dutil.MJ(string)
    return util.parse_energy(string)/1000/1000
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