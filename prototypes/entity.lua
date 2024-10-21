local du = require("dutil")

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

require ("__base__.prototypes.entity.pipecovers") ---@diagnostic disable-line

local distillation_rig = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
table.insert(distillation_rig.crafting_categories, "distillation")
distillation_rig.fluid_boxes = {
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=-1, pipe_connections={{position={ 0, 3}, type="input"}}, production_type="input"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=-1, pipe_connections={{position={ 0,-3}, type="input"}}, production_type="input"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={-3, 2}, type="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={-3, 0}, type="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={-3,-2}, type="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={ 3, 2}, type="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={ 3, 0}, type="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), base_level=1, pipe_connections={{position={ 3,-2}, type="output"}}, production_type="output"},
}
distillation_rig.name = "distillation-rig"
data:extend({distillation_rig})

data:extend({
    {
        g2_clean = true, ---@diagnostic disable-line
        type = "storage-tank",
        name = "one-way-valve",
        icon = "__GuG2__/graphics/icons/one-way-valve.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "one-way-valve"},
        max_health = 500,
        corpse = "storage-tank-remnants",
        dying_explosion = "storage-tank-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {-1, 0}, type = "input"},
                { position = {1, 0}, type = "output"}
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures =
        {
            picture =
            {
                sheets =
                {
                    {
                        filename = "__GuG2__/graphics/entity/valves/valve-generic.png",
                        priority = "extra-high",
                        frames = 1,
                        scale = 0.4,
                        width = 128,
                        height = 128,
                        shift = util.by_pixel(0, -10),
                        -- hr_version =
                        -- {
                        --   filename = "__base__/graphics/entity/storage-tank/hr-storage-tank.png",
                        --   priority = "extra-high",
                        --   frames = 2,
                        --   width = 219,
                        --   height = 215,
                        --   shift = util.by_pixel(-0.25, 3.75),
                        --   scale = 0.5
                        -- }
                    },
                    --   {
                    --     filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
                    --     priority = "extra-high",
                    --     frames = 2,
                    --     width = 146,
                    --     height = 77,
                    --     shift = util.by_pixel(30, 22.5),
                    --     draw_as_shadow = true,
                    --     hr_version =
                    --     {
                    --       filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
                    --       priority = "extra-high",
                    --       frames = 2,
                    --       width = 291,
                    --       height = 153,
                    --       shift = util.by_pixel(29.75, 22.25),
                    --       scale = 0.5,
                    --       draw_as_shadow = true
                    --     }
                    --   }
                },
            },
            fluid_background = util.empty_sprite(),
            window_background = util.empty_sprite(),
            flow_sprite = util.empty_sprite(),
            gas_flow = util.empty_sprite(),
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.6
            },
            match_volume_to_activity = true,
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 3
        },
        water_reflection =
        {
            pictures =
            {
                filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
                priority = "extra-high",
                width = 24,
                height = 24,
                shift = util.by_pixel(5, 35),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        }
    },
})
local overflow_valve = table.deepcopy(data.raw["storage-tank"]["one-way-valve"])
overflow_valve.name = "overflow-valve"
overflow_valve.icon = "__GuG2__/graphics/icons/overflow-valve.png"
overflow_valve.minable.result = "overflow-valve"
overflow_valve.fluid_box.base_level = 0.8

data:extend({overflow_valve})
local underflow_valve = util.table.deepcopy(data.raw["storage-tank"]["overflow-valve"])
underflow_valve.name = "top-up-valve"
underflow_valve.icon = "__GuG2__/graphics/icons/top-up-valve.png"
underflow_valve.minable.result = "top-up-valve"
underflow_valve.fluid_box.base_level = -0.2

data:extend({underflow_valve})

