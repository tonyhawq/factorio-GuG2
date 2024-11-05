require("util")

local cleanroom = {}

---@class Cleanroom
---@field children table<uint32, LuaEntity>
---@field vents table<uint32, LuaEntity>
---@field controller LuaEntity
---@field contains table<uint32, LuaEntity>
---@field tiles MapPosition[]
---@field enabled boolean
---@field filled_tiles integer
---@field total_tiles integer
---@field width integer
---@field height integer
---@field vent_efficiency number
---@field efficiency number
---@field vent_count integer
---@field power_consumption number

---@class Bucket.Cleanroom
---@field n integer

---@alias CleanroomID uint32

local BUCKET_COUNT = 4

cleanroom.vent_amount_per_second = 60
cleanroom.vent_fluid = "water"
cleanroom.power_usage_per_filled_tile_str = "20kW"
cleanroom.power_usage_per_filled_tile = util.parse_energy(cleanroom.power_usage_per_filled_tile_str)
cleanroom.power_usage_per_tile_str = "200kW"
cleanroom.power_usage_per_tile = util.parse_energy(cleanroom.power_usage_per_tile_str)
cleanroom.max_power_consumption = util.parse_energy("600MW")

-- the thinking is that people will want to produce cleanrooms with the most possible compact setup
-- hopefully leading to FUN !!!
-- but of course you can eat the energy penalties.
local space_filling_types =
{
    ["assembling-machine"] = true,
    ["furnace"] = true,
    ["inserter"] = true,
}
local wall_entities =
{
    ["cleanroom-wall"] = true,
    ["cleanroom-vent"] = true,
    ["cleanroom-interface"] = true,
    ["cleanroom-item-interface"] = true,
    ["cleanroom-fluid-interface"] = true,
}

local controllers =
{
    ["cleanroom-controller"] = true,
}

function cleanroom.setup()
    ---@type table<integer, Bucket.Cleanroom>
    storage.cbuckets = storage.cbuckets or {{n=0}, {n=0}, {n=0}, {n=0}}
    storage.cbucket_idx = storage.cbucket_idx or 0
    storage.cbucket_adding_idx = storage.cbucket_adding_idx or 0

    ---@type table<uint32, Cleanroom>
    storage.cleanrooms = storage.cleanrooms or {}

    ---@type table<uint32, uint32>
    storage.cleanroom_composed_of = storage.cleanroom_composed_of or {}

    ---@type table<integer, table<integer, CleanroomID>>
    storage.tiles_inside_cleanroom = storage.tiles_inside_cleanroom or {}

    ---@type table<integer, CleanroomID>
    storage.built_inside_cleanroom = storage.built_inside_cleanroom or {}
end

---@param name string
function cleanroom.is_wall(name)
    return wall_entities[name] or false
end

---@param name string
function cleanroom.is_controller(name)
    return controllers[name] or false
end

---@param x integer
---@param y integer
---@param as uint32
function cleanroom.register_tile(x, y, as)
    storage.tiles_inside_cleanroom[x] = storage.tiles_inside_cleanroom[x] or {}
    storage.tiles_inside_cleanroom[x][y] = as
end

---@param x integer
---@param y integer
function cleanroom.unregister_tile(x, y)
    if storage.tiles_inside_cleanroom[x] then
        storage.tiles_inside_cleanroom[x][y] = nil
    end
end

---@param entity LuaEntity
function cleanroom.is_inside_cleanroom(entity)
    local pos = entity.position
    if storage.tiles_inside_cleanroom[pos.x] then
        if storage.tiles_inside_cleanroom[pos.x][pos.y] then
            return storage.tiles_inside_cleanroom[pos.x][pos.y]
        end
    end
end

---@param event EventData.on_built_entity|EventData.on_robot_built_entity
function cleanroom.on_created(event)
    local entity = event.entity
    local room_id = cleanroom.is_inside_cleanroom(entity)
    if not room_id then
        --game.print("placed outside cleanroom")
        if cleanroom.do_control(entity.type) and cleanroom.requires_cleanroom(entity) then
            --game.print("but it requires one.")
            entity.active = false
        end
        return
    end
    local room = storage.cleanrooms[room_id]
    if not room then
        error("Cleanroom was registered to tile despite not existing.")
    end
    if cleanroom.is_wall(entity.name) or cleanroom.is_controller(entity.name) then
        cleanroom.destroy(room)
        --game.print("was wall/controller")
        return
    end
    if not cleanroom.is_clean(entity) then
        cleanroom.destroy(room)
        --game.print("was unclean")
        return
    end
    --game.print("adding to room")
    cleanroom.add_contained(room, entity)
