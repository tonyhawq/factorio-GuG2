local forestry = {}

forestry.decoratives = {
    nauvis = {
        "green-carpet-grass",
        "green-small-grass",
        "green-hairy-grass"
    }
}

forestry.boxes_by_tree = {
    ["forestry-pine"] = {name="g2-tree-9x9", area=81, side_length=9, decoratives=forestry.decoratives.nauvis}
}

function forestry.setup()
    storage.forestry_trees = storage.forestry_trees or {}
end

local function sqr_dist(x1, y1, x2, y2)
    return (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)
end

function forestry.spawn_decoratives(cfg)
    local around = {x = cfg.position.x or cfg.position[1], y = cfg.position.y or cfg.position[2]}
    local radius = cfg.radius
    local probability = 1 / (cfg.probability or 0.1)
    local decoratives = cfg.set or forestry.decoratives.nauvis
    local surface = cfg.surface
    for dx = -radius, radius, 1 do
        for dy = -radius, radius, 1 do
            local pos = {x=around.x + dx, y=around.y + dy}
            local dist = sqr_dist(around.x, around.y, pos.x, pos.y)
            if dist > (radius * radius) then
                goto continue
            end
            local weight = dist / (radius * radius) * 0.25
            if math.random(0, math.ceil(probability * weight)) == 0 then
                surface.create_decoratives{decoratives={{name=decoratives[math.random(1, #decoratives)], position=pos, amount=1}}, check_collision = true}
            end
            ::continue::
        end
    end
end

function forestry.on_created(event)
    local entity = event.source_entity
    local box = forestry.boxes_by_tree[entity.name]
    if not box then
        return
    end
    local created_box = entity.surface.create_entity{name=box.name, position=entity.position, force=entity.force}
    local created_render = rendering.draw_rectangle{
        color={r=14/255 * 0.15, g=137/255 * 0.15, b=47/255 * 0.15, a=0.15},
        filled=true,
        left_top=created_box.bounding_box.left_top,
        right_bottom=created_box.bounding_box.right_bottom,
        surface=entity.surface,
        only_in_alt_mode = true,
        draw_on_ground = true,
    }
    forestry.spawn_decoratives{position=entity.position, radius=box.side_length / 2, set=box.decoratives, surface=entity.surface}
    local destruct_id = script.register_on_object_destroyed(entity)
    storage.forestry_trees[destruct_id] = {box=created_box, render=created_render}
end

function forestry.on_destroyed(event)
    local tree = storage.forestry_trees[event.registration_number]
    if tree then
        tree.box.destroy()
        tree.render.destroy()
        tree = nil
    end
end

return forestry