data:extend({
    {
        type = "assembling-machine",
        name = "smithy",
        icon = "__pycoalprocessinggraphics__/graphics/icons/advanced-foundry-mk01.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "smithy"},
        fast_replaceable_group = "smithy",
        max_health = 600,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smithing"},
        crafting_speed = 1,
        energy_source =
        {
            type = "fluid",
            effectivity = 1,
            emissions_per_minute = 8,
            scale_fluid_usage = true,
            burns_fluid = true,
            fluid_box = {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 2,
                base_level = -1,
                pipe_connections = {{ type="input", position = {3.5, 1.5} }},
                secondary_draw_orders = { north = -1 }
            },
        },
        energy_usage = "0.6MW",
        animation = {
            layers = {
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/advanced-foundry/advanced-foundry-base-mk01.png",
                    width = 224,
                    height = 224,
                    line_length = 9,
                    frame_count = 76,
                    shift = {0.3, -0.5},
                    animation_speed = 0.5
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/advanced-foundry/advanced-foundry-top-mk01.png",
                    width = 224,
                    height = 41,
                    line_length = 9,
                    frame_count = 76,
                    shift = {0.3, -4.63},
                    animation_speed = 0.5
                }
            }
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {3.4, -0.5}}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {0.5, 3.4}}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_connections = {{type = "output", position = {-3.4, -0.5}}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                base_level = 1,
                pipe_connections = {{type = "output", position = {-0.5, 3.4}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/advanced-foundry.ogg", volume = 0.45},
        }
    },
    {
        type = "assembling-machine",
        name = "destructive-distillation-tower",
        icon = "__pycoalprocessinggraphics__/graphics/icons/distilator.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "destructive-distillation-tower"},
        fast_replaceable_group = "destructive-distillation-tower",
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.9, -3.9}, {3.9, 3.9}},
        selection_box = {{-4, -4}, {4, 4}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "pollution", "productivity"},
        crafting_categories = {"destructive-distillation"},
        crafting_speed = 1,
        energy_source = {
            type = "burner",
            fuel_category = "chemical",
            fuel_inventory_size = 1,
            emissions_per_minute = 6,
        },
        energy_usage = "250kW",
        animation = {
            layers = {
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-mk01-a.png",
                    width = 96,
                    height = 358,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-80, -50)
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-mk01-b.png",
                    width = 96,
                    height = 358,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = util.by_pixel(16, -50)
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-mk01-c.png",
                    width = 96,
                    height = 358,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = util.by_pixel(112, -50)
                },
            }
        },
        fluid_boxes = {
            --North, left
            {  
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{type = "input", position = {-1.5, -4.5}}}
            },
            --North, right
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{type = "output", position = {1.5, -4.5}}}
            },
            --South, left
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{type = "input", position = {-1.5, 4.5}}}
            },
            --South, right
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{type = "output", position = {1.5, 4.5}}}
            },
            --West, top
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{type = "input", position = {-4.5, -1.5}}}
            },
            --West, bottom
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{type = "output", position = {-4.5, 1.5}}}
            },
            --East, top
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{type = "input", position = {4.5, -1.5}}}
            },
            --East, bottom
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{type = "output", position = {4.5, 1.5}}}
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 1,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{type = "output", position = {4.5, 3.5}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/distilator.ogg", volume = 1.2},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/distilator.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    },
    {
        type = "assembling-machine",
        name = "glassworks",
        icon = "__pycoalprocessinggraphics__/graphics/icons/glassworks-mk01.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "glassworks"},
        fast_replaceable_group = "glassworks",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "pollution", "productivity"},
        crafting_categories = {"glassworking"},
        crafting_speed = 1,
        energy_source =
        {
            type = "fluid",
            emissions_per_minute = 10,
            destroy_non_fuel_fluid = false,
            fluid_box =
            {
                base_area = 1,
                height = 2,
                base_level = -1,
                pipe_connections =
                {
                    {type = "input-output", position = {4, 0}},
                    {type = "input-output", position = {-4, 0}}
                },
                pipe_covers = pipecoverspictures(),
                pipe_picture = assembler2pipepictures(),
                production_type = "input",
            },
            effectivity = 1,
            burns_fluid = true,
            light_flicker =
            {
                minimum_intensity = 0,
                maximum_intensity = 0,
                light_intensity_to_size_coefficient = 0,
                color = {0,0,0},
            },
            scale_fluid_usage = true,
            fluid_usage_per_tick = 10,
            smoke =
            {
                {
                    name = "smoke",
                    north_position = util.by_pixel(68, -64),
                    south_position = util.by_pixel(68, -64),
                    east_position = util.by_pixel(68, -64),
                    west_position = util.by_pixel(68, -64),
                    frequency = 8,
                    starting_vertical_speed = 0.04,
                    starting_frame_deviation = 50
                },
                {
                    name = "smoke",
                    north_position = util.by_pixel(-12, -96),
                    south_position = util.by_pixel(-12, -96),
                    east_position = util.by_pixel(-12, -96),
                    west_position = util.by_pixel(-12, -96),
                    frequency = 8,
                    starting_vertical_speed = 0.04,
                    starting_frame_deviation = 50
                },
            }
        },
        energy_usage = "12MW",
        animation = {
            layers = {
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/bot.png",
                    width = 256,
                    height = 32,
                    frame_count = 1,
                    shift = util.by_pixel(16, 96)
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/top.png",
                    width = 256,
                    height = 224,
                    frame_count = 1,
                    shift = util.by_pixel(16, -32)
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/top-mask.png",
                    width = 256,
                    height = 224,
                    frame_count = 1,
                    shift = util.by_pixel(16, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            }
        },
        working_visualisations = {
            {
                north_position = util.by_pixel(-16, -32),
                west_position = util.by_pixel(-16, -32),
                south_position = util.by_pixel(-16, -32),
                east_position = util.by_pixel(-16, -32),
                animation = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/a1.png",
                    frame_count = 100,
                    line_length = 13,
                    width = 128,
                    height = 224,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(96, -32),
                west_position = util.by_pixel(96, -32),
                south_position = util.by_pixel(96, -32),
                east_position = util.by_pixel(96, -32),
                animation = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/a2.png",
                    frame_count = 100,
                    line_length = 13,
                    width = 96,
                    height = 224,
                    animation_speed = 0.3
                }
            },
        },
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {1.0, -4.0}}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {-1.0, -4.0}}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {2.0, 4.0}}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/glassworks.ogg", volume = 0.7},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/glassworks.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    },
    {
        type = "assembling-machine",
        name = "counterflow-heat-exchanger",
        icon = "__pycoalprocessinggraphics__/graphics/icons/classifier.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "counterflow-heat-exchanger"},
        fast_replaceable_group = "counterflow-heat-exchanger",
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.45, -3.45}, {3.45, 3.45}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"heat-exchanging"},
        crafting_speed = 1,
        energy_source = {
            type = "void",
        },
        energy_usage = "50kW",
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {2.0, 4.0}}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {2.0, -4.0}}}
            },
        },
        animation = {
            filename = "__pycoalprocessinggraphics__/graphics/entity/classifier/classifier.png",
            width = 256,
            height = 257,
            frame_count = 34,
            line_length = 8,
            animation_speed = 0.6,
            shift = {0.495, -0.48}
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/classifier.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/classifier.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }
})