end

---@param event EventData.on_player_mined_entity|EventData.on_entity_died|EventData.on_robot_mined_entity
function cleanroom.on_destroyed(event)
    local unit_number = event.entity.unit_number --[[@as uint32]]
    if storage.cleanroom_composed_of[unit_number] then
        --game.print("is part of construction")
        local room = storage.cleanrooms[storage.cleanroom_composed_of[unit_number]]
        cleanroom.destroy(room)
        if storage.cleanroom_composed_of[unit_number] then
            --game.print("destroy did not remove me")
        end
    end
    if storage.built_inside_cleanroom[unit_number] then
        --game.print("was built inside room")
        local room = storage.cleanrooms[storage.built_inside_cleanroom[unit_number]]
        if room then
            cleanroom.remove_contained(room, event.entity)
        end
    end
end

---@param room Cleanroom
function cleanroom.destroy(room)
    storage.cleanroom_composed_of[room.controller.unit_number] = nil
    storage.cleanrooms[room.controller.unit_number] = nil
    for child, _ in pairs(room.children) do
        storage.cleanroom_composed_of[child] = nil
    end
    cleanroom.disable_internal(room)
    for contained, entity in pairs(room.contains) do
        room.contains[contained] = nil
        storage.built_inside_cleanroom[entity.unit_number] = nil
    end
    for _, tile in pairs(room.tiles) do
        cleanroom.unregister_tile(tile.x, tile.y)
    end
end

---@param room Cleanroom
---@param entity LuaEntity
function cleanroom.add_contained(room, entity)
    if cleanroom.do_control(entity.type) then
        if storage.built_inside_cleanroom[entity.unit_number] then
            error("Attempting to add entity to a cleanroom that already has a cleanroom")
        end
        storage.built_inside_cleanroom[entity.unit_number] = room.controller.unit_number
        room.contains[entity.unit_number] = entity
        entity.active = room.enabled
        if room.enabled then
            cleanroom.deactivate(room)
            rendering.draw_text{text={"label.deactivated-the-cleanroom"}, surface=entity.surface, target=entity.position, color={r=255,g=255,b=255}, time_to_live=120, scale_with_zoom=true}
        end
    end
end

---@param room Cleanroom
---@param entity LuaEntity
function cleanroom.remove_contained(room, entity)
    if not storage.built_inside_cleanroom[entity.unit_number] then
        error("Cannot remove an entity that is not built inside of a cleanroom.")
    end
    storage.built_inside_cleanroom[entity.unit_number] = nil
    room.contains[entity.unit_number] = nil
    if room.enabled then
        cleanroom.deactivate(room)
        rendering.draw_text{text={"label.deactivated-the-cleanroom"}, surface=entity.surface, target=entity.position, color={r=255,g=255,b=255}, time_to_live=120, scale_with_zoom=true}
    end
end

---@param room Cleanroom
function cleanroom.activate(room)
    cleanroom.calculate_efficiency(room)
    cleanroom.enable_internal(room)
    room.enabled = true
end

---@param room Cleanroom
function cleanroom.deactivate(room)
    if room.enabled then
        room.power_consumption = 0
        cleanroom.disable_internal(room)
        room.enabled = false
    end
end

---@param room Cleanroom
function cleanroom.disable_internal(room)
    for unit_number, entity in pairs(room.contains) do
        if not entity.valid then
            error("Invalid entity detected inside of cleanroom.")
            -- cleanup invalid contained things (should never happen?)
            storage.built_inside_cleanroom[unit_number] = nil
            room.contains[unit_number] = nil
            goto continue
        end
        entity.active = false
        ::continue::
    end
end

---@param room Cleanroom
function cleanroom.enable_internal(room)
    for unit_number, entity in pairs(room.contains) do
        if not entity.valid then
            error("Invalid entity detected inside of cleanroom.")
            -- cleanup invalid contained things (should never happen?)
            storage.built_inside_cleanroom[unit_number] = nil
            room.contains[unit_number] = nil
            goto continue
        end
        entity.active = true
        ::continue::
    end
