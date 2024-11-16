local du = require("dutil")

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
require ("__core__.lualib.circuit-connector-sprites")

require ("__base__.prototypes.entity.pipecovers") ---@diagnostic disable-line

local function composite_trigger()
    return {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "g2cc",
            }
        }
    }
end

local distillation_rig = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
table.insert(distillation_rig.crafting_categories, "distillation")
distillation_rig.fluid_boxes = {
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={ 0, 2}, direction=defines.direction.south, flow_direction="input"}}, production_type="input"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={ 0,-2}, direction=defines.direction.north, flow_direction="input"}}, production_type="input"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={-2, 2}, direction=defines.direction.west, flow_direction="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={-2, 0}, direction=defines.direction.west, flow_direction="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={-2,-2}, direction=defines.direction.west, flow_direction="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={ 2, 2}, direction=defines.direction.east, flow_direction="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={ 2, 0}, direction=defines.direction.east, flow_direction="output"}}, production_type="output"},
    {pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(), volume=100, pipe_connections={{position={ 2,-2}, direction=defines.direction.east, flow_direction="output"}}, production_type="output"},
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
            volume=100,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, 0}, --[[flow_direction = "input",]] direction=defines.direction.north},
                { position = {0, 0}, --[[flow_direction = "output",]] direction=defines.direction.south}
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
        crafting_categories = {"smithing"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source =
        {
            type = "fluid",
            effectivity = 0.5,
            emissions_per_minute = {pollution=8},
            scale_fluid_usage = true,
            burns_fluid = true,
            fluid_box = {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 200,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {2.5, 1.5}, direction=defines.direction.east }},
                secondary_draw_orders = { north = -1 }
            },
        },
        energy_usage = "0.4MW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/advanced-foundry/advanced-foundry-base.png",
                        width = 224,
                        height = 224,
                        line_length = 9,
                        frame_count = 76,
                        shift = {0.3, -0.5},
                        animation_speed = 0.5
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/advanced-foundry/advanced-foundry-top.png",
                        width = 224,
                        height = 41,
                        line_length = 9,
                        frame_count = 76,
                        shift = {0.3, -4.63},
                        animation_speed = 0.5
                    }
                }
            },
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {-2.4, -0.5}, direction=defines.direction.west}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {0.5, -2.4}, direction=defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {2.4, -0.5}, direction=defines.direction.east}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),        
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-0.5, 2.4}, direction=defines.direction.south}}
            },
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
        crafting_categories = {"destructive-distillation"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source = {
            type = "burner",
            effectivity = 0.5,
            fuel_categories = {"chemical"},
            fuel_inventory_size = 1,
            emissions_per_minute = {pollution=6},
        },
        energy_usage = "250kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-a.png",
                        width = 96,
                        height = 358,
                        line_length = 20,
                        frame_count = 100,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-80, -50)
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-b.png",
                        width = 96,
                        height = 358,
                        line_length = 20,
                        frame_count = 100,
                        animation_speed = 0.5,
                        shift = util.by_pixel(16, -50)
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/distilator/distilator-c.png",
                        width = 96,
                        height = 358,
                        line_length = 20,
                        frame_count = 100,
                        animation_speed = 0.5,
                        shift = util.by_pixel(112, -50)
                    },
                }
            },
        },
        fluid_boxes = {
            --North, left
            {  
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{flow_direction = "input", position = {-1.5, -3.5}, direction=defines.direction.north}}
            },
            --North, right
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{flow_direction = "output", position = {1.5, -3.5}, direction=defines.direction.north}}
            },
            --South, left
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{flow_direction = "input", position = {-1.5, 3.5}, direction=defines.direction.south}}
            },
            --South, right
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{flow_direction = "output", position = {1.5, 3.5}, direction=defines.direction.south}}
            },
            --West, top
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{flow_direction = "input", position = {-3.5, -1.5}, direction=defines.direction.west}}
            },
            --West, bottom
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{flow_direction = "output", position = {-3.5, 1.5}, direction=defines.direction.west}}
            },
            --East, top
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(), --.05
                pipe_connections = {{flow_direction = "input", position = {3.5, -1.5}, direction=defines.direction.east}}
            },
            --East, bottom
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_picture = assembler2pipepictures(),
                pipe_connections = {{flow_direction = "output", position = {3.5, 1.5}, direction=defines.direction.east}}
            },
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
        crafting_categories = {"glassworking"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source =
        {
            type = "fluid",
            emissions_per_minute = {pollution=10},
            destroy_non_fuel_fluid = false,
            fluid_box =
            {
                volume=100,
                height = 2,
                base_level = -1,
                pipe_connections =
                {
                    {flow_direction = "input-output", position = {3, 0}, direction=defines.direction.east},
                    {flow_direction = "input-output", position = {-3, 0}, direction=defines.direction.west}
                },
                pipe_covers = pipecoverspictures(),
                pipe_picture = assembler2pipepictures(),
                production_type = "input",
            },
            effectivity = 0.8,
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
        energy_usage = "10MW",
        graphics_set = {
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction=defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {-1.0, -3.0}, direction=defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction=defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction=defines.direction.south}}
            },
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
        crafting_categories = {"heat-exchanging"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source = {
            type = "void",
        },
        energy_usage = "50kW",
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction=defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction=defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction=defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{flow_direction = "output", position = {2.0, -3.0}, direction=defines.direction.north}}
            },
        },
        graphics_set = {
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/classifier/classifier.png",
                width = 256,
                height = 257,
                frame_count = 34,
                line_length = 8,
                animation_speed = 0.6,
                shift = {0.495, -0.48}
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/classifier.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/classifier.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }
})

local function forestry_box(side_length)
    data:extend({
        {
            no_fix = true,
            type = "simple-entity",
            name = "g2-tree-"..side_length.."x"..side_length,
            localised_name = {"label.tree-airspace"},
            flags = {"not-on-map", "not-deconstructable", "not-blueprintable", "not-in-kill-statistics"},
            selectable_in_game = false,
            remove_decoratives = "true",
            collision_mask = {
                layers = {
                    non_farmland = true
                },
            },
            collision_box = {
                {side_length / -2 + 0.1, side_length / -2 + 0.1}, {side_length/2 - 0.1, side_length/2 - 0.1}  
            },
            selection_box = {
                {side_length / -2 + 0.1, side_length / -2 + 0.1}, {side_length/2 - 0.1, side_length/2 - 0.1}
            },
        }
    })