local gf_boiler_entity = util.table.deepcopy(data.raw.boiler.boiler)
gf_boiler_entity.name = "scale-boiler"
gf_boiler_entity.icon = "__GuG2__/graphics/icons/scale-boiler.png"
gf_boiler_entity.icon_size = 32
gf_boiler_entity.minable.result = "scale-boiler"
gf_boiler_entity.fast_replaceable_group = "boiler"
gf_boiler_entity.fluid_box.filter = "seawater"
gf_boiler_entity.energy_source = {
    type = "fluid",
    fluid_box = {
        base_area = 1,
        height = 1,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_picture = {
            north = {
                filename = "__GuG2__/graphics/entity/scale-boiler/"
                .."assembling-machine-1-pipe-N.png",
                priority = "extra-high",
                width = 35,
                height = 18,
                shift = util.by_pixel(2.5, 14),
                hr_version = {
                    filename = "__GuG2__/graphics/entity/scale-boiler/"
                    .."hr-assembling-machine-1-pipe-N.png",
                    priority = "extra-high",
                    width = 71,
                    height = 38,
                    shift = util.by_pixel(2.25, 13.5),
                    scale = 0.5
                }
            },
            east = {
                filename = "__GuG2__/graphics/entity/scale-boiler/"
                .."assembling-machine-1-pipe-E.png",
                priority = "extra-high",
                width = 20,
                height = 38,
                shift = util.by_pixel(-25, 1),
                hr_version = {
                    filename = "__GuG2__/graphics/entity/scale-boiler/"
                    .."hr-assembling-machine-1-pipe-E.png",
                    priority = "extra-high",
                    width = 42,
                    height = 76,
                    shift = util.by_pixel(-24.5, 1),
                    scale = 0.5
                }
            },
            south = {
                filename = "__GuG2__/graphics/entity/scale-boiler/"
                .."assembling-machine-1-pipe-S.png",
                priority = "extra-high",
                width = 44,
                height = 31,
                shift = util.by_pixel(0, -31.5),
                hr_version = {
                    filename = "__GuG2__/graphics/entity/scale-boiler/"
                    .."hr-assembling-machine-1-pipe-S.png",
                    priority = "extra-high",
                    width = 88,
                    height = 61,
                    shift = util.by_pixel(0, -31.25),
                    scale = 0.5
                }
            },
            west = {
                filename = "__GuG2__/graphics/entity/scale-boiler/"
                .."assembling-machine-1-pipe-W.png",
                priority = "extra-high",
                width = 19,
                height = 37,
                shift = util.by_pixel(25.5, 1.5),
                hr_version = {
                    filename = "__GuG2__/graphics/entity/scale-boiler/"
                    .."hr-assembling-machine-1-pipe-W.png",
                    priority = "extra-high",
                    width = 39,
                    height = 73,
                    shift = util.by_pixel(25.75, 1.25),
                    scale = 0.5
                }
            }
        },
        pipe_connections = {
            {type = "input", position = {0, 1.5}},
        },
        secondary_draw_orders = {
            south = 32,
            north = -1,
            east = -1,
            west = -1,
        }
    },
    burns_fluid = true,
    scale_fluid_usage = true,
    emissions_per_minute = 30,
    effectivity = 0.5,
    smoke = {{
        name = "smoke",
        north_position = util.by_pixel(-38, -47.5),
        south_position = util.by_pixel(38.5, -32),
        east_position = util.by_pixel(20, -70),
        west_position = util.by_pixel(-19, -8.5),
        frequency = 15,
        starting_vertical_speed = 0.3,
        starting_frame_deviation = 0
    }},
    light_flicker = {
        color = {0.8,0.6,0.4},
        minimum_light_size = 0.1,
        light_intensity_to_size_coefficient = 1
    }
}
gf_boiler_entity.fire_flicker_enabled = false
gf_boiler_entity.fire_glow_flicker_enabled = false
gf_boiler_entity.fire = {}
gf_boiler_entity.fire_glow.north.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"gas-boiler-N-light.png"
gf_boiler_entity.fire_glow.south.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"gas-boiler-S-light.png"
gf_boiler_entity.fire_glow.east.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"gas-boiler-E-light.png"
gf_boiler_entity.fire_glow.west.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"gas-boiler-W-light.png"
gf_boiler_entity.fire_glow.north.hr_version.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"hr-gas-boiler-N-light.png"
gf_boiler_entity.fire_glow.south.hr_version.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"hr-gas-boiler-S-light.png"
gf_boiler_entity.fire_glow.east.hr_version.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"hr-gas-boiler-E-light.png"
gf_boiler_entity.fire_glow.west.hr_version.filename = 
"__GuG2__/graphics/entity/scale-boiler/"..
"hr-gas-boiler-W-light.png"
gf_boiler_entity.fire_glow.north.apply_runtime_tint = true
gf_boiler_entity.fire_glow.south.apply_runtime_tint = true
gf_boiler_entity.fire_glow.east.apply_runtime_tint = true
gf_boiler_entity.fire_glow.west.apply_runtime_tint = true
gf_boiler_entity.fire_glow.north.tint={r=1,g=0.6,b=0.6,a=0.4}
gf_boiler_entity.fire_glow.south.tint={r=1,g=0.6,b=0.6,a=0.4}
gf_boiler_entity.fire_glow.east.tint={r=1,g=0.6,b=0.6,a=0.4}
gf_boiler_entity.fire_glow.west.tint={r=1,g=0.6,b=0.6,a=0.4}
gf_boiler_entity.fire_glow.north.blend_mode = "additive-soft"
gf_boiler_entity.fire_glow.south.blend_mode = "additive-soft"
gf_boiler_entity.fire_glow.east.blend_mode = "additive-soft"
gf_boiler_entity.fire_glow.west.blend_mode = "additive-soft"

