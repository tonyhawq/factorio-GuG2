local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local du = require("dutil")

data:extend({
    {
        type = "assembling-machine",
        name = "processor-1",
        icons = du.alias("processor-1"),
        flags = {"placeable-neutral", "placeable-player", "player-creation"}, ---@diagnostic disable-line
        minable = {mining_time = 0.2, result = "processor-1"},
        max_health = 350,
        corpse = "assembling-machine-2-remnants",
        dying_explosion = "assembling-machine-2-explosion",
        alert_icon_shift = util.by_pixel(-3, -12),
        resistances =
        {
            {
                type = "fire",
                percent = 70
            }
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", position = {0, -3}, direction=defines.direction.north }}, ---@diagnostic disable-line
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 100,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", position = {0, 3}, direction=defines.direction.south }}, ---@diagnostic disable-line
                secondary_draw_orders = { north = -1 }
            },
        },
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        damaged_trigger_effect = hit_effects.entity(),
        graphics_set = {
            animation =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/entity/central-processor.png",
                        priority = "high",
                        width = 224,
                        height = 224,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(0, 0),
                    },
                }
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
                    filename = "__base__/sound/assembling-machine-t2-1.ogg",
                    volume = 0.45
                }
            },
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        crafting_categories = {"processing"},
        
        crafting_speed = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=3},
            drain = "1MW",
        },
        energy_usage = "74MW",
    },
})

local computer = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
computer.name = "computer-1"
computer.icons = du.alias("computer-1")
computer.crafting_categories = {"computing"}
computer.minable.result = "computer-1"
computer.next_upgrade = nil
computer.fast_replaceable_group = "computer"
computer.selection_box = {{-2.5,-2.5},{2.5,2.5}}
computer.collision_box = {{-2.3,-2.3},{2.3,2.3}}
computer.fluid_boxes = {
    {
        volume = 100,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
            { flow_direction = "input", direction = defines.direction.south, position = {0, 2} }
        },
        production_type = "input",
    },
    {
        volume = 100,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
            { flow_direction = "output", direction = defines.direction.north, position = {0, -2} }
        },
        production_type = "output",
    },
}
computer.working_sound = {
    main_sounds = {
        sound = {
            filename = "__base__/sound/combinator.ogg",
            volume = 1,
        },
        fade_in_ticks = 15,
        fade_out_ticks = 15,
    },
    idle_sound = {
        variations = {
            {
                filename = "__base__/sound/accumulator-working.ogg",
                volume = 0.25,
            },
            {
                filename = "__base__/sound/accumulator-working-01.ogg",
                volume = 0.25,
            },
            {
                filename = "__base__/sound/accumulator-working-02.ogg",
                volume = 0.25,
            },
            {
                filename = "__base__/sound/accumulator-working-03.ogg",
                volume = 0.25,
            },
            {
                filename = "__base__/sound/accumulator-working-04.ogg",
                volume = 0.25,
            },
        }
    }
}
computer.energy_source =
{
    type = "electric",
    usage_priority = "secondary-input",
}
computer.energy_usage = "200kW"
computer.graphics_set = {
    animation = {
        layers = {
            {
                filename = "__GuG2__/graphics/icons/se/entity/computer/supercomputer-1.png",
                width = 320,
                height = 384,
                scale = 0.5,
                shift = util.by_pixel(0, -16),
            },
            {
                filename = "__GuG2__/graphics/icons/se/entity/computer/supercomputer-shadow.png",
                width = 264,
                height = 234,
                scale = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(96, 16),
            },
        }
    },
    working_visualisations =
    {
        {
            fadeout = true,
            effect = "none",
            animation =
            {
                layers =
                {
                    {
                        filename = "__GuG2__/graphics/icons/se/entity/computer/supercomputer-1-working.png",
                        priority = "extra-high",
                        width = 80,
                        height = 258,
                        frame_count = 9,
                        scale = 0.5,
                        shift = util.by_pixel(0, -24)
                    },
                }
            }
        },
    },
}
data:extend({computer})

data:extend({
    {
        type = "recipe-category",
        name = "processing"
    },
    {
        type = "recipe-category",
        name = "computing"
    }
})

