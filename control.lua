Multistage = require("__factorio-questing__.remote.multistage.control")
Bucketing = require("__GuG2__.scripts.bucketing")
Cleanroom = require("__GuG2__.scripts.cleanroom")
CleanroomGUI = require("__GuG2__.scripts.cleanroom-gui")
Masks = require("__GuG2__.scripts.collision-util")

-- Global library Multistage has different values depending on which remote/multistage/ file is reqd.

require("prototypes.technology.checkpoints")

script.on_init(function ()
    Multistage.load() -- internally calls remote.call() with reqd. arguments.
    Bucketing.setup()
    Cleanroom.setup()
    Masks.setup()
end)

script.on_configuration_changed(function ()
    Masks.update_masks()
end)

script.on_event(defines.events.on_tick, function(event_data)

end)

script.on_nth_tick(15, function ()
    Cleanroom.on_quarter_second()
end)

script.on_nth_tick(30, function(event)
    for _, player in pairs(game.connected_players) do
        CleanroomGUI.update_gui(player)
    end
end)

script.on_event(defines.events.on_gui_click, function(event)
    if not event.element.name then return end
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    CleanroomGUI.player_clicked_gui(event, player)
end)

script.on_event(defines.events.on_built_entity, function(event)
    Cleanroom.on_created(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    Cleanroom.on_created(event)
end)

script.on_event(defines.events.on_entity_died, function (event)
    Cleanroom.on_destroyed(event --[[@as EventData.on_entity_died]])
end)

script.on_event(defines.events.on_player_mined_entity, function(event)
    Cleanroom.on_destroyed(event)
end)

script.on_event(defines.events.on_robot_mined_entity, function (event)
    Cleanroom.on_destroyed(event)
end)

script.on_event(defines.events.on_gui_opened, function (event)
    CleanroomGUI.on_gui_opened(event)
end)

script.on_event(defines.events.on_gui_closed, function (event)
    CleanroomGUI.on_gui_closed(event)
end)

commands.add_command("room", nil, function(command)
    local player = game.get_player(command.player_index)
    if not player then
        return
    end
    local found = player.surface.find_entities_filtered{area={left_top={player.position.x - 5, player.position.y - 5}, right_bottom={player.position.x+5,player.position.y+5}}, name="cleanroom-controller"}
    for _, entity in pairs(found) do
        game.print(Cleanroom.create(entity) or "success")
    end
end)
