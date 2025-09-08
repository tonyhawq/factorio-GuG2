local du = require("dutil")

data:extend({
    {
        type = "fluid",
        name = "heavy-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("heavy-distillates"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "medium-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1MJ",
        icons = du.icons("medium-distillates"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "light-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1MJ",
        icons = du.icons("light-distillates"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "condensates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("condensates"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "light-naphtha",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("light-naphtha"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "heavy-naphtha",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("heavy-naphtha"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1.5MJ",
        icons = du.icons("gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "heavy-gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1MJ",
        icons = du.icons("heavy-gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "light-gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1.1MJ",
        icons = du.icons("light-gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "flue-gas",
        default_temperature = 15,
        max_temperature = 1000,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("flue-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "diesel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "2MJ",
        icons = du.icons("diesel"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "kerosene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "4MJ",
        icons = du.icons("kerosene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "syngas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.8MJ",
        icons = du.icons("syngas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "raw-kerosene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("raw-kerosene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrogen",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "100kJ",
        icons = du.icons("hydrogen"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrogen-sulfide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrogen-sulfide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrogen-chloride",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrogen-chloride"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "residuals",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("residuals"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "gasoline",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "3MJ",
        icons = du.icons("gasoline"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "butane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("butane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "btx",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.25MJ",
        icons = du.icons("btx"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "fuel-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "2MJ",
        icons = du.icons("fuel-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "benzene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("benzene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "toluene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("toluene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "xylenes",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("toluene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "styrene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.25MJ",
        icons = du.icons("styrene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ethylene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.25MJ",
        icons = du.icons("ethylene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "propylene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.25MJ",
        icons = du.icons("propylene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "butadiene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.25MJ",
        icons = du.icons("butadiene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "raw-lubricating-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("raw-lubricating-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "methane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("methane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hvgo",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hvgo"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "lvgo",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1.8MJ",
        icons = du.icons("lvgo"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "natural-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1MJ",
        icons = du.icons("natural-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "refined-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "2MJ",
        icons = du.icons("refined-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "seawater",
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("seawater"),
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "2kJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "saline-water",
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("saline-water"),
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "2kJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "brine",
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("brine"),
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "2kJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "mineralized-water",
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("mineralized-water"),
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "2kJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ammonia",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("ammonia"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrazine",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrazine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "oxygen",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("oxygen"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "anthracene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("anthracene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "acetylene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("acetylene"),
        fuel_value = "1MJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "glycerol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("glycerol"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-plastic",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("molten-plastic"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hals",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hals"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "acrylonitrile",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("acrylonitrile"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ethanol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("ethanol"),
        fuel_value = "2MJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrochloric-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrochloric-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "acetone",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("acetone"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "glycerol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("glycerol"),
        order = "a[fluid]-j[sludge]"
    },

    {
        type = "fluid",
        name = "200c",
        default_temperature = 200,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("200c"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "300c",
        default_temperature = 300,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("300c"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "400c",
        default_temperature = 400,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("400c"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "500c",
        default_temperature = 500,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("500c"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "500c",
        default_temperature = 500,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("500c"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "tar",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.6MJ",
        icons = du.icons("tar"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "coal-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "0.5MJ",
        icons = du.icons("coal-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "light-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_value = "1.2MJ",
        icons = du.icons("light-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "wood-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("wood-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "methanol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("methanol"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "creosote-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("creosote-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "piranha-solution",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("piranha-solution"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "naphthalene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("naphthalene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "nitric-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nitric-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ammonium-fluoride",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("ammonium-fluoride"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrofluoric-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrofluoric-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "wastewater",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("wastewater"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "sulfuric-wastewater",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("wastewater"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "sludge",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("sludge"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "oxidised-sludge",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("oxidised-sludge"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "fluoric-wastewater",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("fluoric-wastewater"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "organic-wastewater",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("organic-wastewater"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "nutriment-sludge",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nutriment-sludge"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "phosphine",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("phosphine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "green-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("green-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "middle-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("middle-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "tar-pitch",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("tar-pitch"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "refrigerant",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/refrigerant"),
        order = "a[refrigerant]-a[normal]-a[normal]"
    },
    {
        type = "fluid",
        name = "cold-refrigerant",
        default_temperature = -70,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/cold-refrigerant"),
        order = "a[refrigerant]-a[normal]-c[cold]"
    },
    {
        type = "fluid",
        name = "hot-refrigerant",
        default_temperature = 90,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/hot-refrigerant"),
        order = "a[refrigerant]-a[normal]-b[hot]"
    },
    {
        type = "fluid",
        name = "low-temperature-refrigerant",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/low-temperature-refrigerant"),
        order = "a[refrigerant]-b[low-temp]-a[normal]"
    },
    {
        type = "fluid",
        name = "cold-low-temperature-refrigerant",
        default_temperature = -180,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/cold-low-temperature-refrigerant"),
        order = "a[refrigerant]-b[low-temp]-c[cold]"
    },
    {
        type = "fluid",
        name = "hot-low-temperature-refrigerant",
        default_temperature = 100,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("se/hot-low-temperature-refrigerant"),
        order = "a[refrigerant]-b[low-temp]-b[hot]"
    },
    {
        type = "fluid",
        name = "waste-heat",
        default_temperature = 0,
        max_temperature = 150,
        heat_capacity = "1kJ",
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("waste-heat"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "trace-gases",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("trace-gases"),
        order = "a[fluid]-j[sludge]",
        formula = "Ar + Co2 + Ne^t + He^t",
    },
    {
        type = "fluid",
        name = "liquid-oxygen",
        default_temperature = -183,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("liquid-oxygen"),
        order = "a[fluid]-j[sludge]",
        formula = "O2 (l)",
    },
    {
        type = "fluid",
        name = "liquid-nitrogen",
        default_temperature = -196,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("liquid-nitrogen"),
        order = "a[fluid]-j[sludge]",
        formula = "N2 (l)",
    },
    {
        type = "fluid",
        name = "carbolic-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("carbolic-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "argon",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("argon"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-glass",
        default_temperature = 1400,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("molten-glass"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "carbon-dioxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("carbon-dioxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "carbon-monoxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("carbon-monoxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "formaldehyde",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("formaldehyde"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "slaked-lime",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("slaked-lime"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "green-liquor",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("green-liquor"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "black-liquor",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("black-liquor"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "tall-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("tall-oil"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "caustic-solution",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("caustic-solution"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "sulfur-dioxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("sulfur-dioxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "zinc-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("zinc-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "silicon-tetrachloride",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("silicon-tetrachloride"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "chlorosilane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("chlorosilane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "dichlorosilane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("dichlorosilane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "trichlorosilane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("trichlorosilane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "silane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("silane"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "acid-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("acid-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "methylamine",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("methylamine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "trimethylamine",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("trimethylamine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "mdea",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("mdea"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "saturated-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("saturated-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "chlorine",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("chlorine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "rotational-force",
        default_temperature = 0,
        gas_temperature = 0,
        max_temperature = 5000,
        heat_capacity = "10J",
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("rotational-force"),
        order = "a[fluid]-j[sludge]",
        auto_barrel = false,
    },
    {
        type = "fluid",
        name = "hot-geothermal-water",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hot-geothermal-water"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "geothermal-water",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("geothermal-water"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "cumene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("cumene"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "aniline",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("aniline"),
        fuel_value = "1MJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "cyclohexanone",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("cyclohexanone"),
        fuel_value = "1MJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "aniline",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("aniline"),
        fuel_value = "1MJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ammonium-chloride",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("ammonium-chloride"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "pet-solution",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("pet-solution"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "ethylene-glycol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("ethylene-glycol"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "acetic-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("acetic-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "organic-solvent",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("organic-solvent"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "alcohol-solvent",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("alcohol-solvent"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "isopropyl-alcohol",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("isopropyl-alcohol"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "epichlorohydrin",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("epichlorohydrin"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "bpa",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("bpa"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "epoxy",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("epoxy"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "nitrogen",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nitrogen"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "nitric-oxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nitric-oxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "nitrogen-dioxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nitrogen-dioxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "dilute-nitric-acid",
        default_temperature = 35,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("dilute-nitric-acid"),
        order = "a[fluid]-j[sludge]",
        heat_capacity = "2kJ",
    },
    {
        type = "fluid",
        name = "nitric-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("nitric-acid"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "hydrogen-peroxide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("hydrogen-peroxide"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "grease",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("grease"),
        order = "a[fluid]-j[sludge]"
    },
    
    {
        type = "fluid",
        name = "molten-iron",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-iron"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-copper",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-copper"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-lead",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-lead"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-tin",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-tin"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-solder",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-solder"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-aluminum",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-aluminum"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-molybdenum-special-alloy",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-molybdenum-special-alloy"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-bronze",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-bronze"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-stainless-steel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-stainless-steel"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-glowing-mangaloy",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-glowing-mangaloy"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-nickel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-nickel"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-chrome",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-chrome"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-silver",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-silver"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-molybdenum",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-molybdenum"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-manganese",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-manganese"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-stainless-steel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-stainless-steel"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "molten-antimony",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("angels/molten-antimony"),
        order = "a[fluid]-j[sludge]"
    },
})