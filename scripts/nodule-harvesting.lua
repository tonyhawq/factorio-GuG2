local nodules = {}

nodules.harvesters = {
    ["nodule-harvester"] = {width=9, height=9, tile="concrete"}
}

function nodules.setup()
    storage.nodule_harvesters = storage.nodule_harvesters or {}
    ---@type table<integer, table<integer, PTile>>
    storage.platform_tiles = storage.platform_tiles or {}
end

---@class (exact) PTile
---@field owners table<string, boolean?>

---@param x integer
---@param y integer
---@return PTile
local function get_ptile(x,y)
    if not storage.platform_tiles[x] then
        storage.platform_tiles[x] = {}
    end
    if not storage.platform_tiles[x][y] then
        storage.platform_tiles[x][y] = {owners={}}
    end
    return storage.platform_tiles[x][y]
end

---@param x integer
---@param y integer
---@param val PTile?
local function set_ptile(x,y, val)
    get_ptile(x,y)
    storage.platform_tiles[x][y] = val
end

local function table_isempty(table)
    if next(table) == nil then
        return true
    end
    return false
end

function nodules.on_created(event)
    local entity = event.source_entity
    local harvester = nodules.harvesters[entity.name]
    if not harvester then
        return
    end
    local destruct_id = script.register_on_object_destroyed(entity)
    local surface = entity.surface
    local tiles = {}
    local base_x = entity.position.x
    local base_y = entity.position.y
    for i = 0, harvester.width - 1 do
        local x = i - harvester.width / 2
        for j = 0, harvester.height - 1 do
            local y = j - harvester.height / 2
            table.insert(tiles, {position={x=base_x+x, y=base_y+y}, name=harvester.tile})
            get_ptile(base_x+x,base_y+y).owners[destruct_id] = true
        end
    end
    surface.set_tiles(tiles)
    storage.nodule_harvesters[destruct_id] = {tiles=tiles, surface=entity.surface}
    -- TODO: only remove tiles which do not coincide with another harvester
end

function nodules.on_destroyed(event)
    local id = event.registration_number
    local harvester = storage.nodule_harvesters[id]
    if not harvester then
        return
    end
    local surface = harvester.surface
    local new_tiles = {}
    for _, tile in pairs(harvester.tiles) do
        local ptile = get_ptile(tile.position.x, tile.position.y)
        ptile.owners[id] = nil
        if table_isempty(ptile.owners) then
            set_ptile(tile.position.x, tile.position.y, nil)
            local hidden = surface.get_hidden_tile({x=tile.position.x, y=tile.position.y})
            if hidden then
                table.insert(new_tiles, {position={x=tile.position.x,y=tile.position.y}, name=hidden})        
            end
        end
    end
    surface.set_tiles(new_tiles)
    harvester = nil
end

return nodules