end

local function ensure(def, item)
    if not def[item] then
        error("Missing "..tostring(item))
    end
end

local function forestry_tree(def)
    ensure(def, "name")
    ensure(def, "result")
    ensure(def, "categories")
    ensure(def, "animation")
    ensure(def, "side_length")
    forestry_box(def.side_length)
    local boxed_anim = table.deepcopy(def.animation)
    table.insert(boxed_anim.layers, 1,
    {
        filename = "__GuG2__/graphics/entity/forestry/visualization.png",
        width = 32,
        height = 32,
        scale = def.side_length
    })
    data:extend({
        {
            no_fix = true,
            type = "assembling-machine",
            name = def.name,
            icons = du.icons(def.name),
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 1, result = def.result},
            placeable_by = {item=def.result, count=1},
            fast_replaceable_group = "forestry-tree",
            max_health = 300,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            created_effect = composite_trigger(),
            collision_mask = {
                layers = {
                    non_farmland = true,
                    water_tile = true,
                    cleanroom_tile = true,
                    item=true,
                    meltable=true,
                    object=true,
                    player=true,
                    is_object=true,
                    is_lower_object=true
                }
            },
            collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            match_animation_speed_to_activity = false,
            crafting_categories = def.categories,
            crafting_speed = 1,
            energy_source = {
                type = "void",
            },
            energy_usage = "1kW",
            graphics_set = {
                animation = def.animation
            },
            fluid_boxes = {
                {
                    production_type = "output",
                    pipe_covers = pipecoverspictures(),
                    volume = 100,
                    pipe_picture = assembler2pipepictures(), --.05
                    pipe_connections = {{flow_direction = "input-output", position = {0, -1}, direction=defines.direction.north}, {flow_direction = "input-output", position = {0, 1}, direction=defines.direction.south}}
                },
                {
                    production_type = "input",
                    pipe_covers = pipecoverspictures(),
                    volume = 100,
                    pipe_picture = assembler2pipepictures(), --.05
                    pipe_connections = {{flow_direction = "input-output", position = {-1, 0}, direction=defines.direction.west}, {flow_direction = "input-output", position = {1, 0}, direction=defines.direction.east}}
                },
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            working_sound = {
                sound = {filename = "__pycoalprocessinggraphics__/sounds/distilator.ogg", volume = 1.2},
                idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/distilator.ogg", volume = 0.3},
                apparent_volume = 2.5
            },
        }
    })
end

local function forestry_tree_base()
    return {
        filename = "__GuG2__/graphics/entity/forestry/base.png",
        width=196,
        height=196,
        scale = 0.5,
        frame_count = 1,
        line_length = 1
    }
end

data:extend({
    {
        type = "recipe-category",
        name = "forestry-generic-growing"
    },
    {
        type = "recipe-category",
        name = "forestry-pine-growing"
    },
    {
        type = "recipe-category",
        name = "forestry-oak-growing"
    },
})

forestry_tree{
    name = "forestry-pine",
    result = "pine-sapling",
    categories = {"forestry-generic-growing", "forestry-pine-growing"},
    side_length = 9,
    animation = {
        layers = {
            forestry_tree_base(),
            {
                filename = "__GuG2__/graphics/entity/forestry/pine/tree.png",
                width = 188,
                height = 306,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = util.by_pixel(0, -40)
            },
        }
    }
}

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
        volume=100,
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
            {flow_direction = "input", position = {0, 0.5}, direction=defines.direction.north},
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
    emissions_per_minute = {pollution=30},
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
--[[
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
gf_boiler_entity.fire_glow.west.blend_mode = "additive-soft"]]

data:extend({gf_boiler_entity})


