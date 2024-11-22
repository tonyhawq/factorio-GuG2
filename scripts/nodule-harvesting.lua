local nodules = {}

nodules.harvesters = {
    ["assembling-machine-2"] = {width=9, height=9, tile="concrete"}
}

function nodules.setup()

end

function nodules.on_created(event)
    local entity = event.source_entity
    local harvester = nodules.harvesters[entity.name]
    if not harvester then
        return
    end
    local surface = entity.surface
    local tiles = {}
    local base_x = entity.position.x
    local base_y = entity.position.y
    for i = 0, harvester.width - 1 do
        local x = i - harvester.width / 2
        for j = 0, harvester.height - 1 do
            local y = j - harvester.height / 2
            table.insert(tiles, {position={x=base_x+x, y=base_y+y}, name=harvester.tile})
        end
    end
    surface.set_tiles{tiles=tiles}
end

function nodules.on_destroyed(event)

end

return nodules