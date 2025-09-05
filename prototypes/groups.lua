local du = require("dutil")
local metal_current = string.byte("A") - 1

local function metals(metal_name)
    local str = "a"
    metal_current = metal_current + 1
    if metal_current == (string.byte("Z") + 1) then
        metal_current = string.byte("a")
    end
    str = string.char(metal_current)
    data:extend{
        {
            type = "item-subgroup",
            group = "intermediate-products",
            name = metal_name.."-ore-processing",
            order = "a[metals]-"..str.."["..metal_name.."]-a",    
        },
        {
            type = "item-subgroup",
            group = "intermediate-products",
            name = metal_name.."-smelting",
            order = "a[metals]-"..str.."["..metal_name.."]-b",    
        },
        {
            type = "item-subgroup",
            group = "intermediate-products",
            name = metal_name.."-ingot-processing",
            order = "a[metals]-"..str.."["..metal_name.."]-c",    
        },
    }
    log("created ")
    log(metal_name.."-ore-processing")
    log(metal_name.."-smelting")
    log(metal_name.."-ingot-processing")
end

data:extend{
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "incinerating",
        order = "z[incinerate]-a",    
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "incinerating-item",
        order = "z[incinerate]-b",    
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "incinerating-fluid",
        order = "z[incinerate]-c",    
    },
}

data:extend({
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "fasteners",
        order = "a[metals]-z[product]-a[simple]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "wood-processing",
        order = "c[organics]-a[wood]-c[processing]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "saltberry-processing",
        order = "c[organics]-b[saltberries]-a[processing]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "circuit-components",
        order = "b[circuits]-a[components]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "circuits",
        order = "b[circuits]-z[finished-product]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "electronic-products",
        order = "b[circuits]-z[finished-product]-b[non-circuit]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "clay-products",
        order = "c[organics]-z[soil]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "glassworking",
        order = "a[metals]-z[a]-glass",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "silicon-processing",
        order = "d[stones]-b[silicon]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "masonry",
        order = "d[stones]-c[masonry]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "destructive-distillation",
        order = "a[metals]-z[nonmetals]-a[tar-processing]-a[destructive-distillation]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "tar-processing",
        order = "a[metals]-z[nonmetals]-a[tar-processing]-b[tar-processing]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "polymers",
        order = "a[metals]-z[nonmetals]-b[chemistry]-z[products]-a[polymers]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "crushing",
        order = "d[stones]-a[crushing]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "water-processing",
        order = "e[fluids]-a[water]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "basic-chemistry",
        order = "e[fluids]-b[chemistry]-a[basic]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "nitrogen-chemistry",
        order = "e[fluids]-b[chemistry]-b[nitrogen]",
    },
    {
        type = "item-subgroup",
        group = "intermediate-products",
        name = "extracting",
        order = "a[first]-a[extracting]",
    },
})

metals("tin")
metals("copper")
metals("bronze")
metals("lead")
metals("iron")
metals("aluminum")
metals("manganese")
metals("steel")
metals("zinc")
metals("antimony")
metals("nickel")
metals("molybdenum")
metals("silver")
