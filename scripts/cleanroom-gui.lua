local cleanroom_gui = {}

cleanroom_gui.root_name = "g2-cleanroom-controller"
cleanroom_gui.controller_name = "cleanroom-controller"

function cleanroom_gui.close(player)
    local gui = player.gui.relative[cleanroom_gui.root_name]
    if gui then gui.destroy() end
end

local function set_button_style(button)
    local button_font_color = {r=26/255, g=26/255, b=26/255}

    button.style.horizontally_stretchable = true
    button.style.font = "default-bold"
    button.style.font_color = button_font_color
    button.style.left_padding = 12
    button.style.left_margin = 0
    button.style.horizontal_align = "left"
    button.style.minimal_width = 100
end

---@param player LuaPlayer
---@param controller LuaEntity
function cleanroom_gui.open(player, controller)

    cleanroom_gui.close(player)

    local gui = player.gui.relative
  
    local anchor = {gui=defines.relative_gui_type.electric_energy_interface_gui, position=defines.relative_gui_position.right}

    local container = gui.add{
      type="frame",
      name=cleanroom_gui.root_name,
      anchor = anchor,
      direction="vertical",
      -- assuming that the GUI closes as soon as the entity dies
      -- this should be fine (?)
      tags={unit_number=controller.unit_number, located_at=controller.position, surface_index=controller.surface_index} -- fuck it put the whole thing in there
    }

    local container_size = {365, 176}

    container.style.size = container_size

    local gui_frame = container.add{
        name = "frame",
        type="frame",
        direction="vertical",
        style="inside_shallow_frame"
    }

    gui_frame.style.size = { container_size[1] - 20, container_size[2] - 20}

    local button_type_flow = gui_frame.add{
        name = "button_type_flow",
        type = "flow",
        direction = "horizontal"
    }
    local green_button_flow = button_type_flow.add{
        name = "green_button_flow",
        type = "flow",
        direction = "vertical"
    }
    local red_button_flow = button_type_flow.add{
        name = "red_button_flow",
        type = "flow",
        direction = "vertical"
    }

    local register = green_button_flow.add{ type="button", name="g2-cleanroom-register", caption={"label.register"}, style="green_button"}
    local activate = green_button_flow.add{ type="button", name="g2-cleanroom-activate", caption={"label.activate"}, style="confirm_button"}
    local deactivate = red_button_flow.add{ type="button", name="g2-cleanroom-deactivate", caption={"label.deactivate"}, style="red_button"}
    local destroy = red_button_flow.add{ type="button", name="g2-cleanroom-destroy", caption={"label.destroy"}, style="red_confirm_button"}

    set_button_style(register)
    set_button_style(activate)
    set_button_style(deactivate)
    set_button_style(destroy)

    local status_flow = gui_frame.add{name="status_flow", type="flow", direction="horizontal"}

    status_flow.add{type="progressbar", name="status", size=150, value=0, caption={"label.status-disassembled"}, style="g2_generic_progressbar"}
    local calc = status_flow.add{type="button", name="g2-cleanroom-calculate", caption={"label.calculate"}, style="green_button"}
    set_button_style(calc)

    local factor_flow = gui_frame.add{name="factor_flow", type="flow", direction="horizontal"}
    factor_flow.add{type="progressbar", name="vents", size=150, value=0, caption={"label.vents"}, tooltip={"label.vents_tooltip"}, style="g2_generic_progressbar"}
    factor_flow.add{type="progressbar", name="tile_ratio", size=150, value=0, caption={"label.tile_ratio"}, tooltip={"label.tile_ratio_tooltip"}, style="g2_generic_progressbar"}

    local power_flow = gui_frame.add{name="power_flow", type="flow", direction="horizontal"}
    power_flow.add{type="progressbar", name="efficiency", size=150, value=0, caption={"label.efficiency"}, tooltip={"label.efficiency_tooltip"}, style="g2_generic_progressbar"}
    power_flow.add{type="progressbar", name="power", size=150, value=0, caption="0kW", tooltip={"label.power-usage_tooltip", Cleanroom.power_usage_per_tile_str}, style="g2_generic_progressbar"}

    cleanroom_gui.update_gui(player)
end

local g2_mult_to_postfix =
{
    [1] = "W",
    [1000] = "kW",
    [1000000] = "MW",
    [1000000000] = "GW",
}

