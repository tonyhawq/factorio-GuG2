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
add_resource_to_nauvis("geothermal-geyser")
remove_resource_from_nauvis("stone")
data.raw["autoplace-control"].stone.hidden = true

data:extend({
    {
        type = "autoplace-control",
        name = "geothermal-geyser",
        localised_name = {"", "[entity=geothermal-geyser] ", {"entity-name.geothermal-geyser"}},
        richness = true,
        order = "b-a",
        category = "resource"
    },
    {
        type = "resource",
        name = "geothermal-geyser",
        icon = "__base__/graphics/icons/crude-oil-resource.png",
        flags = {"placeable-neutral"},
        category = "basic-fluid",
        subgroup = "mineable-fluids",
        order="a-b-a",
        infinite = true,
        highlight = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    type = "fluid",
                    name = "hot-geothermal-water",
                    amount_min = 100,
                    amount_max = 100,
                    probability = 1
                }
            }
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
            name = "geothermal-geyser",
            order = "a", -- Other resources are "b"; oil won't get placed if something else is already there.
            base_density = 8.2,
            base_spots_per_km2 = 1.8,
            random_probability = 1/48,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 1, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1
        },
        stage_counts = {0},
        stages = {
            layers = {
                {
                    variation_count = 4,
                    filename = "__GuG2__/graphics/entity/geyser/sulfuric-acid-geyser.png",
                    width = 254,
                    height = 178,
                    shift = util.by_pixel( 9.5, 5.0),
                    line_length = 4,
                    frame_count = 4,
                    scale = 0.5,
                }
            }
        },
        draw_stateless_visualisation_under_building = false,
        stateless_visualisation =
        {
          -- expanded 2 animation layers into 2 visualisations to demo multiple visualisations
          {
            fade_out_progress_duration = 1,
            count = 1,
            render_layer = "smoke",
            animation =
            {
              filename = "__GuG2__/graphics/entity/geyser/sulfuric-acid-geyser-gas-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              animation_speed = 0.9,
              shift = util.by_pixel(-6, -120),
              scale = 1.5,
              tint = util.multiply_color({r=0.9, g=0.9, b=1}, 0.6)
            }
          },
          {
            fade_out_progress_duration = 1,
            count = 1,
            render_layer = "smoke",
            animation =
            {
               filename = "__GuG2__/graphics/entity/geyser/sulfuric-acid-geyser-gas-inner.png",
               frame_count = 47,
               line_length = 16,
               width = 40,
               height = 84,
               animation_speed = 1,
               shift = util.by_pixel(-4, -60),
               scale = 1.5,
               tint = util.multiply_color({r=0.9, g=0.9, b=1}, 0.6)
            }
          }
        },
        map_color = {1, 0.55, 0},
        map_grid = false
    },
})