data:extend({gf_boiler_entity})

local function cleanroom_wall_cross()
    return {
        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-single.png",
        priority = "extra-high",
        width = 64,
        height = 86,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, -5),
        scale = 0.5
    }
end

data:extend({
    {
        g2_clean_only = true, ---@diagnostic disable-line
        localised_description = {"", {"entity-description.cleanroom-wall"}, "\n", {"label.cleanroom-tile-required"}},
        type = "wall",
        name = "cleanroom-wall",
        icon = "__GuG2__/graphics/icons/cleanroom-wall.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.wall(),
        minable = {mining_time = 0.2, result = "cleanroom-wall"},
        fast_replaceable_group = "cleanroom-wall",
        max_health = 350,
        repair_speed_modifier = 2,
        corpse = "wall-remnants",
        dying_explosion = "wall-explosion",
        repair_sound = sounds.manual_repair,
        mined_sound = sounds.deconstruct_bricks(0.8),
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = sounds.car_stone_impact,
        connected_gate_visualization =
        {
            filename = "__core__/graphics/arrows/underground-lines.png",
            priority = "high",
            width = 64,
            height = 64,
            scale = 0.5
        },
        resistances =
        {
            {
                type = "acid",
                percent = 95
            },
        },
        visual_merge_group = 1, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
        pictures =
        {
            single =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-single.png",
                        priority = "extra-high",
                        width = 64,
                        height = 86,
                        variation_count = 2,
                        line_length = 2,
                        shift = util.by_pixel(0, -5),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-single-shadow.png",
                        priority = "extra-high",
                        width = 98,
                        height = 60,
                        repeat_count = 2,
                        shift = util.by_pixel(10, 17),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            straight_vertical =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-vertical.png",
                        priority = "extra-high",
                        width = 64,
                        height = 134,
                        variation_count = 5,
                        line_length = 5,
                        shift = util.by_pixel(0, 8),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-vertical-shadow.png",
                        priority = "extra-high",
                        width = 98,
                        height = 110,
                        repeat_count = 5,
                        shift = util.by_pixel(10, 29),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            straight_horizontal =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-horizontal.png",
                        priority = "extra-high",
                        width = 64,
                        height = 92,
                        variation_count = 6,
                        line_length = 6,
                        shift = util.by_pixel(0, -2),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-horizontal-shadow.png",
                        priority = "extra-high",
                        width = 124,
                        height = 68,
                        repeat_count = 6,
                        shift = util.by_pixel(14, 15),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            corner_right_down =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-corner-right.png",
                        priority = "extra-high",
                        width = 64,
                        height = 128,
                        variation_count = 2,
                        line_length = 2,
                        shift = util.by_pixel(0, 7),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-corner-right-shadow.png",
                        priority = "extra-high",
                        width = 124,
                        height = 120,
                        repeat_count = 2,
                        shift = util.by_pixel(17, 28),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            corner_left_down =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-corner-left.png",
                        priority = "extra-high",
                        width = 64,
                        height = 134,
                        variation_count = 2,
                        line_length = 2,
                        shift = util.by_pixel(0, 7),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-corner-left-shadow.png",
                        priority = "extra-high",
                        width = 102,
                        height = 120,
                        repeat_count = 2,
                        shift = util.by_pixel(9, 28),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            t_up =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-t.png",
                        priority = "extra-high",
                        width = 64,
                        height = 134,
                        variation_count = 4,
                        line_length = 4,
                        shift = util.by_pixel(0, 7),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-t-shadow.png",
                        priority = "extra-high",
                        width = 124,
                        height = 120,
                        repeat_count = 4,
                        shift = util.by_pixel(14, 28),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            ending_right =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-ending-right.png",
                        priority = "extra-high",
                        width = 64,
                        height = 92,
                        variation_count = 2,
                        line_length = 2,
                        shift = util.by_pixel(0, -3),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-ending-right-shadow.png",
                        priority = "extra-high",
                        width = 124,
                        height = 68,
                        repeat_count = 2,
                        shift = util.by_pixel(17, 15),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            ending_left =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-ending-left.png",
                        priority = "extra-high",
                        width = 64,
                        height = 92,
                        variation_count = 2,
                        line_length = 2,
                        shift = util.by_pixel(0, -3),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-ending-left-shadow.png",
                        priority = "extra-high",
                        width = 102,
                        height = 68,
                        repeat_count = 2,
                        shift = util.by_pixel(9, 15),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            filling =
            {
                filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-filling.png",
                priority = "extra-high",
                width = 48,
                height = 56,
                variation_count = 8,
                line_length = 8,
                shift = util.by_pixel(0, -1),
                scale = 0.5
            },
            water_connection_patch =
            {
                sheets =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-patch.png",
                        priority = "extra-high",
                        width = 116,
                        height = 128,
                        shift = util.by_pixel(0, -2),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-patch-shadow.png",
                        priority = "extra-high",
                        width = 144,
                        height = 100,
                        shift = util.by_pixel(9, 15),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            },
            gate_connection_patch =
            {
                sheets =
                {
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-gate.png",
                        priority = "extra-high",
                        width = 82,
                        height = 108,
                        shift = util.by_pixel(0, -7),
                        scale = 0.5
                    },
                    {
                        filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-gate-shadow.png",
                        priority = "extra-high",
                        width = 130,
                        height = 78,
                        shift = util.by_pixel(14, 18),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        
        wall_diode_green =
        {
            sheet =
            {
                filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-diode-green.png",
                priority = "extra-high",
                width = 72,
                height = 44,
                draw_as_glow = true,
                --frames = 4,
                shift = util.by_pixel(-1, -23),
                scale = 0.5
            }
        },
        wall_diode_green_light_top =
        {
            minimum_darkness = 0.3,
            color = {g=1},
            shift = util.by_pixel(0, -30),
            size = 1,
            intensity = 0.2
        },
        wall_diode_green_light_right =
        {
            minimum_darkness = 0.3,
            color = {g=1},
            shift = util.by_pixel(12, -23),
            size = 1,
            intensity = 0.2
        },
        wall_diode_green_light_bottom =
        {
            minimum_darkness = 0.3,
            color = {g=1},
            shift = util.by_pixel(0, -17),
            size = 1,
            intensity = 0.2
        },
        wall_diode_green_light_left =
        {
            minimum_darkness = 0.3,
            color = {g=1},
            shift = util.by_pixel(-12, -23),
            size = 1,
            intensity = 0.2
        },
        
        wall_diode_red =
        {
            sheet =
            {
                filename = "__GuG2__/graphics/entity/cleanroom/hr-wall-diode-red.png",
                priority = "extra-high",
                width = 72,
                height = 44,
                draw_as_glow = true,
                --frames = 4,
                shift = util.by_pixel(-1, -23),
                scale = 0.5
            }
        },
        wall_diode_red_light_top =
        {
            minimum_darkness = 0.3,
            color = {r=1},
            shift = util.by_pixel(0, -30),
            size = 1,
            intensity = 0.2
        },
        wall_diode_red_light_right =
        {
            minimum_darkness = 0.3,
            color = {r=1},
            shift = util.by_pixel(12, -23),
            size = 1,
            intensity = 0.2
        },
        wall_diode_red_light_bottom =
        {
            minimum_darkness = 0.3,
            color = {r=1},
            shift = util.by_pixel(0, -17),
            size = 1,
            intensity = 0.2
        },
        wall_diode_red_light_left =
        {
            minimum_darkness = 0.3,
            color = {r=1},
            shift = util.by_pixel(-12, -23),
            size = 1,
            intensity = 0.2
        },
        
        circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
        circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        default_output_signal = {type = "virtual", name = "signal-G"}
    },
    {
        g2_clean_only = true,---@diagnostic disable-line
        localised_description = {"", {"entity-description.cleanroom-controller"}, "\n", {"label.cleanroom-tile-required"}},
        type = "electric-energy-interface",
        name = "cleanroom-controller",
        icon = "__GuG2__/graphics/icons/cleanroom-controller.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = "cleanroom-controller"},
        max_health = 350,
        corpse = "steel-chest-remnants",
        dying_explosion = "steel-chest-explosion",
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.43 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.43 },
        resistances =
        {
            {
                type = "acid",
                percent = 95
            }
        },
        gui_mode = "none",
        energy_source = {
            usage_priority = "primary-input",
            buffer_capacity = "30MJ",
            drain = "600kW",
            input_flow_limit = "600MW",
            output_flow_limit = "0W",
        },
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        vehicle_impact_sound = sounds.generic_impact,
        picture =
        {
            layers =
            {
                {
                    filename = "__GuG2__/graphics/entity/cleanroom-controller/cleanroom-controller.png",
                    priority = "extra-high",
                    width = 106,
                    height = 96,
                    shift = util.by_pixel(0, 0.5),
                    scale = 0.30,
                },
            }
        },
        circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
        circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    },
})
local function cleanroom_vent_horizontal()
    return {
        filename = "__GuG2__/graphics/entity/cleanroom-vent/vent-horizontal.png",
        priority = "extra-high",
        width = 64,
        height = 92,
        scale = 0.5,
    }
end

local function cleanroom_vent_vertical()
    return {
        filename = "__GuG2__/graphics/entity/cleanroom-vent/vent-vertical.png",
        priority = "extra-high",
        width = 66,
        height = 132,
        scale = 0.5,
        shift = util.by_pixel(0, -8)
    }
end

local function cleanroom_vent_horizontal_empty()
    local got = cleanroom_vent_horizontal()
    got.filename = "__GuG2__/graphics/entity/cleanroom-vent/empty-halfwall.png"
    return got
end

local function cleanroom_vent_missing()
    return {
        filename = "__GuG2__/graphics/entity/cleanroom-vent/missing.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
    }
end

data:extend({
    {
        g2_clean_only = true,---@diagnostic disable-line
        localised_description = {"", {"entity-description.cleanroom-vent"}, "\n", {"label.cleanroom-tile-required"}},
        type = "storage-tank",
        name = "cleanroom-vent",
        icon = "__GuG2__/graphics/icons/cleanroom-vent.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "cleanroom-vent"},
        max_health = 500,
        corpse = "storage-tank-remnants",
        dying_explosion = "storage-tank-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        fluid_box =
        {
            base_area = 10,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {1, 0}, type = "output"}
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures =
        {
            picture =
            {
                north = cleanroom_vent_vertical(),
                east = cleanroom_vent_horizontal_empty(),
                south = cleanroom_vent_vertical(),
                west = cleanroom_vent_horizontal(),
            },
            fluid_background = util.empty_sprite(),
            window_background = util.empty_sprite(),
            flow_sprite = util.empty_sprite(),
            gas_flow = util.empty_sprite(),
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.6
            },
            match_volume_to_activity = true,
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 3
        },
    },
    {
        g2_clean_only = true,---@diagnostic disable-line
        localised_description = {"", {"entity-description.cleanroom-fluid-interface"}, "\n", {"label.cleanroom-tile-required"}},
        type = "storage-tank",
        name = "cleanroom-fluid-interface",
        icon = "__GuG2__/graphics/icons/cleanroom-fluid-interface.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "cleanroom-vent"},
        max_health = 500,
        corpse = "storage-tank-remnants",
        dying_explosion = "storage-tank-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        fluid_box =
        {
            base_area = 10,
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, 1}, type = "output"},
                { position = {0, -1}, type = "input"},
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures =
        {
            picture =
            {
                north = cleanroom_wall_cross(),
                east = cleanroom_wall_cross(),
                south = cleanroom_wall_cross(),
                west = cleanroom_wall_cross(),
            },
            fluid_background = util.empty_sprite(),
            window_background = util.empty_sprite(),
            flow_sprite = util.empty_sprite(),
            gas_flow = util.empty_sprite(),
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.6
            },
            match_volume_to_activity = true,
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 3
        },
    },
})

