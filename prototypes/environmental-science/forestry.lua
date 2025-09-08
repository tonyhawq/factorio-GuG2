local du = require("dutil")

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "tree-seeds-1",
        icons = du.icons("tree-seeds"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="log", amount=1},
        },
        results = {
            {type="item", name="tree-seeds", amount=3},
        }
    },
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "sapling-1",
        icons = du.icons("sapling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="planter-box", amount=1},
            {type="item", name="soil", amount=3},
            {type="item", name="tree-seeds", amount=3},
        },
        results = {
            {type="item", name="sapling", amount=1},
        }
    },
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "forestry-generic-growing", ---@diagnostic disable-line
        name = "tree-growing-1",
        icons = du.icons("tree-growing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 160,
        ingredients = {
            {type="item", name="sapling", amount=16},
            {type="fluid", name="water", amount=480},
        },
        results = {
            {type="item", name="log", amount=80},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "forestry-generic-growing", ---@diagnostic disable-line
        name = "tree-tapping-1",
        icons = du.icons("tree-growing"):add_corner("sap"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 160,
        ingredients = {
            {type="item", name="sapling", amount=16},
            {type="item", name="screws", amount=24},
            {type="item", name="pipe", amount=4},
            {type="fluid", name="water", amount=480},
        },
        results = {
            {type="item", name="sap", amount=40},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "pine-sapling-1",
        icons = du.icons("pine-sapling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="planter-box", amount=1},
            {type="item", name="soil", amount=3},
            {type="item", name="pinecone", amount=1},
        },
        results = {
            {type="item", name="pine-sapling", amount=1},
        }
    },
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "forestry-pine-growing", ---@diagnostic disable-line
        name = "pine-tree-growing-1",
        icons = du.icons("pine-tree-growing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 160,
        ingredients = {
            {type="item", name="pine-sapling", amount=16},
            {type="fluid", name="water", amount=480},
        },
        results = {
            {type="item", name="log", amount=80},
            {type="item", name="pinecone", amount=24},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "forestry-pine-growing", ---@diagnostic disable-line
        name = "pine-tree-tapping-1",
        icons = du.icons("pine-tree-growing"):add_corner("sap"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 160,
        ingredients = {
            {type="item", name="pine-sapling", amount=16},
            {type="item", name="screws", amount=24},
            {type="item", name="pipe", amount=4},
            {type="fluid", name="water", amount=480},
        },
        results = {
            {type="item", name="sap", amount=160},
        }
    }
})

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "oak-sapling-1",
        icons = du.icons("oak-sapling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="planter-box", amount=1},
            {type="item", name="soil", amount=3},
            {type="item", name="acorn", amount=1},
        },
        results = {
            {type="item", name="oak-sapling", amount=1},
        }
    },
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "forestry-oak-growing", ---@diagnostic disable-line
        name = "oak-tree-growing-1",
        icons = du.icons("oak-tree-growing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 320,
        ingredients = {
            {type="item", name="oak-sapling", amount=16},
            {type="fluid", name="water", amount=480},
        },
        results = {
            {type="item", name="log", amount=240},
            {type="item", name="acorn", amount=24},
        }
    }
})

local function set_tree_drops(cfg)
    for _, tree_name in pairs(cfg.trees) do
        local tree = data.raw.tree[tree_name]
        if not tree then
            error("No tree exists with name "..tostring(tree_name))
        end
        tree.minable = {
            mining_time = (tree.minable or {mining_time=0.1}).mining_time,
            results = {}
        }
        for _, drop in pairs(cfg.drops) do
            drop.type = drop.type or (data.raw.fluid[drop.name] and "fluid") or "item"
            table.insert(tree.minable.results, table.deepcopy(drop))    
        end
        tree.g2_set_drops = true ---@diagnostic disable-line
    end
end

local trees = {
    "tree-03", "tree-04", "tree-05", "tree-06", "tree-06-brown", "tree-07", "tree-08", "tree-08-brown", "tree-08-red"
}
local pine_trees = {
    "tree-01", "tree-02", "tree-02-red"
}
local oak_trees = {
    "tree-09", "tree-09-brown", "tree-09-red"
}

local function set_tree_name(trees, name)
    for _, tree in pairs(trees) do
        data.raw.tree[tree].localised_name = {"tree-name."..(tree:sub(tree:len() - ("brown"):len() + 1, -1) == "brown" and "brown-" or tree:sub(tree:len() - ("red"):len() + 1, -1) == "red" and "red-" or "")..name}
    end
end

set_tree_name(pine_trees, "pine")
set_tree_name(oak_trees, "oak")

set_tree_drops{trees=trees, drops={{name="log", amount=2}, {name="sap", amount=1, probability=0.25}, {name="pale-gull-nest", amount=1, probability=0.15}}}
set_tree_drops{trees=pine_trees, drops={{name="log", amount=2}, {name="pinecone", amount=1, probability=0.5}, {name="sap", amount=1, probability=0.25}}}
set_tree_drops{trees=oak_trees, drops={{name="log", amount=2}, {name="acorn", amount=1, probability=0.5}}}

-- pale gulls nest in trees
-- eat saltberries
-- poop ureic feces

