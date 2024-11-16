local farm = {}

farm.entities = {["simple-algae-plant"] = true}

function farm.setup()
    storage.algae_farms = storage.algae_farms or {}
end

function farm.on_created(event)
    local entity = event.source_entity
    if not farm.entities[entity.name] then
        return
    end
    local surface = entity.surface
    local created_pole = surface.create_entity{name="internal-energy-spreading-pole", position=entity.position, force=entity.force}
    local created_panel = surface.create_entity{name="algae-plant-energy-source", position=entity.position, force=entity.force}
    local destruct_id = script.register_on_object_destroyed(entity)
    storage.algae_farms[destruct_id] = {pole=created_pole, panel=created_panel}
end

function farm.on_destroyed(event)
    local made_farm = storage.algae_farms[event.registration_number]
    if made_farm then
        made_farm.pole.destroy()
        made_farm.panel.destroy()
        made_farm = nil
    end
end

return farm