data:extend({
    {
        type = "assembling-machine",
        name = "steam-crusher",
        icons = du.icons("steam-crusher"),
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "steam-crusher"},
        max_health = 350,
        corpse = "oil-refinery-remnants",
        dying_explosion = "oil-refinery-explosion",
        collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
        selection_box = {{-1.9, -1.9}, {1.9, 1.9}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.9, -1.9}, {1.9, 1.9}},
        scale_entity_info_icon = true,
        crafting_categories = {"crushing"},
        crafting_speed = 1,
        energy_usage = "250kW",
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source =
        {
            type = "fluid",
            effectivity = 0.6,
            scale_fluid_usage = true,
            fluid_box = {
                filter = "steam",
                minimum_temperature = 100.0,
                maximum_temperature = 600.0,
                production_type = "input-output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {
                    { flow_direction="input-output", position = {1.5, 0.5}, direction=defines.direction.east },
                    { flow_direction="input-output", position = {-1.5, 0.5}, direction=defines.direction.west }
                },
                secondary_draw_orders = { north = -1 }
            },
        },
        graphics_set = {
            animation =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/crusher/crusher-base.png",
                        priority="high",
                        width = 160,
                        height = 160,
                        frame_count = 5,
                        line_length = 5,
                        scale = 1,
                        animation_speed = 0.5,
                        shift = util.by_pixel(0, 2),
                    },
                }
            },
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/oil-refinery.ogg"
            },
            --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction="input",
                        position = {1.5, 1.5},
                        direction = defines.direction.south
                    }
                }
            },
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction="input",
                        position = {-0.5, 1.5},
                        direction = defines.direction.south
                    }
                }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction="output",
                        position = {0.5, -1.5},
                        direction = defines.direction.north
                    }
                }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction="output",
                        position = {-1.5, -1.5},
                        direction = defines.direction.north
                    }
                }
            },
        },
        water_reflection =
        {
            pictures =
            {
                filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
                priority = "extra-high",
                width = 40,
                height = 48,
                shift = util.by_pixel(5, 95),
                variation_count = 4,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = true
        }
    },
})

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
        circuit_connector = circuit_connector_definitions["wall"], ---@diagnostic disable-line
        circuit_wire_max_distance = default_circuit_wire_max_distance, ---@diagnostic disable-line
        default_output_signal = {type = "virtual", name = "signal-G"},    
        g2_clean_only = true, ---@diagnostic disable-line
        localised_description = {"", {"entity-description.cleanroom-wall"}, "\n", {"label.cleanroom-tile-required"}},
        type = "wall",
        name = "cleanroom-wall",
        icon = "__GuG2__/graphics/icons/cleanroom-wall.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.wall(),
        minable = {mining_time = 0.2, result = "cleanroom-wall"},
        created_effect = composite_trigger(),
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
            type = "electric",
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
            volume = 100,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, 0}, --[[flow_direction = "output",]] direction=defines.direction.north}
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
            volume = 100,
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, 0}, --[[flow_direction = "output",]] direction=defines.direction.north},
                { position = {0, 0}, --[[flow_direction = "input",]] direction=defines.direction.south},
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {-1, -1}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {1, -1}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-1, 1}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {1, 1}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
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
        graphics_set = {
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
        },
        
        crafting_categories = {"advanced-crafting", "clean-crafting"},
        crafting_speed = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=0}
        },
        energy_usage = "675kW",
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
        energy_per_movement = "16kJ",
        energy_per_rotation = "16kJ",
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
        energy_per_movement = "16kJ",
        energy_per_rotation = "16kJ",
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
            volume=100,
            pipe_connections =
            {
                { position = {0, 0}, direction=defines.direction.north },
                { position = {0, 0}, direction=defines.direction.east },
                { position = {0, 0}, direction=defines.direction.south },
                { position = {0, 0}, direction=defines.direction.west }
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
        working_sound = sounds.pipe,
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
            volume=100,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, 0}, direction=defines.direction.south},
                { position = {0, 0}, direction=defines.direction.north, connection_type="underground", max_underground_distance=30}
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures =
        {
            north =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            south =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            west =
            {
                filename = "__GuG2__/graphics/entity/clean-pipe-to-ground/hr-pipe-to-ground-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            east =
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

local steam_engine = data.raw.generator["steam-engine"]
data.raw.generator["steam-engine"] = nil
steam_engine.type = "assembling-machine"
steam_engine.crafting_categories = {"generating"}
steam_engine.fixed_recipe = "steam-engine-rotation-generation"
steam_engine.energy_usage = "1800kW"
steam_engine.crafting_speed = 1
steam_engine.fluid_boxes = {
    {
        volume = 200,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
            { flow_direction = "output", direction = defines.direction.north, position = {0, -2} }
        },
        production_type = "output",
        filter = "rotational-force",
    }
}
steam_engine.graphics_set = {
    animation = {
        north = steam_engine.vertical_animation,
        east = steam_engine.horizontal_animation,
        south = steam_engine.vertical_animation,
        west = steam_engine.horizontal_animation,
    }
}
steam_engine.energy_source = {
    type = "fluid",
    maximum_temperature=165,
    effectivity = 0.5,
    fluid_box = {
        volume=100,
        height = 1,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
            {flow_direction = "input", position = {0, 2}, direction=defines.direction.south},
        },
        filter="steam",
        minimum_temperature=100,
    },
    burns_fluid = false,
    scale_fluid_usage = true,
    destroy_non_fuel_fluid = false,
    smoke =
    {
        {
            name = "light-smoke",
            north_position = {0.9, 0.0},
            east_position = {-2.0, -2.0},
            frequency = 3,
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
        }
    },
    light_flicker = {
        color = {0.8,0.6,0.4},
        minimum_light_size = 0.1,
        light_intensity_to_size_coefficient = 1
    }
}
steam_engine.produces_temperature = 1200
steam_engine.produces_amount = (du.J(steam_engine.energy_usage) * 60) / (du.J(du.fluid("rotational-force").heat_capacity) * steam_engine.produces_temperature)
data:extend({steam_engine})

data:extend({
    {
        type = "recipe-category",
        name = "generating",
    },
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "generating", ---@diagnostic disable-line
        name = "steam-engine-rotation-generation",
        icons = du.icons("rotational-force"),
        hidden = true,
        energy_required = 0.1,
        ingredients = {
        },
        results = {
            {type="fluid", name="rotational-force", amount= steam_engine.produces_amount * 0.1, temperature=steam_engine.produces_temperature},
        }
    }
})

data:extend({
    {
        type = "generator",
        name = "lv-generator",
        icons = du.icons("lv-generator"),
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.3, result = "lv-generator"},
        max_health = 400,
        corpse = "steam-engine-remnants",
        dying_explosion = "steam-engine-explosion",
        alert_icon_shift = util.by_pixel(0, -12),
        effectivity = 0.8,
        fluid_usage_per_tick = 2,
        maximum_temperature = 1200,
        resistances =
        {
            {
                type = "fire",
                percent = 70
            },
            {
                type = "impact",
                percent = 30
            }
        },
        fast_replaceable_group = "steam-engine",
        collision_box = {{-1.25, -0.75}, {1.25, 0.75}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            volume = 200,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { flow_direction = "input-output", direction = defines.direction.south, position = {0, 0.5} },
                { flow_direction = "input-output", direction = defines.direction.north, position = {0, -0.5} }
            },
            production_type = "input",
            filter = "rotational-force",
            minimum_temperature = 100.0
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-output"
        },
        horizontal_animation =
        {
            layers =
            {
                {
                    filename = "__GuG2__/graphics/entity/lv-generator/lv-generator-horizontal.png",
                    width = 128,
                    height = 192,
                    frame_count = 1,
                    line_length = 1,
                    scale = 0.5
                },
            }
        },
        vertical_animation =
        {
            layers =
            {
                {
                    filename = "__GuG2__/graphics/entity/lv-generator/lv-generator-vertical.png",
                    width = 192,
                    height = 128,
                    frame_count = 1,
                    line_length = 1,
                    scale = 0.5
                },
            }
        },
        impact_category = "metal-large",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/steam-engine-90bpm.ogg",
                volume = 0.55,
                speed_smoothing_window_size = 60,
                modifiers = volume_multiplier("tips-and-tricks", 1.1)
            },
            match_speed_to_activity = true,
            audible_distance_modifier = 0.8,
            max_sounds_per_type = 3,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        perceived_performance = { minimum = 0.25, performance_to_activity_rate = 2.0 },
    }
})

local function watts_from_rotational_force(per_second, temperature)
    return du.J(du.fluid("rotational-force").heat_capacity) * temperature * per_second
end

local function kW_from_rotational_force(per_second, temperature)
    return watts_from_rotational_force(per_second, temperature) / 1000
end

local lv_generator = data.raw.generator["lv-generator"]
lv_generator.localised_description = {"",
{"entity-description.lv-generator"},
"\n",
{
    "label.consumes-rotational-force-amount",
    tostring(lv_generator.maximum_temperature),
    tostring(kW_from_rotational_force(lv_generator.fluid_usage_per_tick * 60, lv_generator.maximum_temperature)),
    "kW"
},
"\n",
{"label.no-cleanroom"}}

