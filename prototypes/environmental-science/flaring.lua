local du = require("dutil")

local function flare(input)
    local input_proto = du.item(input, true) or du.fluid(input, true)
    input_proto.flarable = true
    local input_type = du.item(input, true) and "item" or du.fluid(input, true) and "fluid"
    data:extend({
        {
            type = "recipe", 
            always_show_made_in = true,
            enabled = true,
            hide_from_player_crafting = true,
            category = "flaring", ---@diagnostic disable-line
            name = input.."-flaring",
            localised_name = {"label.flaring", input},
            icons = du.get_icons(input_proto),
            subgroup = "raw-material",
            energy_required = 1,
            ingredients = {
                {type=input_type, name=input, amount=20},
            },
            results = {
            }
        }
    })
end

flare("carbon-dioxide")
flare("carbon-monoxide")
flare("sulfur-dioxide")
flare("steam")
flare("lvgo")
flare("hvgo")
flare("benzene")
flare("ammonia")
flare("gasoline")
flare("flue-gas")
flare("hydrogen")
flare("oxygen")
flare("syngas")