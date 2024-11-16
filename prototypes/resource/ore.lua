local du = require("dutil")
local sounds = require("__base__.prototypes.entity.sounds")
local resource_autoplace = require("resource-autoplace")

local function add_resource_to_nauvis(name)
    data.raw.planet.nauvis.map_gen_settings.autoplace_controls[name] = {}
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[name] = {}
end

local function remove_resource_from_nauvis(name)
    data.raw.planet.nauvis.map_gen_settings.autoplace_controls[name] = nil
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[name] = nil
end

data:extend({
    {
        type = "autoplace-control",
        name = "evaporite",
        localised_name = {"", "[entity=evaporite] ", {"entity-name.evaporite"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
    {
        type = "resource",
        name = "evaporite",
        icons = du.icons("evaporite"),
        flags = {"placeable-neutral"},
        order = "a-b-f",
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        walking_sound = sounds.ore,
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 1,
            result = "evaporite",
            fluid_amount = 5,
            required_fluid = "water"
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        -- water: 
        -- autoplace = {probability_expression = "water_base(0, 100)"},
        -- args: max_elevation, influence
        autoplace = {
            local_expressions = {
                shoreline =
                "if(elevation > (0.5 - multioctave_noise{x=x, y=y, persistence=0.75,seed0=map_seed, seed1=0, octaves=2, input_scale = 0.25}),"..
                "water_base(2 - multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 1} * moisture ^ 2 * 2 - moisture ^ 2 * 10, 50),"..
                "-inf)",
            },
            probability_expression = "shoreline",
            richness_expression = "shoreline * 25",
        },
        stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
        stages =
        {
            sheet =
            {
                filename = "__GuG2__/graphics/entity/ore/evaporite/evaporite.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        mining_visualisation_tint = {r = 0.814, g = 1.000, b = 0.499, a = 1.000}, -- #cfff7fff
        map_color = {0.7, 0.7, 0.8}
    },
})
local function resource(cfg)
    data:extend({
        {
            type = "resource",
            name = cfg.name,
            icons = du.icons(cfg.name),
            flags = {"placeable-neutral"},
            order="a-b-a",
            map_color = cfg.map_color or {r=1, g=1, b=1, a=1},
            minable =
            {
                hardness = cfg.hardness or 1,
                mining_particle = cfg.particle or "iron-ore-particle",
                mining_time = cfg.mining_time or 1,
                result = cfg.result or cfg.name
            },
            collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
            selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
            autoplace = resource_autoplace.resource_autoplace_settings{
                name = cfg.name,
                order = "b",
                base_density = 20,
                has_starting_area_placement = true,
                regular_rq_factor_multiplier = 1,
                starting_rq_factor_multiplier = 1.3,
                candidate_spot_count = 22
            },
            stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
            stages =
            {
                sheet =
                {
                    filename = cfg.filename or ("__GuG2__/graphics/entity/ore/"..cfg.name.."/"..cfg.name..".png"),
                    priority = "extra-high",
                    size = cfg.size or 128,
                    frame_count = cfg.frame_count or 8,
                    variation_count = cfg.variation_count or 8,
                    scale = cfg.scale or 0.5
                },
            },
        },
    })
    if cfg.control then
        data:extend({
            cfg.control
        })
    end
end

resource{
    name = "lead-ore",
    map_color = {r=115/255, g=31/255, b=31/255},
    control = 
    {
        type = "autoplace-control",
        name = "lead-ore",
        localised_name = {"", "[entity=lead-ore] ", {"entity-name.lead-ore"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
}
resource{
    name = "tin-ore",
    map_color = {r=159/255, g=236/255, b=138/255},
    control = 
    {
        type = "autoplace-control",
        name = "tin-ore",
        localised_name = {"", "[entity=tin-ore] ", {"entity-name.tin-ore"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
}
resource{
    name = "aluminum-ore",
    map_color = {r=237/255, g=216/255, b=138/255},
    control = 
    {
        type = "autoplace-control",
        name = "lead-ore",
        localised_name = {"", "[entity=aluminum-ore] ", {"entity-name.aluminum-ore"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
}
resource{
    name = "sandstone",
    map_color = {r=237/255, g=193/255, b=71/255},
    control = 
    {
        type = "autoplace-control",
        name = "sandstone",
        localised_name = {"", "[entity=sandstone] ", {"entity-name.sandstone"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
}
resource{
    name = "limestone",
    map_color = {r=229/255, g=237/255, b=71/255},
    control = 
    {
        type = "autoplace-control",
        name = "limestone",
        localised_name = {"", "[entity=limestone] ", {"entity-name.limestone"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
}

data.raw.resource.coal.minable.result = "raw-coal"

add_resource_to_nauvis("evaporite")
add_resource_to_nauvis("lead-ore")
add_resource_to_nauvis("tin-ore")
add_resource_to_nauvis("sandstone")
add_resource_to_nauvis("limestone")
remove_resource_from_nauvis("stone")
data.raw["autoplace-control"].stone.hidden = true