local steam_engine = data.raw["assembling-machine"]["steam-engine"]
steam_engine.localised_description = {"",
{"entity-description.lv-generator"},
"\n",
{
    "label.produces-rotational-force-amount",
    tostring(steam_engine.produces_temperature),
    tostring(kW_from_rotational_force(steam_engine.produces_amount, steam_engine.produces_temperature)),
    "kW"
},
"\n",
{"label.no-cleanroom"}}

data.raw["assembling-machine"]["assembling-machine-1"].energy_source = {
    type = "fluid",
    effectivity = 0.6,
    emissions_per_minute = {pollution=8},
    scale_fluid_usage = true,
    burns_fluid = false,
    fluid_box = {
        filter = "steam",
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        base_level = -1,
        pipe_connections = {{ flow_direction="input", position = {1, 0}, direction=defines.direction.east }},
        secondary_draw_orders = { north = -1 }
    },
}
data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"crafting", "crafting-with-fluid", "advanced-crafting", "machining"}
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes)
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "200kW"

data.raw["offshore-pump"]["offshore-pump"].fluid = "seawater"
data.raw["offshore-pump"]["offshore-pump"].fluid_box.filter = "seawater"

data:extend({
    {
        type = "assembling-machine",
        name = "tube-boiler",
        icons = du.icons("tube-boiler"),
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "tube-boiler"},
        max_health = 350,
        corpse = "oil-refinery-remnants",
        dying_explosion = "oil-refinery-explosion",
        collision_box = {{-0.4, -2.4}, {0.4, 2.4}},
        selection_box = {{-0.5, -2.5}, {0.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.5, -0.5}, {1.5, 0.5}},
        scale_entity_info_icon = true,
        crafting_categories = {"boiling"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source =
        {
            type = "fluid",
            effectivity = 0.8,
            emissions_per_minute = {pollution=8},
            scale_fluid_usage = true,
            burns_fluid = true,
            fluid_box = {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{ flow_direction="input", position = {0, -1}, direction=defines.direction.east }},
                secondary_draw_orders = { north = -1 }
            },
        },
        energy_usage = "1.8MW",
        graphics_set = {
            animation =
            {
                north = {
                    layers =
                    {
                        {
                            filename = "__GuG2__/graphics/entity/boiler/tube-boiler-1-north.png",
                            priority="high",
                            width = 80,
                            height = 320,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                        }
                    },
                },
                east = {
                    layers =
                    {
                        {
                            filename = "__GuG2__/graphics/entity/boiler/tube-boiler-1-east.png",
                            priority="high",
                            width = 320,
                            height = 80,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                        }
                    },
                },
                south = {
                    layers =
                    {
                        {
                            filename = "__GuG2__/graphics/entity/boiler/tube-boiler-1-south.png",
                            priority="high",
                            width = 80,
                            height = 320,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                        }
                    },
                },
                west = {
                    layers =
                    {
                        {
                            filename = "__GuG2__/graphics/entity/boiler/tube-boiler-1-west.png",
                            priority="high",
                            width = 320,
                            height = 80,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                        }
                    },
                },
            },
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/oil-refinery.ogg"
            },
            --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction="input",
                        position = {0,-2},
                        direction=defines.direction.north
                    }
                }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction = "output",
                        position = {0, 2},
                        direction=defines.direction.south
                    }
                }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections =
                {
                    {
                        flow_direction = "output",
                        position = {0, 1},
                        direction=defines.direction.west
                    }
                }
            },
        },
        water_reflection =
        {
            pictures =
            {
                filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
                priority = "extra-high",
                width = 40,
                height = 48,
                shift = util.by_pixel(5, 95),
                variation_count = 4,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = true
        }
    },
    {
        type = "recipe-category",
        name = "boiling"
    },
})

local mechanical_inserter = table.deepcopy(data.raw.inserter["burner-inserter"])
mechanical_inserter.name = "mechanical-inserter"
mechanical_inserter.minable.result = "mechanical-inserter"
mechanical_inserter.icons = du.icons("mechanical-inserter")
mechanical_inserter.energy_source = {type="void"}
mechanical_inserter.hand_base_picture = data.raw.inserter["fast-inserter"].hand_base_picture
mechanical_inserter.hand_closed_picture = data.raw.inserter["fast-inserter"].hand_closed_picture
mechanical_inserter.hand_open_picture = data.raw.inserter["fast-inserter"].hand_open_picture
data:extend({mechanical_inserter})
local steam_inserter = table.deepcopy(data.raw.inserter["burner-inserter"])
steam_inserter.name = "steam-inserter"
steam_inserter.minable.result = "steam-inserter"
steam_inserter.icons = du.icons("steam-inserter")
steam_inserter.energy_source =
{
    type = "fluid",
    effectivity = 0.5,
    scale_fluid_usage = true,
    fluid_box = {
        filter = "steam",
        minimum_temperature = 100.0,
        production_type = "input-output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 30,
        pipe_connections = {
            { flow_direction="input-output", position = {0, 0}, direction=defines.direction.east },
            { flow_direction="input-output", position = {0, 0}, direction=defines.direction.west }
        },
        secondary_draw_orders = { north = -1 }
    },
}
steam_inserter.rotation_speed = data.raw.inserter["inserter"].rotation_speed
data:extend({steam_inserter})
data.raw.inserter["burner-inserter"].rotation_speed = data.raw.inserter["fast-inserter"].rotation_speed
data.raw.inserter["burner-inserter"].allow_burner_leech = true

local burner_chem = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
burner_chem.name = "burner-chemical-plant"
burner_chem.minable.result = "burner-chemical-plant"
burner_chem.icons = du.icons("burner-chemical-plant")
burner_chem.energy_source = {
    type="burner",
    fuel_inventory_size=1,
    fuel_categories = {"chemical"},
    smoke = {
        {
            name = "smoke",
            frequency = 12,
            north_position=util.by_pixel(-16, -80),
            east_position=util.by_pixel(16, -70),
            south_position=util.by_pixel(4, -64),
            west_position=util.by_pixel(-16, -64),
            deviation = util.by_pixel(8,8),
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
        }
    }
}
data:extend({burner_chem})

