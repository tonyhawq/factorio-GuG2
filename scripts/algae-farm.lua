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
    game.print("Creating")
    local surface = entity.surface
    local source_surface = HiddenSurf.get()
    local output_pole = surface.create_entity{name="internal-energy-spreading-pole", position=entity.position, force=entity.force}
    local source_pole = source_surface.create_entity{name="internal-energy-spreading-pole", position=entity.position, force=entity.force}
    local connector_a = source_pole.get_wire_connector(defines.wire_connector_id.pole_copper, true)
    local connector_b = output_pole.get_wire_connector(defines.wire_connector_id.pole_copper, true)
    connector_a.connect_to(connector_b, false, defines.wire_origin.script)
    local created_panel = source_surface.create_entity{name="algae-plant-energy-source", position=entity.position, force=entity.force}
    local destruct_id = script.register_on_object_destroyed(entity)
    storage.algae_farms[destruct_id] = {source_pole=source_pole, output_pole=output_pole, panel=created_panel}
end

function farm.on_destroyed(event)
    local made_farm = storage.algae_farms[event.registration_number]
    if made_farm then
        made_farm.source_pole.destroy()
        made_farm.output_pole.destroy()
        made_farm.panel.destroy()
        made_farm = nil
    end
end

return farm