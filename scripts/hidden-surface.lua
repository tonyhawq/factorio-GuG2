local hidden = {}

hidden.name = "g2lab"

function hidden.create()
    if game.surfaces[hidden.name] then
        return
    end
    game.create_surface(hidden.name, {
        seed=0,
        autoplace_controls={},
        autoplace_settings={["tile"] = {settings = {["grass-1"] = {frequency=1,size=1,richness=1}}}},
        width=0,
        height=0,
        starting_area=0,
        starting_points={},
        peaceful_mode = true,
        no_enemies_mode = true,
        default_enable_all_autoplace_controls = false,
        cliff_settings={}, ---@diagnostic disable-line
        territory_settings={}, ---@diagnostic disable-line
        property_expression_names = {["tile:grass-1:probability"] = "1"},
    })
end

function hidden.get()
    hidden.create()
    return game.surfaces[hidden.name]
end

return hidden