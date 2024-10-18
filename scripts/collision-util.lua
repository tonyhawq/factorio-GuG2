require("util")

local built_in_util = require("collision-mask-util")

local cutil = table.deepcopy(built_in_util)

cutil.item_mask_prefix = "cutil_mask_itemG2__"
cutil.item_mask_prefix_pattern = "^"..cutil.item_mask_prefix
cutil.dummy_mask_entity = "cutil_mask_dummyG2"

---@param name string
function cutil.layer_in_use(name)

end

function cutil.building_mask(...)
    local created = {"item-layer", "object-layer", "player-layer", "water-tile"}
    for _, item in pairs(arg) do
        table.insert(created, item)
    end
    return created
end

---@param mask string[]
---@param named_layer string
---@return string[]
function cutil.add_named_layer(mask, named_layer)
    table.insert(mask, cutil.layer(named_layer))
    return mask
end

---@param mask string[]
---@param layer string
---@return string[]
function cutil.add_unnamed_layer(mask, layer)
    table.insert(mask, layer)
    return mask
end

---@param name string
function cutil.create_layer(name)
    if not data then
        error("cutil.create_mask can only be called in data stage.", 2)
    end
    if not data.raw.container[cutil.dummy_mask_entity] then
        data:extend({
            {
                type = "container",
                name = cutil.dummy_mask_entity,
                icon = "__GuG2__/graphics/missing.png",
                icon_size = 64,
                picture = util.empty_sprite(),
                inventory_size = 1,
                collision_mask = {},
            },
        })
    end
    local layer = cutil.get_first_unused_layer()
    table.insert(data.raw.container[cutil.dummy_mask_entity], layer)
    data:extend({
        {
            type = "item",
            name = cutil.item_mask_prefix..name,
            localised_name = {name, layer},
            icon = "__GuG2__/graphics/missing.png",
            icon_size = 64,
            stack_size = 1,
        },
    })
end

---@param name string
---@return string?
function cutil.layer(name)
    if not data then
        if not global.masks[name] then
            error("No mask exists with name "..tostring(name), 2)
        end
        return global.masks[name]
    end
    local item_name = cutil.item_mask_prefix..name
    if not data.raw.item[item_name] then
        error("No mask exists with name "..tostring(name), 2)
    end
    return data.raw.item[item_name].localised_name[2] --[[@as string]]
end

function cutil.setup()
    global.masks = {}
end

function cutil.update_masks()
    global.masks = {}
    for item, prototype in pairs(game.item_prototypes) do
        if not item:find(cutil.item_mask_prefix_pattern) then
            goto continue
        end
        global.masks[prototype.localised_name[1]] = prototype.localised_name[2]
        ::continue::
    end
end

return cutil