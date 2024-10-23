local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local du = require("dutil")

data:extend({
    {
        type = "assembling-machine",
        name = "central-processor",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"}, ---@diagnostic disable-line
        minable = {mining_time = 0.2, result = "central-processor"},
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
                pipe_connections = {{ flow_direction="input", position = {0, -3}, direction=defines.direction.south }}, ---@diagnostic disable-line
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
        crafting_categories = {"central-processor"},
        
        crafting_speed = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution=3}
        },
        energy_usage = "20MW",
    },
})

local computer = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
computer.name = "computer-1"
computer.crafting_categories = {"basic-computing"}
computer.minable.result = "computer-1"
computer.next_upgrade = nil
computer.fast_replaceable_group = "computer"
data:extend({computer})

data:extend({
    {
        type = "recipe-category",
        name = "central-processor"
    },
    {
        type = "recipe-category",
        name = "basic-computing"
    }
})

data:extend({
    {
        type = "item",
        name = "central-processor",
        icons = du.icons("__GuG2__/graphics/entity/central-processor.png", 224, true),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1,
        place_result = "central-processor",
    },
    {
        type = "item",
        name = "computer-1",
        icons = du.icons("computer"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "computer-1",
    },
    {
        type = "item",
        name = "dead-process",
        icons = du.icons("dead-process"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 1
    },
    {
        type = "item",
        name = "process",
        icons = du.icons("process"),
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
        icons = du.icons("io-expander"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "up-float",
        icons = du.icons("up-float"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "nan-float",
        icons = du.icons("nan-float"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50
    },
    {
        type = "item",
        name = "down-float",
        icons = du.icons("down-float"),
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
        category = "central-processor", ---@diagnostic disable-line
        name = "revive-process-1",
        icons = du.icons("process"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 10,
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "cpu-time",
        icons = du.icons("cpu-time"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "memories",
        icons = du.icons("thread").tint(),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "interrupts",
        icons = du.icons("interrupts"),
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "program",
        icons = du.icons("program"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="memories", amount=100},
            {type="item", name="priority-interrupt", amount=100},
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "io-expander",
        icons = du.icons("io-expander"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="memories", amount=100},
            {type="item", name="deferred-interrupt", amount=100},
        },
        results = {
            {type="item", name="io-expander", amount=5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "basic-computing", ---@diagnostic disable-line
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
        category = "basic-computing", ---@diagnostic disable-line
        name = "thread-joining",
        icons = du.icons("thread-joining"),
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
        category = "basic-computing", ---@diagnostic disable-line
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
        category = "basic-computing", ---@diagnostic disable-line
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "basic-computing", ---@diagnostic disable-line
        name = "floating-point-operation",
        icons = du.icons("floating-points"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
            {type="item", name="memories", amount=1},
        },
        results = {
            {type="item", name="up-float", amount=1, probability=0.33},
            {type="item", name="nan-float", amount=1, probability=0.33},
            {type="item", name="down-float", amount=1, probability=0.33},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "basic-computing", ---@diagnostic disable-line
        name = "float-up-folding",
        icons = du.icons("up-float"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
            {type="item", name="up-float", amount=1},
        },
        results = {
            {type="item", name="nan-float", amount=1, probability=0.33},
            {type="item", name="down-float", amount=1, probability=0.66},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        category = "basic-computing", ---@diagnostic disable-line
        name = "float-down-folding",
        icons = du.icons("down-float"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="item", name="process", amount=1},
            {type="item", name="down-float", amount=1},
            {type="item", name="nan-float", amount=1},
        },
        results = {
            {type="item", name="nan-float", amount=2, probability=0.66},
            {type="item", name="down-float", amount=1, probability=0.33},
        }
    }
})

-- quiescent reality
-- evanescent reality
-- subsistent reality
-- abstracted reality
-- affluent reality
-- lingering reality
-- vanishing reality

-- abstraction point - final item