local stone_furnace = data.raw.furnace["stone-furnace"]
data.raw.furnace["stone-furnace"] = nil
stone_furnace.next_upgrade = nil
stone_furnace.type = "assembling-machine"
stone_furnace.crafting_categories = {"smelting"}
stone_furnace.collision_box = {{-1.3, -1.3}, {1.3, 1.3}}
stone_furnace.selection_box = {{-1.3, -1.5}, {1.3, 1.5}}
stone_furnace.energy_usage = "400kW"
stone_furnace.module_slots = 2
stone_furnace.allowed_effects = {"consumption", "pollution"}
for _, layer in pairs(stone_furnace.graphics_set.animation.layers) do
    layer.scale = (layer.scale or 1) * 1.5
end
for _, visual in pairs(stone_furnace.graphics_set.working_visualisations) do
    if visual.animation.layers then
        for _, layer in pairs(visual.animation.layers) do
            layer.scale = (layer.scale or 1) * 1.5
        end
    else
        visual.animation.scale = (visual.animation.scale or 1) * 1.5
    end
end
stone_furnace.fluid_boxes =
{
    {
        production_type="input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        volume=100,
        pipe_connections={{position={0, 1}, direction=defines.direction.south, flow_direction="input"}},
    },
    {
        production_type="output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        volume=100,
        pipe_connections={{position={0,-1}, direction=defines.direction.north, flow_direction="output"}},
    },
}
stone_furnace.fluid_boxes_off_when_no_fluid_recipe = true
data:extend({stone_furnace})

data:extend({
    {
        type = "assembling-machine",
        name = "soil-extractor",
        icon = "__pycoalprocessinggraphics__/graphics/icons/soil-extractor-mk01.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "soil-extractor"},
        fast_replaceable_group = "extractor",
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.48, -3.48}, {3.48, 3.48}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        crafting_categories = {"extracting"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source =
        {
            type = "fluid",
            effectivity = 0.5,
            scale_fluid_usage = true,
            fluid_box = {
                filter = "steam",
                minimum_temperature = 100.0,
                production_type = "input-output",
                pipe_covers = pipecoverspictures(),
                pipe_picture = assembler2pipepictures(),
                volume = 100,
                pipe_connections = {
                    { flow_direction="input-output", position = {0, 3},  direction=defines.direction.south },
                    { flow_direction="input-output", position = {0, -3}, direction=defines.direction.north }
                },
                secondary_draw_orders = { north = -1 }
            },
        },
        energy_usage = "400kW",
        graphics_set = {
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractor/soil-extractor.png",
                width = 235,
                height = 266,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.8,
                shift = {0.16, -0.609}
            },
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                pipe_picture = assembler2pipepictures(),
                volume=100,
                pipe_connections = {
                    {flow_direction = "input-output", direction=defines.direction.east, position = {3.0, 0.0}},
                    {flow_direction = "input-output", direction=defines.direction.west, position = {-3.0, 0.0}}
                }
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractor.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractor.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }
})

local function forward_then_backward()
    return "forward-th".."en-backward"
end

