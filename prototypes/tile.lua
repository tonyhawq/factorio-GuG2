local du = require("dutil")

data:extend({
    {
        type = "collision-layer",
        name = "cleanroom_tile"    
    }
})

data:extend({
    {
        type = "tile",
        name = "cleanroom-tile",
        needs_correction = false,
        check_collision_with_entities = true,
        minable = {mining_time = 0.1, result = "cleanroom-tile"},
        collision_mask = {
            layers = {
                cleanroom_tile = true
            }
        },
        walking_speed_modifier = 1,
        layer = 207,
        decorative_removal_probability = 1,
        variants =
        {
            empty_transitions = true,
            main =
            {
                {
                    picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile1.png",
                    count = 16,
                    size = 1,
                },
                {
                    picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile2.png",
                    count = 5,
                    size = 2,
                    probability = 0.05,
                },
                {
                    picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile4.png",
                    count = 1,
                    size = 4,
                    probability = 0.02,
                },
            },
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-1.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-2.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-3.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-4.ogg",
                volume = 1.2
            }
        },
        map_color={r=200, g=200, b=200},
        vehicle_friction_modifier = 1,
    },
})
data:extend({
    {
        type = "item",
        name = "cleanroom-tile",
        icons = du.icons("cleanroom-tile"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_as_tile =
        {
            result = "cleanroom-tile",
            condition_size = 1,
            condition = {
                layers = {water_tile = true},
            },
        }
    },
})