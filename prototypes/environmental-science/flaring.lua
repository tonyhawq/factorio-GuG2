local du = require("dutil")

local function flare(input, mult)
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
                {type=input_type, name=input, amount=20 * (mult or 1)},
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
flare("flue-gas", 4)
flare("hydrogen")
flare("oxygen", 4)
flare("nitrogen", 4)
flare("trace-gases")
flare("syngas")
flare("cyclohexanone")
flare("hot-low-temperature-refrigerant")
flare("hot-refrigerant")