data:extend({
    {
        type = "mining-drill",
        name = "fluid-mining-drill",
        icon = "__base__/graphics/icons/burner-mining-drill.png",
        flags = {"placeable-neutral", "player-creation"},
        resource_categories = {"basic-solid"},
        minable = {mining_time = 0.3, result = "fluid-mining-drill"},
        max_health = 150,
        corpse = "burner-mining-drill-remnants",
        dying_explosion = "burner-mining-drill-explosion",
        collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        mining_speed = 1,
        working_sound =
        {
            sound = sound_variations("__base__/sound/burner-mining-drill", 2, 0.6, volume_multiplier("tips-and-tricks", 0.8)),
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        open_sound = sounds.drill_open,
        close_sound = sounds.drill_close,
        resource_searching_radius = 2.49,
        radius_visualisation_picture =
        {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 10,
            height = 10
        },
        allowed_effects = {}, -- no beacon effects on the burner drill
        energy_source =
        {
            type = "burner",
            effectivity = 0.5,
            fuel_categories = {"chemical"},
            fuel_inventory_size = 1,
            emissions_per_minute = { pollution = 12 },
            light_flicker = {color = {0,0,0}},
            smoke =
            {
                {
                    name = "smoke",
                    deviation = {0.1, 0.1},
                    frequency = 3
                }
            }
        },
        input_fluid_box =
        {
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 200,
            pipe_connections =
            {
                { direction = defines.direction.west, position = {-1, 0}},
                { direction = defines.direction.east, position = {1, 0}},
                { direction = defines.direction.south, position = {0, 1}}
            }
        },
        energy_usage = "250kW",
        graphics_set =
        {
            animation =
            {
                north =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            width = 173,
                            height = 188,
                            line_length = 4,
                            shift = util.by_pixel(2.75, 0.5),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            scale = 0.75
                        },
                        {
                            priority = "high",
                            width = 217,
                            height = 150,
                            line_length = 4,
                            shift = util.by_pixel(23.75, -1),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N-shadow.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            draw_as_shadow = true,
                            scale = 0.75
                        }
                    }
                },
                east =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            width = 185,
                            height = 168,
                            line_length = 4,
                            shift = util.by_pixel(2.75, 1),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            scale = 0.75
                        },
                        {
                            priority = "high",
                            width = 185,
                            height = 128,
                            line_length = 4,
                            shift = util.by_pixel(13.75, 0.5),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E-shadow.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            draw_as_shadow = true,
                            scale = 0.75
                        }
                    }
                },
                south =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            width = 174,
                            height = 174,
                            line_length = 4,
                            shift = util.by_pixel(0.5, -0.5),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            scale = 0.75
                        },
                        {
                            priority = "high",
                            width = 174,
                            height = 137,
                            line_length = 4,
                            shift = util.by_pixel(11, 2.75),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S-shadow.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            draw_as_shadow = true,
                            scale = 0.75
                        }
                    }
                },
                west =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            width = 180,
                            height = 176,
                            line_length = 4,
                            shift = util.by_pixel(-1.5, 0),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            scale = 0.75
                        },
                        {
                            priority = "high",
                            width = 176,
                            height = 130,
                            line_length = 4,
                            shift = util.by_pixel(7.5, 1),
                            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W-shadow.png",
                            frame_count = 32,
                            animation_speed = 0.5,
                            run_mode = forward_then_backward(),
                            draw_as_shadow = true,
                            scale = 0.75
                        }
                    }
                }
            }
        },
        monitor_visualization_tint = {78, 173, 255},
        vector_to_place_result = {0, -1.7},
        fast_replaceable_group = "mining-drill",
        
        circuit_connector = circuit_connector_definitions["burner-mining-drill"],
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }
})
data:extend({
    {
        type = "assembling-machine",
        name = "evaporator",
        icons = du.icons("evaporator"),
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "evaporator"},
        fast_replaceable_group = "evaporator",
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        match_animation_speed_to_activity = false,
        crafting_categories = {"evaporating"},
        crafting_speed = 1,
        energy_source = {type = "void"},
        energy_usage = "1W",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = {0.1, -0.0},
                    west_position = {0.1, -0.0},
                    south_position = {0.1, -0.0},
                    east_position = {0.1, -0.0},
                    animation = {
                        layers = {
                            {
                                filename = "__pycoalprocessinggraphics__/graphics/entity/evaporator/evaporator-anim.png",
                                frame_count = 80,
                                line_length = 10,
                                width = 168,
                                height = 177,
                                animation_speed = 0.25,
                            },
                            {
                                filename = "__pycoalprocessinggraphics__/graphics/entity/evaporator/evaporator-anim-glow.png",
                                frame_count = 80,
                                line_length = 10,
                                width = 168,
                                height = 177,
                                animation_speed = 0.25,
                                draw_as_glow = true,
                            },
                        }
                    }
                }
            },
            animation = {
                layers = {
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/evaporator/evaporator-off.png",
                        width = 168,
                        height = 177,
                        frame_count = 1,
                        shift = {0.1, 0.0},
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/evaporator/evaporator-off-glow.png",
                        width = 168,
                        height = 177,
                        frame_count = 1,
                        shift = {0.1, 0.0},
                        draw_as_glow = true,
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {2.0, 0.0}, direction = defines.direction.east}}
            },
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {0.0, 2.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 0.0}, direction = defines.direction.west}}
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {0.0, -2.0}, direction = defines.direction.north}}
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/evaporator.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/evaporator.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }
})
data:extend({
    {
        type = "assembling-machine",
        name = "blast-furnace",
        icons = du.icons("blast-furnace"),
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "blast-furnace"},
        fast_replaceable_group = "blast-furnace",
        max_health = 300,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        crafting_categories = {"smelting", "blasting"},
        crafting_speed = 4,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        energy_source = {
            effectivity = 0.5,
            type = "burner",
            fuel_categories = {"chemical"},
            fuel_inventory_size = 1,
            emissions_per_minute = {pollution=24},
        },
        energy_usage = "12MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(0, -80),
                    west_position = util.by_pixel(0, -80),
                    south_position = util.by_pixel(0, -80),
                    east_position = util.by_pixel(0, -80),
                    animation = {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/on.png",
                        frame_count = 40,
                        line_length = 10,
                        width = 224,
                        height = 320,
                        animation_speed = 0.5
                    }
                },
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(0, -80),
                    west_position = util.by_pixel(0, -80),
                    south_position = util.by_pixel(0, -80),
                    east_position = util.by_pixel(0, -80),
                    animation = {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/g.png",
                        frame_count = 40,
                        line_length = 10,
                        width = 224,
                        height = 320,
                        animation_speed = 0.5,
                        draw_as_glow = true,
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/bottom.png",
                        width = 224,
                        height = 32,
                        frame_count = 1,
                        shift = util.by_pixel(0, 96),
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/off.png",
                        width = 224,
                        height = 320,
                        frame_count = 1,
                        shift = util.by_pixel(0, -80),
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/sh.png",
                        width = 288,
                        height = 224,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(32, -0),
                    },
                    {
                        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/ao.png",
                        width = 320,
                        height = 384,
                        frame_count = 1,
                        shift = util.by_pixel(16, -48),
                    },
                },
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {3.0, 1.0}, direction = defines.direction.east}}
            },
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {3.0, -1.0}, direction = defines.direction.east}}
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-3.0, 1}, direction = defines.direction.west}}
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(), pipe_picture = assembler2pipepictures(),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-3.0, -1}, direction = defines.direction.west}}
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/hpf.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/hpf.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }
})
data:extend({
    {
        type = "assembling-machine",
        name = "incinerator",
        icons = du.icons("incinerator"),
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "incinerator"},
        max_health = 300,
        corpse = "big-remnants",
        crafting_categories = {"incinerating"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution"},
        resistances = {
            {
                type = "fire",
                percent = 70
            }
        },
        collision_box = {{-1.49, -1.49}, {1.49, 1.49}},
        selection_box = {{-1.53, -1.53}, {1.53, 1.53}},
        fluid_boxes = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes),
        energy_source = {
            type = "burner",
            effectivity = 0.5,
            fuel_categories = {"chemical"},
            fuel_inventory_size = 1,
            emissions_per_minute = {pollution=30},
            smoke = {
                {
                    name = "light-smoke",
                    north_position = {-1.2, -2},
                    east_position = {-0.75, -2},
                    frequency = 5 / 32,
                    starting_vertical_speed = 0.08,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                },
                {
                    name = "light-smoke",
                    north_position = {1.2, -2},
                    east_position = {1.2, -2},
                    frequency = 5 / 32,
                    starting_vertical_speed = 0.08,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                }
            },
        },
        energy_usage = "1MW",
        graphics_set = {
            animation = {
                north = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/gas-turbinemk01/gasturbinemk01_horizontal.png",
                    width = 131,
                    height = 288,
                    frame_count = 25,
                    line_length = 5,
                    shift = {0.5, -3.0},
                    animation_speed = 0.8
                },
                east = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/gas-turbinemk01/gasturbinemk01_vertical.png",
                    width = 128,
                    height = 288,
                    frame_count = 25,
                    line_length = 5,
                    shift = {0.5, -3.0},
                    animation_speed = 0.8
                },
                south = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/gas-turbinemk01/gasturbinemk01_horizontal.png",
                    width = 131,
                    height = 288,
                    frame_count = 25,
                    line_length = 5,
                    shift = {0.5, -3.0},
                    animation_speed = 0.8
                },
                west = {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/gas-turbinemk01/gasturbinemk01_vertical.png",
                    width = 128,
                    height = 288,
                    frame_count = 25,
                    line_length = 5,
                    shift = {0.5, -3.0},
                    animation_speed = 0.8
                },
            }
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/gasturbinemk01.ogg"},
            idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/gasturbinemk01.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
})

