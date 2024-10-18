local du = require("dutil")

local creative_assembler = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
creative_assembler.name = "yafc-fix-creative-assembler"
creative_assembler.minable.result = "yafc-fix-creative-assembler"
creative_assembler.energy_source.type = "void"
creative_assembler.crafting_categories = {"creative-assembling", "crafting", "crafting-with-fluid"}
data:extend({creative_assembler, {type="recipe-category", name="creative-assembling"}})
local creative_assembler_item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
creative_assembler_item.name = "yafc-fix-creative-assembler"
creative_assembler_item.place_result = "yafc-fix-creative-assembler"
data:extend({creative_assembler_item})
data:extend({
    {
        type = "fluid",
        name = "creative-fuel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "1J",
        icons = du.icons("creative-fuel"),
        order = "a[fluid]-j[sludge]"
    },
})