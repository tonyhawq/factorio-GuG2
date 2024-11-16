HiddenSurf = require("__GuG2__.scripts.hidden-surface")
Cleanroom = require("__GuG2__.scripts.cleanroom")
CleanroomGUI = require("__GuG2__.scripts.cleanroom-gui")
Forestry = require("__GuG2__.scripts.forestry")
AlgaeFarm = require("__GuG2__.scripts.algae-farm")

script.on_init(function ()
    Cleanroom.setup()
    Forestry.setup()
    AlgaeFarm.setup()
end)

script.on_configuration_changed(function ()
    Cleanroom.setup()
    Forestry.setup()
    AlgaeFarm.setup()
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

script.on_event(defines.events.on_script_trigger_effect, function (event)
    if event.effect_id == "g2cc" then
        Forestry.on_created(event)
        AlgaeFarm.on_created(event)
    end
end)

script.on_event(defines.events.on_object_destroyed, function (event)
    Forestry.on_destroyed(event)
    AlgaeFarm.on_destroyed(event)
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
