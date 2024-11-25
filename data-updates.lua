local collision_mask_util = require("__core__.lualib.collision-mask-util")

---@param prototype_name string
---@param prototype_type string eg assembling-machine
local function update_mask(prototype_name, prototype_type)
    local ptype = data.raw[prototype_type][prototype_name]
    if not ptype then
        error("No such prototype exists with type/name "..tostring(prototype_type).."["..tostring(prototype_name).."]", 2)
    end
    if ptype.no_fix then
        goto continue
    end
    ptype.collision_mask = ptype.collision_mask or collision_mask_util.get_default_mask(prototype_type) or {}
    if ptype.g2_clean_only then
        ptype.g2_clean = true ---@diagnostic disable-line
        ptype.collision_mask.layers.ground_tile = true
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.requires-cleanroom"}}
        end
    end
    if not ptype.g2_clean then
        ptype.collision_mask.layers.cleanroom_tile = true
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.no-cleanroom"}}
        end
    else
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.yes-cleanroom"}}
        end
    end
    if ptype.requires_farmland then
        ptype.collision_mask.layers.non_farmland = true
        if ptype.localised_description and type(ptype.localised_description) == "table" and ptype.localised_description[1] == "" then
            table.insert(ptype.localised_description --[[@as table<string>]], {"", "\n", {"label.requires-farmland"}})
        end
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.requires-farmland"}}
        end
    end
    if ptype.requires_vertical_integration then
        ptype.collision_mask.layers.vertically_integratable = true
        if ptype.localised_description and type(ptype.localised_description) == "table" and ptype.localised_description[1] == "" then
            table.insert(ptype.localised_description --[[@as table<string>]], {"", "\n", {"label.requires-vertical-integration"}})
        end
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.requires-vertical-integration"}}
        end
    end
    ::continue::
end

local unclean_types = {
    "beacon",
    "assembling-machine",
    "furnace",
    "unit-spawner",
    "lab",
    "market",
    "offshore-pump",
    "pipe",
    "pipe-to-ground",
    "straight-rail",
    "storage-tank",
    "underground-belt",
    "loader",
    "tree",
    "turret",
    "fluid-turret",
    "boiler",
    "generator",
    "container",
    "logistic-container",
    "roboport",
    "wall",
    "reactor",
    "inserter",
}

local exempt_buildings = {
    "transport-belt", "transport-belt",
    "transport-belt", "fast-transport-belt",
    "transport-belt", "express-transport-belt",
    "splitter", "splitter",
    "splitter", "fast-splitter",
    "splitter", "express-splitter",
    "container", "crash-site-spaceship",
    "container", "crash-site-spaceship-wreck-big-1",
    "container", "crash-site-spaceship-wreck-big-2",
    "container", "crash-site-spaceship-wreck-medium-1",
    "container", "crash-site-spaceship-wreck-medium-2",
    "container", "crash-site-spaceship-wreck-medium-3",
}

local function make_clean(prototype)
    prototype.g2_clean = true
end

for i = 1, #exempt_buildings / 2 do
    local type = exempt_buildings[i * 2 - 1]
    local building = exempt_buildings[i * 2]
    make_clean(data.raw[type][building])
end

for _, dtype in pairs(unclean_types) do
    if not data.raw[dtype] then
        error("no protype type for "..dtype) 
    end
    for name, ptype in pairs(data.raw[dtype]) do
        update_mask(name, dtype)
    end
end

for _, tile in pairs(data.raw.tile) do
    if tile.collision_mask then
        if not tile.no_fix then ---@diagnostic disable-line
            if not tile.is_farmland then ---@diagnostic disable-line
                tile.collision_mask.layers.non_farmland = true
            end
            if not tile.vertically_enabled then ---@diagnostic disable-line
                tile.collision_mask.layers.vertically_integratable = true
            end
        end
    end
end

update_mask("cleanroom-controller", "electric-energy-interface")

for _, tree in pairs(data.raw.tree) do
    if tree.g2_set_drops then ---@diagnostic disable-line
        goto continue
    end
    tree.minable = {
        mining_time = (tree.minable or {mining_time = 0.1}).mining_time,
        results = {{type="item", name="log", amount=2}},
    }
    ::continue::
end

for _, resource in pairs(data.raw["resource"]) do
    if not resource.no_fix then  ---@diagnostic disable-line
        resource.collision_mask = {
            layers = {
                resource = true,
                water_tile = true,
            }
        }
    end
end