end

---@param entity LuaEntity
---@return boolean
function cleanroom.is_clean(entity)
    return not (entity.prototype.collision_mask.layers.cleanroom_tile or false)
end

---@param entity LuaEntity
---@return boolean
function cleanroom.requires_cleanroom(entity)
    return entity.prototype.collision_mask.layers.ground_tile or false
end

local SEARCH_LIMIT = 200

---@param surf LuaSurface
---@param from MapPosition
---@param to MapPosition
---@param wall_map table<uint32, LuaEntity>
---@param dir "x"|"y"
function cleanroom.is_continuous(surf, from, to, dir, wall_map)
    rendering.draw_line{surface=surf, from=from, to=to, color={r=0, g=0, b=255, a=255}, width=2}
    local working
    if from[dir] < to[dir] then
        working = {x=from.x, y=from.y}
    else
        working = {x=to.x, y=to.y}
    end
    local dist = math.abs(to[dir] - from[dir]) + 1
    local is_wall = false
    for i = 1, dist do
        is_wall = false
        rendering.draw_circle{surface=surf, target=working, radius=0.25, filled=true, color={r=0, g=0, b=255, a=255}}
        local entities = surf.find_entities_filtered{position=working}
        for _, entity in pairs(entities) do
            if cleanroom.is_wall(entity.name) and (not storage.cleanroom_composed_of[entity.unit_number]) then
                is_wall = true
                wall_map[entity.unit_number] = entity
            end
        end
        working[dir] = working[dir] + 1
        if not is_wall then
            return false
        end
    end
    return true
end

---@param entities LuaEntity[]
---@param regged_walls LuaEntity[]?
---@return boolean, string?, integer
function cleanroom.has_wall(entities, regged_walls)
    local has_wall = false
    local errorno = nil
    local controllers = 0
    for _, entity in pairs(entities) do
        if storage.cleanroom_composed_of[entity.unit_number] then
            errorno = "other cleanroom present"
        end
        if cleanroom.is_wall(entity.name) then
            has_wall = true
            if regged_walls then
                table.insert(regged_walls, entity)
            end
        end
        if entity.name == "cleanroom-controller" then
            controllers = controllers + 1
        end
    end
    return has_wall, errorno, controllers
end

local cleanroom_controls_types =
{
    ["assembling-machine"] = true,
    ["furnace"] = true,
    ["inserter"] = true,
    ["transport-belt"] = true,
    ["splitter"] = true,
    ["pump"] = true,
}

---@param etype string
---@return boolean
function cleanroom.do_control(etype)
    return cleanroom_controls_types[etype] or false
end