data:extend({
    {
        g2_clean_only = true, ---@diagnostic disable-line,
        type = "assembling-machine",
        name = "clean-assembling-machine",
        icon = "__GuG2__/graphics/icons/clean-assembling-machine.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "clean-assembling-machine"},
        max_health = 400,
        corpse = "assembling-machine-3-remnants",
        dying_explosion = "assembling-machine-3-explosion",
        alert_icon_shift = util.by_pixel(-3, -12),
        resistances =
        {
            {
                type = "acid",
                percent = 95
            }
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{ type="input", position = {-1, -2} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{ type="input", position = {1, -2} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{ type="output", position = {-1, 2} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{ type="output", position = {1, 2} }},
                secondary_draw_orders = { north = -1 }
            },
            off_when_no_fluid_recipe = true
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/assembling-machine-t3-1.ogg",
                    volume = 0.45
                }
            },
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
        fast_replaceable_group = "clean-assembling-machine",
        animation =
        {
            layers =
            {
                {
                    filename = "__GuG2__/graphics/entity/clean-assembling-machine/clean-assembling-machine.png",
                    priority = "high",
                    width = 108,
                    height = 119,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, -0.5),
                    hr_version =
                    {
                        filename = "__GuG2__/graphics/entity/clean-assembling-machine/hr-clean-assembling-machine.png",
                        priority = "high",
                        width = 214,
                        height = 237,
                        frame_count = 32,
                        line_length = 8,
                        shift = util.by_pixel(0, -0.75),
                        scale = 0.5
                    }
                },
                {
                    filename = "__GuG2__/graphics/entity/clean-assembling-machine/clean-assembling-machine-shadow.png",
                    priority = "high",
                    width = 130,
                    height = 82,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(28, 4),
                    hr_version =
                    {
                        filename = "__GuG2__/graphics/entity/clean-assembling-machine/hr-clean-assembling-machine-shadow.png",
                        priority = "high",
                        width = 260,
                        height = 162,
                        frame_count = 32,
                        line_length = 8,
                        draw_as_shadow = true,
                        shift = util.by_pixel(28, 4),
                        scale = 0.5
                    }
                }
            }
        },
        
        crafting_categories = {"advanced-crafting", "clean-crafting"},
        crafting_speed = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 0
        },
        energy_usage = "675kW",
        module_specification =
        {
            module_slots = 4
        },
        allowed_effects = {"consumption", "speed", "productivity"}
    },
    {
        g2_clean = true, ---@diagnostic disable-line
        type = "inserter",
        name = "clean-inserter",
        filter_count = 5,
        icon = "__GuG2__/graphics/icons/clean-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = { mining_time = 0.1, result = "clean-inserter" },
        max_health = 150,
        corpse = "fast-inserter-remnants",
        dying_explosion = "fast-inserter-explosion",
        resistances =
        {
            {
                type = "acid",
                percent = 95
            }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        damaged_trigger_effect = hit_effects.entity(),
        pickup_position = {0, -1},
        insert_position = {0, 1.2},
        energy_per_movement = "16KJ",
        energy_per_rotation = "16KJ",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "2kW"
        },
        extension_speed = 0.07,
        rotation_speed = 0.04,
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.inserter_fast,
        hand_base_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-inserter/fast-inserter-hand-base.png",
            priority = "extra-high",
            width = 8,
            height = 34,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-inserter/hr-fast-inserter-hand-base.png",
                priority = "extra-high",
                width = 32,
                height = 136,
                scale = 0.25
            }
        },
        hand_closed_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-inserter/fast-inserter-hand-closed.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-inserter/hr-fast-inserter-hand-closed.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-inserter/fast-inserter-hand-open.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-inserter/hr-fast-inserter-hand-open.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_base_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 8,
            height = 33,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
                priority = "extra-high",
                width = 32,
                height = 132,
                scale = 0.25
            }
        },
        hand_closed_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        platform_picture =
        {
            sheet =
            {
                filename = "__GuG2__/graphics/entity/clean-inserter/fast-inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = {0.09375, 0},
                hr_version =
                {
                    filename = "__GuG2__/graphics/entity/clean-inserter/hr-fast-inserter-platform.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5-1),
                    scale = 0.5
                }
            }
        },
        circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
        circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
    {
        g2_clean = true, ---@diagnostic disable-line
        type = "inserter",
        name = "clean-long-handed-inserter",
        filter_count = 5,
        icon = "__GuG2__/graphics/icons/clean-long-handed-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "clean-long-handed-inserter"},
        max_health = 160,
        corpse = "long-handed-inserter-remnants",
        dying_explosion = "long-handed-inserter-explosion",
        resistances =
        {
            {
                type = "acid",
                percent = 95
            }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        damaged_trigger_effect = hit_effects.entity(),
        pickup_position = {0, -2},
        insert_position = {0, 2.2},
        energy_per_movement = "16KJ",
        energy_per_rotation = "16KJ",
        rotation_speed = 0.04,
        extension_speed = 0.04,
        hand_size = 1.5,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "2kW"
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.inserter_long_handed,
        hand_base_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/long-handed-inserter-hand-base.png",
            priority = "extra-high",
            width = 8,
            height = 34,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/hr-long-handed-inserter-hand-base.png",
                priority = "extra-high",
                width = 32,
                height = 136,
                scale = 0.25
            }
        },
        hand_closed_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/long-handed-inserter-hand-closed.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_picture =
        {
            filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/long-handed-inserter-hand-open.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/hr-long-handed-inserter-hand-open.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_base_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 8,
            height = 33,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
                priority = "extra-high",
                width = 32,
                height = 132,
                scale = 0.25
            }
        },
        hand_closed_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        platform_picture =
        {
            sheet =
            {
                filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/long-handed-inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = {0.09375, 0},
                hr_version =
                {
                    filename = "__GuG2__/graphics/entity/clean-long-handed-inserter/hr-long-handed-inserter-platform.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5-1),
                    scale = 0.5
                }
            }
        },
        circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
        circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
})
data:extend({
    {
        g2_clean_only = true, ---@diagnostic disable-line
        type = "pipe",
        name = "clean-pipe",
        icon = "__GuG2__/graphics/icons/clean-pipe.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "clean-pipe"},
        max_health = 100,
        corpse = "pipe-remnants",
        dying_explosion = "pipe-explosion",
        resistances =
        {
            {
                type = "acid",
                percent = 95
            },
        },
        fast_replaceable_group = "clean-pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            base_area = 1,
            pipe_connections =
            {
                { position = {0, -1} },
                { position = {1, 0} },
                { position = {0, 1} },
                { position = {-1, 0} }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        pictures = {
            straight_vertical_single =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-straight-vertical-single.png",
                priority = "extra-high",
                width = 160,
                height = 160,
                scale = 0.5
            },
            straight_vertical =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-straight-vertical.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            straight_vertical_window =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-straight-vertical-window.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            straight_horizontal_window =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-straight-horizontal-window.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            straight_horizontal =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-straight-horizontal.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            corner_up_right =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-corner-up-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            corner_up_left =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-corner-up-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            corner_down_right =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-corner-down-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            corner_down_left =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-corner-down-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            t_up =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-t-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            t_down =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-t-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            t_right =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-t-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            t_left =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-t-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            cross =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-cross.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            ending_up =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-ending-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            ending_down =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-ending-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            ending_right =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-ending-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            ending_left =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-ending-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            horizontal_window_background =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-horizontal-window-background.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            vertical_window_background =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-pipe-vertical-window-background.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            fluid_background =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-fluid-background.png",
                priority = "extra-high",
                width = 64,
                height = 40,
                scale = 0.5
            },
            low_temperature_flow =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
            },
            middle_temperature_flow =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/fluid-flow-medium-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
            },
            high_temperature_flow =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/fluid-flow-high-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
            },
            gas_flow =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe/hr-steam.png",
                priority = "extra-high",
                line_length = 10,
                width = 48,
                height = 30,
                frame_count = 60,
                axially_symmetrical = false,
                direction_count = 1
            }
        },
        working_sound =
        {
            sound = sounds.pipe,
            match_volume_to_activity = true,
            audible_distance_modifier = 0.3,
            fade_in_ticks = 4,
            fade_out_ticks = 60
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        
        horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
    },
    {
        g2_clean_only = true, ---@diagnostic disable-line
        type = "pipe-to-ground",
        name = "clean-pipe-to-ground",
        icon = "__GuG2__/graphics/icons/clean-pipe-to-ground.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "clean-pipe-to-ground"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances =
        {
            {
                type = "acid",
                percent = 95
            },
            
        },
        fast_replaceable_group = "clean-pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, -1} },
                {
                    position = {0, 1},
                    max_underground_distance = 20
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
            sound = sounds.pipe,
            match_volume_to_activity = true,
            audible_distance_modifier = 0.3,
            fade_in_ticks = 4,
            fade_out_ticks = 60
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures =
        {
            up =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            down =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            left =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            right =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            }
        }
    },
    {
        g2_clean_only = true,---@diagnostic disable-line
        type = "container",
        name = "cleanroom-item-interface",
        localised_description = {"", {"entity-description.cleanroom-item-interface"}, "\n", {"label.cleanroom-tile-required"}},
        icon = "__GuG2__/graphics/icons/cleanroom-item-interface.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = "cleanroom-item-interface"},
        max_health = 350,
        corpse = "steel-chest-remnants",
        dying_explosion = "steel-chest-explosion",
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.43 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.43 },
        resistances =
        {
            {
                type = "acid",
                percent = 95
            },
        },
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fast_replaceable_group = "container",
        inventory_size = 10,
        vehicle_impact_sound = sounds.generic_impact,
        picture =
        {
            layers =
            {
                cleanroom_wall_cross()
            }
        },
        circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
        circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    },
})