data:extend({
    {
        type = "item",
        name = "sapling",
        icons = du.icons("sapling"),
        localised_name = {"item-name.sapling"},
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "forestry-tree"
    },
    {
        type = "item",
        name = "log",
        icons = du.icons("log"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        fuel_value = "3MJ",
        fuel_category = "chemical",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pine-sapling",
        localised_name = {"item-name.pine-sapling"},
        icons = du.icons("pine-sapling"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "forestry-pine"
    },
    {
        type = "item",
        name = "oak-sapling",
        localised_name = {"item-name.oak-sapling"},
        icons = du.icons("oak-sapling"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
        place_result = "forestry-oak"
    },
    {
        type = "item",
        name = "tree-seeds",
        icons = du.icons("tree-seeds"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "pinecone",
        icons = du.icons("pinecone"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 200,
        fuel_value = "250kJ",
        fuel_category = "chemical",
    },
    {
        type = "item",
        name = "acorn",
        icons = du.icons("acorn"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 200,
        fuel_value = "250kJ",
        fuel_category = "chemical",
    },
    {
        type = "item",
        name = "saltberries",
        icons = du.icons("saltberries"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 200,
    },
    {
        type = "item",
        name = "saltberry-seeds",
        icons = du.icons("saltberry-seeds"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 200,
    },
    {
        type = "item",
        name = "pale-gull-nest",
        icons = du.icons("pale-gull-nest"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        fuel_value = "3MJ",
        fuel_category = "chemical",
        stack_size = 10,
    },
    {
        type = "item",
        name = "pale-gull-egg",
        icons = du.icons("pale-gull-egg"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 10,
    },
    {
        type = "item",
        name = "pale-gull-hatchling",
        icons = du.icons("pale-gull-hatchling"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 10,
    },
    {
        type = "item",
        name = "pale-gull",
        icons = du.icons("pale-gull"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 10,
    },
    {
        type = "item",
        name = "small-cage",
        icons = du.icons("small-cage"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 10,
    },
    {
        type = "item",
        name = "artificial-nest",
        icons = du.icons("artificial-nest"),
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        stack_size = 10,
    },
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = true,
        category = "basic-crafting", ---@diagnostic disable-line
        name = "pale-gull-nest-void-1",
        icons = du.icons("pale-gull-nest"):add_corner("crushing"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.25,
        ingredients = {
            {type="item", name="pale-gull-nest", amount=1},
        },
        results = {
            {type="item", name="wood", amount=2},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "pale-gull-nest-crushing",
        icons = du.icons("pale-gull-nest"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="pale-gull-nest", amount=1},
        },
        results = {
            {type="item", name="wood", amount=2},
            {type="item", name="pale-gull-egg", amount_min=2, amount_max=4, probability=0.5},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "pale-gull-hatching-1",
        icons = du.icons("pale-gull-egg"):add_corner("pale-gull-hatchling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 120,
        ingredients = {
            {type="item", name="pale-gull-egg", amount=1},
            {type="item", name="small-cage", amount=1},
        },
        results = {
            {type="item", name="pale-gull-hatchling", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "pale-gull-growing-1",
        icons = du.icons("pale-gull"):add_corner("pale-gull-hatchling"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 120,
        ingredients = {
            {type="item", name="pale-gull-hatchling", amount=1},
            {type="item", name="artificial-nest", amount=1},
            {type="item", name="saltberries", amount=20},
            {type="fluid", name="water", amount=60},
        },
        results = {
            {type="item", name="saltberry-seeds", amount=12},
            {type="item", name="pale-gull", amount=1},
            {type="item", name="ureic-feces", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting-with-fluid", ---@diagnostic disable-line
        name = "pale-gull-feeding-1",
        icons = du.icons("pale-gull"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 240,
        ingredients = {
            {type="item", name="pale-gull", amount=1},
            {type="item", name="saltberries", amount=20},
            {type="fluid", name="water", amount=60},
        },
        results = {
            {type="item", name="saltberry-seeds", amount=12},
            {type="item", name="pale-gull", amount=1, probability=0.5},
            {type="item", name="small-cage", amount=1, probability=0.25},
            {type="item", name="ureic-feces", amount=10},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "pale-gull-releasing",
        icons = du.icons("pale-gull"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="pale-gull", amount=1},
        },
        results = {
            {type="item", name="small-cage", amount=1, probability=0.75},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "pale-gull-breeding-1",
        icons = du.icons("artificial-nest"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 120,
        ingredients = {
            {type="item", name="pale-gull", amount=2},
            {type="item", name="artificial-nest", amount=1},
            {type="item", name="saltberries", amount=12},
        },
        results = {
            {type="item", name="saltberry-seeds", amount=6},
            {type="item", name="ureic-feces", amount=10},
            {type="item", name="pale-gull", amount=2, probability=0.75},
            {type="item", name="pale-gull-nest", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "small-cage-1",
        icons = du.icons("small-cage"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="bronze-plate", amount=6},
            {type="item", name="iron-rod", amount=12},
            {type="item", name="treated-wood", amount=4},
        },
        results = {
            {type="item", name="small-cage", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "artificial-nest-1",
        icons = du.icons("artificial-nest"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 1,
        ingredients = {
            {type="item", name="treated-wood", amount=3},
            {type="item", name="bound-porcelain", amount=3},
        },
        results = {
            {type="item", name="artificial-nest", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "farming", ---@diagnostic disable-line
        name = "saltberries-1",
        icons = du.icons("saltberries"),
        subgroup = "raw-material",
        order = "a[a]",
        crafting_machine_tint = {
            primary = {1.0, 0.5, 0.5}
        },
        main_product = "",
        energy_required = 60,
        ingredients = {
            {type="item", name="saltberry-seeds", amount=3},
            {type="fluid", name="brine", amount=12},
        },
        results = {
            {type="item", name="saltberries", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "saltberry-seeds-mulching",
        icons = du.icons("saltberry-seeds"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 0.5,
        ingredients = {
            {type="item", name="saltberry-seeds", amount=3},
        },
        results = {
            {type="item", name="manganese-oxides", amount=1},
            {type="item", name="salt", amount=1},
        }
    }
})