---@param controller LuaEntity
function cleanroom.create(controller)
    if storage.cleanrooms[controller.unit_number] then
        error("cleanroom:create Cleanroom already exists with same unit_number", 2)
    end
    rendering.clear("GuG2")
    local pos = controller.position
    local surf = controller.surface
    local top_left = {x=pos.x, y=pos.y}
    -- locate left bounding wall
    local is_wall = false
    for i = 1, SEARCH_LIMIT do
        pos.x = pos.x - 1
        local entities = surf.find_entities_filtered{position=pos}
        local errorno
        is_wall, errorno = cleanroom.has_wall(entities)
        if errorno then
            return errorno
        end
        if is_wall then
            break
        end
    end
    rendering.draw_line{surface=controller.surface, from=pos, to=top_left, color={r=0, g=255, b=0, a=255}, width=2}
    if not is_wall then
        return "limit exceeded"
    end
    is_wall = false
    -- locate top bounding wall
    for i = 1, SEARCH_LIMIT do
        pos.y = pos.y - 1
        local entities = surf.find_entities_filtered{position=pos}
        local errorno
        is_wall, errorno = cleanroom.has_wall(entities)
        if errorno then
            return errorno
        end
        if not is_wall then
            break
        end
        entities = surf.find_entities_filtered{position={pos.x + 1, pos.y}}
        local aux_wall, errornox = cleanroom.has_wall(entities)
        if errornox then
            return errornox
        end
        if aux_wall then
            pos.y = pos.y - 1
            is_wall = false
            break
        end
    end
    if is_wall then
        return "limit exceeded"
    end
    pos.y = pos.y + 1
    rendering.draw_line{surface=controller.surface, from=pos, to=top_left, color={r=0, g=255, b=0, a=255}, width=2}
    top_left.x = pos.x
    top_left.y = pos.y
    -- find right edge
    is_wall = false
    for i = 1, SEARCH_LIMIT do
        pos.x = pos.x + 1
        local entities = surf.find_entities_filtered{position=pos}
        local errorno
        is_wall, errorno = cleanroom.has_wall(entities)
        if errorno then
            return errorno
        end
        if not is_wall then
            break
        end
        entities = surf.find_entities_filtered{position={pos.x, pos.y + 1}}
        local aux_wall, errornox = cleanroom.has_wall(entities)
        if errornox then
            return errornox
        end
        if aux_wall then
            pos.x = pos.x + 1
            is_wall = false
            break
        end
    end
    if is_wall then
        return "limit exceeded"
    end
    pos.x = pos.x - 1
    local width = pos.x - top_left.x
    -- find bottom edge
    is_wall = false
    for i = 1, SEARCH_LIMIT do
        pos.y = pos.y + 1
        local entities = surf.find_entities_filtered{position=pos}
        local errorno
        is_wall, errorno = cleanroom.has_wall(entities)
        if errorno then
            return errorno
        end
        if not is_wall then
            break
        end
        entities = surf.find_entities_filtered{position={pos.x - 1, pos.y}}
        local aux_wall, errornox = cleanroom.has_wall(entities)
        if errornox then
            return errornox
        end
        if aux_wall then
            pos.y = pos.y + 1
            is_wall = false
            break
        end
    end
    if is_wall then
        return "limit exceeded"
    end
    pos.y = pos.y - 1
    local height = math.abs(top_left.y - pos.y)
    local visited_walls = {}
    if not cleanroom.is_continuous(controller.surface, top_left, {x=top_left.x + width, y=top_left.y}, "x", visited_walls) then
        return "not continuous top left -> top right"
    end
    if not cleanroom.is_continuous(controller.surface, {x=top_left.x, y=top_left.y + height}, {x=top_left.x + width, y=top_left.y + height}, "x", visited_walls) then
        return "not continuous bottom left -> bottom right"
    end
    if not cleanroom.is_continuous(controller.surface, top_left, {x=top_left.x, y=top_left.y + height}, "y", visited_walls) then
        return "not continuous top left -> bottom left"
    end
    if not cleanroom.is_continuous(controller.surface, {x=top_left.x + width, y=top_left.y}, {x=top_left.x, y=top_left.y + height}, "y", visited_walls) then
        return "not continuous top right -> bottom right"
    end
    if width == 0 then
        return "invalid width"
    end
    if height == 0 then
        return "invalid height"
    end
    -- see if cleanroom contains cleanroom or unclean entities
    local internal_area = {left_top={top_left.x + 1, top_left.y + 1}, right_bottom={top_left.x + width - 1, top_left.y + height - 1}}
    rendering.draw_rectangle{left_top={top_left.x + 1, top_left.y + 1}, right_bottom={top_left.x + width - 1, top_left.y + height - 1}, surface=controller.surface, color={r=0, g=255, b=255, a=255}}
    local internal_entities = controller.surface.find_entities(internal_area)
    local controllers = 0
    local cleanroom_contains = {}
    for _, entity in pairs(internal_entities) do
        if cleanroom.is_wall(entity.name) then
            return "contains cleanroom"
        end
        if entity.name == "cleanroom-controller" then
            controllers = controllers + 1
        end
        if controllers > 1 then
            return "multiple controllers"
        end
        if cleanroom.do_control(entity.type) then
            entity.active = false
            storage.built_inside_cleanroom[entity.unit_number] = controller.unit_number
            cleanroom_contains[entity.unit_number] = entity
            rendering.draw_circle{target=entity.position, color={r=0, g=255, b=255, a=255}, radius=0.25, filled=true, surface=entity.surface}
        end
    end
    local cleanroom_tiles = controller.surface.count_tiles_filtered{area=internal_area, collision_mask={cleanroom_tile = true}}
    local calculated_amount = (width - 1) * (height - 1)
    if cleanroom_tiles < calculated_amount then
        game.print("has tiles "..cleanroom_tiles)
        game.print("needs tiles "..calculated_amount)
        return "not enough tiles"
    end
    game.print("Cleanroom has width, height")
    game.print(width)
    game.print(height)
    rendering.draw_rectangle{surface=controller.surface, color={r=255, g=0, b=0, a=255}, left_top=top_left, right_bottom={top_left.x+width, top_left.y+height}}
    local visited_vents = {}
    local vent_count = 0
    for unit_number, entity in pairs(visited_walls) do
        storage.cleanroom_composed_of[unit_number] = controller.unit_number
        if entity.name == "cleanroom-vent" then
            visited_vents[entity.unit_number] = entity
            vent_count = vent_count + 1
        end
    end
    storage.cleanroom_composed_of[controller.unit_number] = controller.unit_number
    local created = {
        children = visited_walls,
        vents = visited_vents,
        controller = controller,
        contains = cleanroom_contains,
        tiles = {},
        enabled = false,
        total_tiles = 0,
        filled_tiles = 0,
        width = width,
        height = height,
        efficiency = 0,
        vent_efficiency = 0,
        vent_count = vent_count,
        power_consumption = 0,
    } --[[@as Cleanroom]]

    for x = 1, width - 1 do
        for y = 1, height - 1 do
            cleanroom.register_tile(top_left.x + x, top_left.y + y, controller.unit_number)
            table.insert(created.tiles, {[1]=top_left.x + x, [2]=top_left.y + y, x=top_left.x + x, y=top_left.y + y})
        end
    end
    created.total_tiles = (width - 1) * (height- 1)
    storage.cleanrooms[controller.unit_number] = created
    cleanroom.calculate_efficiency(created)
    cleanroom.add_to_bucket(created.controller.unit_number)