data:extend({
    {
        type = "item",
        name = "processor-1",
        icons = du.icons("__GuG2__/graphics/entity/central-processor.png", 224, true),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1,
        place_result = "processor-1",
    },
    {
        type = "item",
        name = "computer-1",
        icons = du.alias("computer-1"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "computer-1",
    },
    {
        type = "item",
        name = "dead-process",
        icons = du.alias("dead-process"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1
    },
    {
        type = "item",
        name = "process",
        icons = du.alias("process"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1
    },
    {
        type = "item",
        name = "thread",
        icons = du.icons("thread"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1
    },
    {
        type = "item",
        name = "coroutine",
        icons = du.icons("coroutine"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 200
    },
    {
        type = "item",
        name = "program-garbage",
        icons = du.icons("program-garbage"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "program",
        icons = du.icons("program"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "io-expander",
        icons = du.icons("program"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "float-up",
        icons = du.icons("float-up"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "float-down",
        icons = du.icons("float-down"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "float-nan",
        icons = du.icons("float-nan"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "float-inf",
        icons = du.icons("float-inf"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "float-double-e",
        icons = du.icons("float-double-e"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "memories",
        icons = du.icons("memories"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "priority-interrupt",
        icons = du.icons("priority-interrupt"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "deferred-interrupt",
        icons = du.icons("deferred-interrupt"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
})

data:extend({
    {
        type = "fluid",
        name = "cpu-time",
        default_temperature = 15,
        base_color = {r=0.4, g=0.2, b=0.8},
        flow_color = {r=0.2, g=0.2, b=0.2},
        icons = du.icons("cpu-time"),
        order = "a[fluid]-j[sludge]"
    },
    {
        type = "fluid",
        name = "streaming-data",
        default_temperature = 15,
        base_color = {r=0.1, g=1, b=0.4},
        flow_color = {r=0.2, g=0.2, b=0.2},
        icons = du.icons("streaming-data"),
        order = "a[fluid]-j[sludge]"
    },
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "processing", ---@diagnostic disable-line
        name = "revive-process-1",
        icons = du.alias("process"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="dead-process", amount=1},
        },
        results = {
            {type="item", name="process", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "cpu-time",
        icons = du.icons("cpu-time"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 3,
        ingredients = {
            {type="item", name="process", amount=1},
        },
        results = {
            {type="item", name="dead-process", amount=1},
            {type="fluid", name="cpu-time", amount=2000},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "memories",
        icons = du.icons("memories"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
            {type="fluid", name="cpu-time", amount=500},
        },
        results = {
            {type="item", name="memories", amount=500},
            {type="item", name="dead-process", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "interrupts",
        icons = du.icons():add_corner{name="priority-interrupt", corner=du.left_bottom}:add_corner{name="deferred-interrupt", corner=du.right_top},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="cpu-time", amount=100},
        },
        results = {
            {type="item", name="priority-interrupt", amount=5},
            {type="item", name="deferred-interrupt", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "program",
        icons = du.icons("program"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=5},
            {type="item", name="memories", amount=50},
            {type="item", name="priority-interrupt", amount=4},
            {type="item", name="deferred-interrupt", amount=8},
            {type="fluid", name="cpu-time", amount=100},
        },
        results = {
            {type="item", name="program", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "program-2",
        icons = du.icons("program"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=5},
            {type="item", name="memories", amount=50},
            {type="item", name="priority-interrupt", amount=8},
            {type="item", name="deferred-interrupt", amount=6},
            {type="fluid", name="cpu-time", amount=100},
        },
        results = {
            {type="item", name="program", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "threading",
        icons = du.icons("thread"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
        },
        results = {
            {type="item", name="thread", amount=32},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "thread-joining",
        icons = du.icons():add_corner{name="thread",corner=du.left_top}:add_corner{name="thread", corner=du.right_top}:add_corner{name=du.alias"dead-process":name(), discard=true, corner=du.middle},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="thread", amount=32},
        },
        results = {
            {type="item", name="dead-process", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "coroutine-spawning",
        icons = du.icons("coroutine"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="deferred-interrupt", amount=1},
            {type="item", name="thread", amount=1},
        },
        results = {
            {type="item", name="coroutine", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "interrupt-scheduling",
        icons = du.icons("priority-interrupt"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="deferred-interrupt", amount=1},
            {type="item", name="coroutine", amount=1},
            {type="item", name="thread", amount=1},
        },
        results = {
            {type="item", name="priority-interrupt", amount=1},
            {type="item", name="thread", amount=1},
        }
    }
})
local FLOP_batch_size = 10
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "FLOP",
        icons = du.icons("FLOP"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
        },
        results = {
            {type="item", name="dead-process",   amount=1},
            {type="item", name="float-nan",      amount=10 * FLOP_batch_size},
            {type="item", name="float-up",       amount= 6 * FLOP_batch_size},
            {type="item", name="float-down",     amount= 3 * FLOP_batch_size},
            {type="item", name="float-inf",      amount= 2 * FLOP_batch_size},
            {type="item", name="float-double-e", amount= 1 * FLOP_batch_size},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "nan-solving",
        icons = du.icons():add_corner{name="float-nan",corner=du.left_top}:add_corner{name="memories", corner=du.right_bottom}:add_corner{name="arrow-135", corner=du.middle},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-nan", amount=1},
            {type="item", name="float-inf", amount=1},
        },
        results = {
            {type="item", name="memories", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "nan-unboxing",
        icons = du.icons("float-nan"):add_corner{name="float-up",corner=du.left_top}:add_corner{name="float-inf",corner=du.right_top}:add_corner{name="float-down",corner=du.left_bottom},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-nan", amount=3},
        },
        results = {
            {type="item", name="float-up", amount=1},
            {type="item", name="float-down", amount=1},
            {type="item", name="float-inf", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "finite-exception-handling",
        icons = du.icons("float-inf"):add_corner("float-double-e"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-inf", amount=2},
            {type="item", name="float-double-e", amount=1},
        },
        results = {
            {type="item", name="float-down", amount=2},
            {type="item", name="float-nan", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "positive-exception-handling",
        icons = du.icons("float-up"):add_corner("float-double-e"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-up", amount=2},
            {type="item", name="float-double-e", amount=2},
        },
        results = {
            {type="item", name="float-down", amount=3},
            {type="item", name="float-nan", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "positive-exception-generation",
        icons = du.icons("float-double-e"):add_corner("float-up"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-nan", amount=2},
            {type="item", name="float-inf", amount=1},
        },
        results = {
            {type="item", name="float-double-e", amount=1},
            {type="item", name="float-up", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "computing", ---@diagnostic disable-line
        name = "positive-negation",
        icons = du.icons("float-nan"):add_corner{name="float-up", corner=du.left_top}:add_corner{name="float-down", corner=du.right_top},
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="float-up", amount=1},
            {type="item", name="float-down", amount=1},
        },
        results = {
            {type="item", name="float-nan", amount=1},
            {type="item", name="float-inf", amount=1},
        }
    }
})

-- weighted neurons ->
-- transformer program ->
-- conscious program
-- -> AI limiter ->
-- enslaved program

-- quiescent reality
-- evanescent reality
-- subsistent reality
-- abstracted reality
-- affluent reality
-- lingering reality
-- vanishing reality

-- abstraction point - final item
