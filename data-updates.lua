---@param prototype_name string
---@param prototype_type string eg assembling-machine
local function update_mask(prototype_name, prototype_type)
    local ptype = data.raw[prototype_type][prototype_name]
    if not ptype then
        error("No such prototype exists with type/name "..tostring(prototype_type).."["..tostring(prototype_name).."]", 2)
    end
    ptype.collision_mask = ptype.collision_mask or CUTIL.get_default_mask(prototype_type)
    if ptype.g2_clean_only then
        ptype.g2_clean = true ---@diagnostic disable-line
        CUTIL.add_layer(ptype.collision_mask, "ground-tile")
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.requires-cleanroom"}}
        end
    end
    if not ptype.g2_clean then
        CUTIL.add_layer(ptype.collision_mask, CUTIL.layer("cleanroom-tile"))
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.no-cleanroom"}}
        end
    else
        if not ptype.localised_description then
            ptype.localised_description = {"", {"?", {"", {"entity-description."..ptype.name}, "\n"}, ""}, {"label.yes-cleanroom"}}
        end
    end
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
    "curved-rail",
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

local function make_clean(prototype)
    prototype.g2_clean = true
end

make_clean(data.raw["transport-belt"]["transport-belt"])
make_clean(data.raw["transport-belt"]["fast-transport-belt"])
make_clean(data.raw["transport-belt"]["express-transport-belt"])
make_clean(data.raw["splitter"]["splitter"])
make_clean(data.raw["splitter"]["fast-splitter"])
make_clean(data.raw["splitter"]["express-splitter"])

for _, dtype in pairs(unclean_types) do
    for name, ptype in pairs(data.raw[dtype]) do
        update_mask(name, dtype)
    end
end

update_mask("cleanroom-controller", "electric-energy-interface")