end

---@param room Cleanroom
function cleanroom.count_filled_tiles(room)
    local filled_tiles = 0
    local surface = room.controller.surface
    for _, tile in pairs(room.tiles) do
        local entities = surface.find_entities_filtered{position=tile}
        for _, entity in pairs(entities) do
            if space_filling_types[entity.type] then
                filled_tiles = filled_tiles + 1
                break
            end
        end
    end
    room.filled_tiles = filled_tiles
end

---@param room Cleanroom
function cleanroom.calculate_efficiency(room)
    cleanroom.count_filled_tiles(room)
    room.vent_efficiency = math.pow(math.max(math.min((25 * room.vent_count) / (room.total_tiles), 1), 0.1), 2)
    room.efficiency = room.vent_efficiency
    room.power_consumption = math.max((1 - room.efficiency), 0.1) * (room.total_tiles - room.filled_tiles) * cleanroom.power_usage_per_tile
    room.controller.power_usage = room.power_consumption
end

---@param room Cleanroom
function cleanroom.update(room)
    if not room.enabled then
        return
    end
    local vent_has_filled = false
    for unit_number, vent in pairs(room.vents) do
        if not vent.valid then
            error("Invalid vent detected in cleanroom.")
            -- something is very wrong
            cleanroom.destroy(room)
            return
        end
        local fluidbox = vent.fluidbox
        local fluid = {amount=0, name=cleanroom.vent_fluid}
        if fluidbox[1] then
            fluid = fluidbox[1]
        end
        fluid.amount = fluid.amount + cleanroom.vent_amount_per_second
        fluidbox[1] = fluid
        if not vent_has_filled and fluid.amount >= fluidbox.get_capacity(1) then
            vent_has_filled = true
            cleanroom.deactivate(room)
        end
    end
end

local update = cleanroom.update

---@param room_id uint32
function cleanroom.add_to_bucket(room_id)
    storage.cbucket_adding_idx = (storage.cbucket_adding_idx % BUCKET_COUNT) + 1
    local bucket = storage.cbuckets[storage.cbucket_adding_idx]
    bucket[bucket.n + 1] = room_id
    bucket.n = bucket.n + 1
end

function cleanroom.on_quarter_second()
    storage.cbucket_idx = (storage.cbucket_idx % BUCKET_COUNT) + 1
    -- there are four buckets, so each cleanroom update happens once per second.
    local i = storage.cbucket_idx
    local bucket = storage.cbuckets[i]
    if not bucket then
        return
    end
    for idx, id in pairs(bucket) do
        if idx == "n" then
            goto continue
        end
        if not storage.cleanrooms[id] then
            bucket[idx] = nil
            goto continue
        end
        update(storage.cleanrooms[id])
        ::continue::
    end
end

return cleanroom