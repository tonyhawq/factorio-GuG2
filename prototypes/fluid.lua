local du = require("dutil")

data:extend({
    {
        type = "fluid",
        name = "heavy-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("heavy-distillates"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "medium-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("medium-distillates"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "light-distillates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("light-distillates"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "condensates",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("condensates"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "light-naphtha",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("light-naphtha"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "heavy-naphtha",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("heavy-naphtha"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "heavy-gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("heavy-gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "light-gas-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("light-gas-oil"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
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
})
data:extend({
    {
        type = "fluid",
        name = "diesel",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("diesel"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "kerosene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("kerosene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "syngas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "0.35MJ",
        icons = du.icons("syngas"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "raw-kerosene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("raw-kerosene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "hydrogen",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("hydrogen"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "hydrogen-sulfide",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("hydrogen-sulfide"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "hydrogen-chloride",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("hydrogen-chloride"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "residuals",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("residuals"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "gasoline",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("gasoline"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "butane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("butane"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "btx",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("btx"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "fuel-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("fuel-oil"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "benzene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("benzene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "toluene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("toluene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "xylenes",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("toluene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "styrene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("styrene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "ethylene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("ethylene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "propylene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("propylene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "butadiene",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("butadiene"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "raw-lubricating-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("raw-lubricating-oil"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "methane",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("methane"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "hvgo",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("hvgo"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "lvgo",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("lvgo"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "natural-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "5MJ",
        icons = du.icons("natural-gas"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
    {
        type = "fluid",
        name = "seawater",
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("seawater"),
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2kJ",
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "saline-water",
        default_temperature = 15,
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("saline-water"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "brine",
        default_temperature = 15,
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("brine"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "mineralized-water",
        default_temperature = 15,
        base_color = {r=0, g=0.73, b=0.76},
        flow_color = {r=1, g=1, b=1},
        icons = du.icons("mineralized-water"),
        order = "a[fluid]-j[sludge]"
    },
})
data:extend({
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
        fuel_category = "chemical",
        fuel_value = "0.3MJ",
        icons = du.icons("tar"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "coal-gas",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
        fuel_value = "0.25MJ",
        icons = du.icons("coal-gas"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "light-oil",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        fuel_category = "chemical",
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
        name = "carbolic-acid",
        default_temperature = 15,
        base_color = {r=1, g=0.9, b=0.5},
        flow_color = {r=0.6, g=0.4, b=0.2},
        icons = du.icons("carbolic-acid"),
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
})