data.raw.generator["steam-engine"].effectivity = 0.75

data.raw["assembling-machine"]["assembling-machine-1"].energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions_per_minute = 8,
    scale_fluid_usage = true,
    burns_fluid = false,
    fluid_box = {
        filter = "steam",
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 2,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }},
        secondary_draw_orders = { north = -1 }
    },
}
data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"crafting", "crafting-with-fluid", "autocrafting"}
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes = {
    {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }},
        secondary_draw_orders = { north = -1 }
    },
    {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-1, 2} }},
        secondary_draw_orders = { north = -1 }
    },
}

data.raw["offshore-pump"]["offshore-pump"].fluid = "seawater"
data.raw["offshore-pump"]["offshore-pump"].fluid_box.filter = "seawater"

data:extend({
    {
        type = "item",
        name = "cleanroom-fluid-interface",
        icons = du.icons("cleanroom-fluid-interface"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "cleanroom-fluid-interface",
    },
    {
        type = "item",
        name = "cleanroom-item-interface",
        icons = du.icons("cleanroom-item-interface"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "cleanroom-item-interface",
    },
    {
        type = "item",
        name = "clean-pipe",
        icons = du.icons("clean-pipe"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "clean-pipe",
    },
    {
        type = "item",
        name = "clean-pipe-to-ground",
        icons = du.icons("clean-pipe-to-ground"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "clean-pipe-to-ground",
    },
    {
        type = "item",
        name = "clean-inserter",
        icons = du.icons("clean-inserter"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "clean-inserter",
    },
    {
        type = "item",
        name = "clean-long-handed-inserter",
        icons = du.icons("clean-long-handed-inserter"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "clean-long-handed-inserter",
    },
    {
        type = "item",
        name = "clean-assembling-machine",
        icons = du.icons("clean-assembling-machine"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "clean-assembling-machine",
    },
    {
        type = "item",
        name = "cleanroom-wall",
        icons = du.icons("cleanroom-wall"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "cleanroom-wall",
    },
    {
        type = "item",
        name = "cleanroom-vent",
        icons = du.icons("cleanroom-vent"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "cleanroom-vent",
    },
    {
        type = "item",
        name = "cleanroom-controller",
        icons = du.icons("cleanroom-controller"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "cleanroom-controller",
    },
    {
        type = "item",
        name = "mechanical-inserter",
        icons = du.icons("mechanical-inserter"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        --place_result = "mechanical-inserter",
    },
    {
        type = "item",
        name = "steam-inserter",
        icons = du.icons("steam-inserter"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "scale-boiler",
        icons = du.icons_ext{mod="__base__", name="boiler"}:fin(),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "scale-boiler"
    },
    {
        type = "item",
        name = "smithy",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/advanced-foundry-mk01.png"}:fin(),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "smithy"
    },
    {
        type = "item",
        name = "glassworks",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/glassworks-mk01.png"}:fin(),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "glassworks"
    },
    {
        type = "item",
        name = "destructive-distillation-tower",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/distilator.png"}:fin(),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "destructive-distillation-tower"
    },
    {
        type = "item",
        name = "counterflow-heat-exchanger",
        icons = du.icons_ext{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/classifier.png"}:fin(),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "counterflow-heat-exchanger"
    },
    {
        type = "item",
        name = "one-way-valve",
        icons = du.icons("one-way-valve"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "one-way-valve"
    },
    {
        type = "item",
        name = "overflow-valve",
        icons = du.icons("overflow-valve"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "overflow-valve"
    },
    {
        type = "item",
        name = "top-up-valve",
        icons = du.icons("top-up-valve"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "top-up-valve"
    },
    {
        type = "recipe-category",
        name = "heat-exchanging"
    },
    {
        type = "recipe-category",
        name = "glassworking"
    },
    {
        type = "recipe-category",
        name = "smithing"
    },
    {
        type = "recipe-category",
        name = "autocrafting"
    },
    {
        type = "recipe-category",
        name = "crushing"
    },
    {
        type = "recipe-category",
        name = "boiling"
    },
    {
        type = "recipe-category",
        name = "destructive-distillation"
    },
    {
        type = "recipe-category",
        name = "separating"
    },
    {
        type = "recipe-category",
        name = "flash-boiling"
    },
    {
        type = "recipe-category",
        name = "clean-crafting"
    },
    {
        type = "recipe-category",
        name = "distillation"
    },
})