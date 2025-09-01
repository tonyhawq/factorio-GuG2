local du = require("dutil")

local function make_logs(names)
    local created = {growing={}, sapling={}}
    for _, log in pairs(names) do
        local category = "forestry-"..log.name.."-growing"
        local dash = "-"
        if log.name == "" then
            dash = ""
            category = "forestry-generic-growing"
        end
        local sapling_item_name = log.name..dash.."sapling"
        data:extend({
            {
                type = "recipe", 
                always_show_made_in = true,
                enabled = false,
                category = "crafting", ---@diagnostic disable-line
                name = sapling_item_name.."-1",
                icons = du.icons(sapling_item_name),
                subgroup = "raw-material",
                order = "a[a]",
                main_product = "",
                energy_required = 1,
                ingredients = {
                    {type="item", name="planter-box", amount=1},
                    {type="item", name="soil", amount=3},
                },
                results = {
                    {type="item", name=sapling_item_name, amount=1},
                }
            },
        })
        local sapling_recp = du.recipe(sapling_item_name.."-1")
        created.sapling[sapling_item_name.."-1"] = sapling_recp
        for _, additional in pairs(log.sapling_ingredients or {}) do
            sapling_recp:add_ingredient{type=data.raw.fluid[additional[1]] and "fluid" or "item", name=additional[1], amount=additional[2]}
        end
        local tree_item_name = log.name..dash.."tree-growing"
        local sapling_amount = 20
        local logs_per_sapling = 4
        local water_per_log = 6
        data:extend({
            {
                type = "recipe", 
                always_show_made_in = true,
                enabled = false,
                category = category, ---@diagnostic disable-line
                name = tree_item_name.."-1",
                icons = du.icons(tree_item_name),
                subgroup = "raw-material",
                order = "a[a]",
                main_product = "",
                energy_required = sapling_amount * logs_per_sapling * 2,
                ingredients = {
                    {type="item", name=log.name..dash.."sapling", amount=sapling_amount},
                    {type="fluid", name="water", amount=sapling_amount * logs_per_sapling * water_per_log},
                },
                results = {
                    {type="item", name=log.name..dash.."log", amount=sapling_amount * logs_per_sapling},
                }
            }
        })
        local tree_recp = du.recipe(tree_item_name.."-1")
        tree_recp.growing_log_type = log.name..dash.."log"
        tree_recp.sapling = sapling_item_name
        created.growing[tree_item_name.."-1"] = tree_recp
        for _, additional in pairs(log.drops or {}) do
            tree_recp:add_result{type=data.raw.fluid[additional[1]] and "fluid" or "item", name=additional[1], amount=additional[2] * sapling_amount}
        end
        data:extend({
            {
                type = "item",
                name = log.name..dash.."log",
                icons = du.icons(log.name..dash.."log"),
                subgroup = "smelting-machine",
                order = "a[stone-furnace]",
                stack_size = 50,
                fuel_value = "3MJ",
                fuel_category = "chemical",
                spoil_result = "rotten-log",
                spoil_ticks = 30 * 60 * 60,
            },
        })
        if log.technology then
            sapling_recp:add_unlock(log.technology)
            tree_recp:add_unlock(log.technology)    
        end
    end
    return created
end

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

local created_recipes = make_logs{
    {name="", sapling_ingredients={{"sap", 2}}, technology="wood-processing"},
    {name="pine", sapling_ingredients={{"pinecone", 1}}, drops={{"pinecone", 3/2}}, technology="wood-processing"},
    {name="oak", sapling_ingredients={{"acorn", 2}}, drops={{"acorn", 3}}, technology="wood-processing"},
}
du.recipe"oak-sapling-1":add_ingredient{type="item", name="acorn", amount=2}
du.recipe"pine-sapling-1":add_ingredient{type="item", name="pinecone", amount=1}
du.recipe"oak-tree-growing-1".energy_required = du.recipe"oak-tree-growing-1".energy_required * 2

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

set_tree_drops{trees=trees, drops={{name="log", amount=2}, {name="sap", amount=1, probability=0.25}, {name="pale-gull-nest", amount=1, probability=0.25}}}
set_tree_drops{trees=pine_trees, drops={{name="pine-log", amount=2}, {name="pinecone", amount=1, probability=0.5}, {name="sap", amount=1, probability=0.25}}}
set_tree_drops{trees=oak_trees, drops={{name="oak-log", amount=2}, {name="acorn", amount=1, probability=0.5}, {name="sap", amount=1, probability=0.25}}}

-- pale gulls nest in trees
-- eat saltberries
-- poop ureic feces

data:extend({
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
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "farm-1",
        icons = du.icons("farm"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="treated-wood", amount=10},
            {type="item", name="stone-brick", amount=10},
            {type="item", name="bronze-plate", amount=10},
            {type="item", name="soil", amount=10},
            {type="item", name="small-tank", amount=1},
        },
        results = {
            {type="item", name="farm-1", amount=1},
        }
    }
})