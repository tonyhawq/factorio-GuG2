local du = require("dutil")

data:extend({
    {
        type = "technology",
        name = "incinerating",
        icons = {
            {
                icon = "__base__/graphics/technology/flammables.png",
                icon_size = 256,
            }
        },
        prerequisites = {"smelting-1"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"environmental-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe="incinerator",
            },
        },
        order = "b-b"
    },
})

local function incinerate(input, output, icon)
    icon = icon or input
    local in_type = data.raw.fluid[input] and "fluid" or "item"
    local in_amount = in_type == "fluid" and 20 or 1
    local result = nil
    if output then
        local out_type = data.raw.fluid[output] and "fluid" or "item"
        result = {type=out_type, name=output, amount=out_type == "fluid" and 20 or 1}
    end
    data:extend({
        {
            type = "recipe", 
            always_show_made_in = true,
            name = "incinerate-"..input,
            localised_name = {"recipe-name.incinerate", {in_type.."-name."..input}},
            subgroup = "incinerating-"..in_type,
            icons = du.icons("incinerate"):add_corner(icon),
            enabled = false,
            category = "incinerating",
            energy_required = 1,
            ingredients = {
                {type=in_type, name=input, amount=in_amount},
            },
            results ={
                result
            }
        }
    })
    du.recipe("incinerate-"..input):add_unlock("incinerating")
    return du.recipe("incinerate-"..input)
end
data:extend({
    {
        type = "recipe-category",
        name = "incinerating",
    }
})

incinerate("coke")
incinerate("asphalt")
incinerate("coal", nil, {mod="base",name="coal"})
incinerate("raw-coal")
incinerate("tar")
incinerate("coal-gas")
incinerate("hydrogen"):set_results{{type="fluid",name="water",amount=1}}
incinerate("methane")
incinerate("carbon-monoxide"):set("energy_required", 0.25)
incinerate("carbon-dioxide"):set("energy_required", 0.25)
incinerate("flue-gas"):set("energy_required", 0.25)

incinerate("tall-oil")
incinerate("pinecone")
incinerate("acorn")
incinerate("log")
incinerate("sapling"):set("energy_required", 0.25)
incinerate("pine-sapling"):set("energy_required", 0.25)
incinerate("oak-sapling"):set("energy_required", 0.25)