local burner_lab = table.deepcopy(data.raw.lab.lab)
burner_lab.name = "burner-lab"
burner_lab.minable.result = "burner-lab"
burner_lab.icons = du.icons("burner-lab")
burner_lab.energy_source = {
    type="burner",
    fuel_inventory_size=1,
    fuel_categories = {"chemical"},
    smoke = {
        {
            name = "smoke",
            frequency = 12,
            position = util.by_pixel(0, -32),
            deviation = util.by_pixel(8,8),
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
        }
    }
}
data:extend({burner_lab})

data.raw.lab["burner-lab"].inputs = {
    "environmental-science-pack",
    "mechanical-science-pack",
    "electromagnetic-science-pack",
}

data.raw.lab.lab.inputs = {
    "environmental-science-pack",
    "mechanical-science-pack",
    "electromagnetic-science-pack",
    "automation-science-pack",
}

data:extend({
    {
        type = "assembling-machine",
        name = "fabricator-1",
        icons = du.icons("__Krastorio2Assets__/icons/entities/advanced-assembling-machine.png", true),
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "fabricator-1"},
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {-1.5, -1.5}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {0.5, -1.5}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-0.5, 1.5}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {1.5, 1.5}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
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
        collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
        selection_box = {{-2, -2}, {2, 2}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.9, -1.9}, {1.9, 1.9}},
        fast_replaceable_group = "fabricator",
        graphics_set = {
            animation =
            {
                layers =
                {
                    {
                        filename = "__Krastorio2Assets__/buildings/advanced-assembling-machine/advanced-assembling-machine.png",
                        priority = "high",
                        width = 320,
                        height = 320,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.4,
                        repeat_count = 32,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/advanced-assembling-machine/advanced-assembling-machine-w1.png",
                        priority = "high",
                        width = 128,
                        height = 144,
                        frame_count = 32,
                        line_length = 8,
                        shift = util.by_pixel(-26, 8),
                        scale = 0.4,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/advanced-assembling-machine/advanced-assembling-machine-w2.png",
                        priority = "high",
                        width = 37,
                        height = 25,
                        frame_count = 8,
                        line_length = 4,
                        shift = util.by_pixel(5, -38),
                        scale = 0.4,
                        repeat_count = 4,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/advanced-assembling-machine/advanced-assembling-machine-sh.png",
                        priority = "high",
                        width = 346,
                        height = 302,
                        frame_count = 1,
                        line_length = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(16, 0),
                        scale = 0.4,
                        repeat_count = 32,
                    },
                }
            },
        },
        crafting_categories = {"crafting", "crafting-with-fluid", "advanced-crafting", "fabricating"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution", "speed"},
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=0}
        },
        energy_usage = "675kW",
    }
})

data:extend({
    {
        type = "assembling-machine",
        name = "electrolyzer",
        icons = du.icons("__Krastorio2Assets__/icons/entities/electrolysis-plant.png", true),
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "electrolyzer"},
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {-1, -2}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {1, -2}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-2, 0}, direction=defines.direction.west }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-1, 2}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {1, 2}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {2, 0}, direction=defines.direction.east }},
                secondary_draw_orders = { north = -1 }
            },
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
        collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.9, -1.9}, {1.9, 1.9}},
        fast_replaceable_group = "electrolyzer",
        graphics_set = {
            animation =
            {
                layers =
                {
                    {
                        filename = "__Krastorio2Assets__/buildings/electrolysis-plant/electrolysis-plant.png",
                        priority = "high",
                        width = 380,
                        height = 380,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.5,
                        repeat_count = 12,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/electrolysis-plant/electrolysis-plant-work.png",
                        priority = "high",
                        width = 380,
                        height = 380,
                        frame_count = 12,
                        line_length = 6,
                        scale = 0.5,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/electrolysis-plant/electrolysis-plant-work-light.png",
                        priority = "high",
                        width = 380,
                        height = 380,
                        frame_count = 12,
                        line_length = 6,
                        scale = 0.5,
                        draw_as_light = true,
                    },
                    {
                        filename = "__Krastorio2Assets__/buildings/electrolysis-plant/electrolysis-plant-sh.png",
                        priority = "high",
                        width = 380,
                        height = 380,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.5,
                        repeat_count = 12,
                        draw_as_shadow = true,
                    },
                }
            },
        },
        crafting_categories = {"electrolysis"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution", "speed"},
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=0}
        },
        energy_usage = "6MW",
    }
})
local function algae_plant_horizontal_anim()
    return {
        layers = {
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-back-layer.png",
                width = 320,
                height = 192,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-front-layer.png",
                width = 320,
                height = 192,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
        }
    }
end

local function algae_plant_vertical_anim()
    return {
        layers = {
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-vertical-back-layer.png",
                width = 192,
                height = 320,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-vertical-mid-layer-2.png",
                width = 192,
                height = 320,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-vertical-mid-layer.png",
                width = 192,
                height = 320,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
            {
                filename = "__GuG2__/graphics/entity/algae-plant/mspaint-vertical-front-layer.png",
                width = 192,
                height = 320,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
            },
        }
    }
end