---@param watts number
---@return string
local function numberized_watts_to_str(watts)
    watts = watts * 60
    local biggest_valid = 1
    for mult, _ in pairs(g2_mult_to_postfix) do
        local factored_watts = watts / mult
        if math.log(factored_watts, 10) >= 0 then
            biggest_valid = mult
        end
    end
    return (math.floor(watts / biggest_valid * 10) / 10)..g2_mult_to_postfix[biggest_valid]
end

function cleanroom_gui.update_gui(player)
    local root = player.gui.relative[cleanroom_gui.root_name]
    if not (root and root.tags and root.tags.unit_number) then return end
    local cleanroom_data = storage.cleanrooms[root.tags.unit_number]
    local status_flow = root.frame.status_flow
    local factor_flow = root.frame.factor_flow
    local power_flow = root.frame.power_flow
    if cleanroom_data then
        factor_flow.vents.value = cleanroom_data.vent_count / cleanroom_data.total_tiles * 25
        factor_flow.tile_ratio.value = cleanroom_data.filled_tiles / cleanroom_data.total_tiles
        factor_flow.tile_ratio.caption = {"label.fraction", cleanroom_data.filled_tiles, cleanroom_data.total_tiles}
        power_flow.efficiency.value = cleanroom_data.efficiency
        power_flow.efficiency.caption = (cleanroom_data.efficiency * 100).."%"
        power_flow.power.value = 0
        power_flow.power.caption = "0kW"
        status_flow.status.value = 0.5
        status_flow.status.caption = {"label.status-inactive"}
        if cleanroom_data.enabled then
            power_flow.power.caption = numberized_watts_to_str(cleanroom_data.power_consumption)
            power_flow.power.value = cleanroom_data.power_consumption / Cleanroom.max_power_consumption
            status_flow.status.value = 1
            status_flow.status.caption = {"label.status-active"}
        end
    else
        factor_flow.vents.value = 0
        factor_flow.tile_ratio.value = 0
        factor_flow.tile_ratio.caption = {"label.tile_ratio"}
        power_flow.efficiency.caption = {"label.efficiency"}
        power_flow.efficiency.value = 0
        power_flow.power.value = 0
        power_flow.power.caption = "0kW"
        status_flow.status.value = 0
        status_flow.status.caption = {"label.status-disassembled"}
    end
end

---@param event EventData.on_gui_click
---@param player LuaPlayer
function cleanroom_gui.player_clicked_gui(event, player)
    local root = player.gui.relative[cleanroom_gui.root_name]
    if not root or not root.tags or not root.tags.unit_number then
        return
    end
    local room = storage.cleanrooms[root.tags.unit_number]
    if event.element.name == "g2-cleanroom-register" then
        if not room then
            Cleanroom.create(game.get_surface(root.tags.surface_index).find_entity("cleanroom-controller", root.tags.located_at) --[[@as LuaEntity]])
        else
            game.print("Cleanroom already exists.")
        end
    elseif event.element.name == "g2-cleanroom-activate" then
        if room then
            Cleanroom.activate(room)
            game.print("Cleanroom activated.")
        else
            game.print("Cleanroom does not exist.")
        end
    elseif event.element.name == "g2-cleanroom-deactivate" then
        if room then
            Cleanroom.deactivate(room)
            game.print("Cleanroom deactivated.")
        else
            game.print("Cleanroom does not exist.")
        end
    elseif event.element.name == "g2-cleanroom-destroy" then
        if room then
            Cleanroom.destroy(room)
            game.print("Cleanroom destroyed.")
        else
            game.print("Cleanroom does not exist.")
        end
    elseif event.element.name == "g2-cleanroom-calculate" then
        if room then
            Cleanroom.calculate_efficiency(room)
        else
            game.print("Cleanroom does not exist.")
        end
    end
    cleanroom_gui.update_gui(player)
end

function cleanroom_gui.on_gui_opened(event)
    if not event.entity then return end
    if not event.entity.valid then return end
    if event.entity.name == cleanroom_gui.controller_name then
        local player = game.players[event.player_index]
        cleanroom_gui.open(player, event.entity)
    end
end

function cleanroom_gui.on_gui_closed(event)
    cleanroom_gui.close(game.players[event.player_index])
end


return cleanroom_gui