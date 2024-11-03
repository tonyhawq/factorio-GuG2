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

metals("tin")
metals("copper")
metals("bronze")
metals("iron")
metals("aluminum")