data:extend({
    {
        selectable_in_game = false,
        type = "solar-panel",
        name = "algae-plant-energy-source",
        icon = "__base__/graphics/icons/solar-panel.png",
        flags = {"not-on-map", "not-deconstructable", "not-blueprintable", "not-in-kill-statistics"},
        max_health = 2000,
        collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selection_box = {{-0.5, -1.5}, {0.5, 0.5}},
        no_fix = true,
        collision_mask = {layers = {}},
        energy_source =
        {
          type = "electric",
          usage_priority = "solar"
        },
        production = "10kW",
        impact_category = "glass",
    }
})
data:extend({
    {
        selectable_in_game = false,
        type = "electric-pole",
        name = "internal-energy-spreading-pole",
        icon = "__base__/graphics/icons/small-electric-pole.png",
        quality_indicator_scale = 0.75,
        flags = {"not-on-map", "not-deconstructable", "not-blueprintable", "not-in-kill-statistics"},
        max_health = 2000,
        no_fix = true,
        collision_mask = {layers = {}},
        collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        maximum_wire_distance = 0,
        supply_area_distance = 2,
        connection_points = data.raw["electric-pole"]["small-electric-pole"].connection_points,
        impact_category = "wood",
        picture = util.empty_sprite(),
    }
})
data:extend({
    {
        type = "assembling-machine",
        name = "simple-algae-plant",
        icons = du.icons("simple-algae-plant"),
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "simple-algae-plant"},
        max_health = 400,
        corpse = "assembling-machine-3-remnants",
        dying_explosion = "assembling-machine-3-explosion",
        created_effect = composite_trigger(),
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {-1, -1}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {1, -1}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-1, 1}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {1, 1}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
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
        collision_box = {{-2.3, -1.3}, {2.3, 1.3}},
        selection_box = {{-2.5, -1.5}, {2.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fast_replaceable_group = "algae-plant",
        graphics_set = {
            animation =
            {
                north = algae_plant_horizontal_anim(),
                east = algae_plant_vertical_anim(),
                south = algae_plant_horizontal_anim(),
                west = algae_plant_vertical_anim(),
            },
        },
        crafting_categories = {"algae-growing"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution", "speed"},
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=0},
            drain = "2kW",
        },
        energy_usage = "20kW",
    }
})
data:extend({
    {
        type = "assembling-machine",
        name = "smart-farm",
        icons = du.icons("smart-farm"),
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "smart-farm"},
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
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {-1, -2}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {1, -2}, direction=defines.direction.north }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-2, 0}, direction=defines.direction.west }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {-1, 2}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {1, 2}, direction=defines.direction.south }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {2, 0}, direction=defines.direction.east }},
                secondary_draw_orders = { north = -1 }
            },
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
        collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box = {{-1.9, -1.9}, {1.9, 1.9}},
        fast_replaceable_group = "electrolyzer",
        graphics_set = {
            animation =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/smart-farm/chemical-stager-hr.png",
                        priority = "high",
                        width = 320,
                        height = 320,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.5,
                    },
                    {
                        filename = "__GuG2__/graphics/entity/smart-farm/chemical-stager-hr-shadow.png",
                        priority = "high",
                        width = 460,
                        height = 340,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.5,
                        shift = util.by_pixel(-70, 0),
                        draw_as_shadow = true,
                    },
                }
            },
        },
        crafting_categories = {"farming"},
        crafting_speed = 1,
        module_slots = 2,
        allowed_effects = {"consumption", "pollution", "speed"},
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=0}
        },
        energy_usage = "120kW",
    }
})

data:extend({
    {
        type = "item",
        name = "fabricator-1",
        icons = du.icons("__Krastorio2Assets__/icons/entities/advanced-assembling-machine.png", true),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "fabricator-1"
    },
    {
        type = "item",
        name = "electrolyzer",
        icons = du.icons("__Krastorio2Assets__/icons/entities/electrolysis-plant.png", true),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "electrolyzer"
    },
    {
        type = "item",
        name = "burner-lab",
        icons = du.icons("burner-lab"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "burner-lab"
    },
    {
        type = "item",
        name = "lab",
        icons = du.icons{mod="base",name="lab"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "lab"
    },
    {
        type = "item",
        name = "incinerator",
        icons = du.icons("incinerator"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "incinerator"
    },
    {
        type = "item",
        name = "lv-generator",
        icons = du.icons("lv-generator"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "lv-generator"
    },
    {
        type = "item",
        name = "steam-crusher",
        icons = du.icons("steam-crusher"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "steam-crusher",
    },
    {
        type = "item",
        name = "burner-chemical-plant",
        icons = du.icons("burner-chemical-plant"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "burner-chemical-plant",
    },
    {
        type = "item",
        name = "small-tank",
        icons = du.icons("small-tank"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "small-tank",
    },
    {
        type = "item",
        name = "tube-boiler",
        icons = du.icons("tube-boiler"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "tube-boiler",
    },
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
        stack_size = 50,
        subgroup = "inserter",
        order = "a",
        place_result = "mechanical-inserter",
    },
    {
        type = "item",
        name = "steam-inserter",
        icons = du.icons("steam-inserter"),
        subgroup = "inserter",
        order = "a",
        stack_size = 50,
        place_result = "steam-inserter"
    },
    {
        type = "item",
        name = "scale-boiler",
        icons = du.icons{mod="base", name="boiler"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "scale-boiler"
    },
    {
        type = "item",
        name = "smithy",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/advanced-foundry-mk01.png"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "smithy"
    },
    {
        type = "item",
        name = "glassworks",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/glassworks-mk01.png"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "glassworks"
    },
    {
        type = "item",
        name = "destructive-distillation-tower",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/distilator.png"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "destructive-distillation-tower"
    },
    {
        type = "item",
        name = "counterflow-heat-exchanger",
        icons = du.icons{discard=true, name="__pycoalprocessinggraphics__/graphics/icons/classifier.png"},
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
        type = "item",
        name = "forestry",
        icons = du.icons("forestry"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "soil-extractor",
        icons = du.icons("soil-extractor"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "soil-extractor"
    },
    {
        type = "item",
        name = "fluid-mining-drill",
        icons = du.icons("fluid-mining-drill"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "fluid-mining-drill"
    },
    {
        type = "item",
        name = "evaporator",
        icons = du.icons("evaporator"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "evaporator"
    },
    {
        type = "item",
        name = "blast-furnace",
        icons = du.icons("blast-furnace"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "blast-furnace"
    },
    {
        type = "item",
        name = "pine-sapling",
        icons = du.icons("pine-sapling"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "forestry-pine"
    },
    {
        type = "item",
        name = "oak-sapling",
        icons = du.icons("oak-sapling"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        --place_result = "forestry-pine"
    },
    {
        type = "item",
        name = "smart-farm",
        icons = du.icons("smart-farm"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "smart-farm"
    },
    {
        type = "item",
        name = "simple-algae-plant",
        icons = du.icons("simple-algae-plant"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "simple-algae-plant"
    },
    {
        type = "recipe-category",
        name = "algae-growing"
    },
    {
        type = "recipe-category",
        name = "farming"
    },
    {
        type = "recipe-category",
        name = "electrolysis"
    },
    {
        type = "recipe-category",
        name = "extracting"
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
    {
        type = "recipe-category",
        name = "blasting"
    },
    {
        type = "recipe-category",
        name = "bioreacting"
    },
    {
        type = "recipe-category",
        name = "evaporating"
    },
    {
        type = "recipe-category",
        name = "machining"
    },
    {
        type = "recipe-category",
        name = "fabricating"
    },
})