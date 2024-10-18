local du = require("dutil")

data:extend({
    {
        type = "tile",
        name = "cleanroom-tile",
        needs_correction = false,
        check_collision_with_entities = true,
        minable = {mining_time = 0.1, result = "cleanroom-tile"},
        collision_mask = {
            CUTIL.layer("cleanroom-tile"), ---@diagnostic disable-line
        },
        pollution_absorption_per_second = 1,
        walking_speed_modifier = 1,
        layer = 207,
        decorative_removal_probability = 1,
        variants =
        {
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
            inner_corner =
            {
                picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile-inner-corner.png",
                count = 8,
            },
            outer_corner =
            {
                picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile-outer-corner.png",
                count = 8,
            },
            side =
            {
                picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile-side.png",
                count = 8,
            },
            u_transition =
            {
                picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile-u.png",
                count = 1,
            },
            o_transition =
            {
                picture = "__GuG2__/graphics/terrain/cleanroom-tile/tile-o.png",
                count = 8,
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
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
            condition = { "water-tile" }
        }
    },
})