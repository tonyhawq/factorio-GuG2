local du = require('dutil')

data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crafting", ---@diagnostic disable-line
        name = "centrifuge",
        icons = du.icons("base.centrifuge"),
        energy_required = 1,
        ingredients = {
            {type="item", name="assembling-machine-1", amount=1},
            {type="item", name="machine-chassis", amount=1},
            {type="item", name="steam-engine", amount=1},
        },
        results = {
            {type="item", name="centrifuge", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "yellowcake-1",
        icons = du.icons("yellowcake"):add_corner("base.fluid/sulfuric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="fluid", name="sulfuric-acid", amount=100},
            {type="item", name="uranium-ore", amount=4},
        },
        results = {
            {type="fluid", name="sulfuric-acid", amount=90},
            {type="item", name="yellowcake", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "yellowcake-2",
        icons = du.icons("yellowcake"):add_corner("hydrogen-peroxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="fluid", name="hydrogen-peroxide", amount=100},
            {type="item", name="uranium-ore", amount=4},
        },
        results = {
            {type="fluid", name="steam", amount=900, temperature=500},
            {type="item", name="yellowcake", amount=4},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "urania-1",
        icons = du.icons("urania"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 6,
        ingredients = {
            {type="fluid", name="hydrogen", amount=100},
            {type="item", name="yellowcake", amount=2},
        },
        results = {
            {type="fluid", name="sulfuric-wastewater", amount=10},
            {type="item", name="urania", amount=3},
            {type="item", name="silicon-carbide", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "centrifuging", ---@diagnostic disable-line
        name = "urania-enrichment-1",
        icons = du.icons("urania-235"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="water", amount=100},
            {type="item", name="urania", amount=1},
        },
        results = {
            {type="fluid", name="wastewater", amount=100},
            {type="item", name="urania-235", probability=0.01, amount=1},
            {type="item", name="urania-238", probability=0.33, amount=1},
            {type="item", name="urania", probability=0.66, amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "urania-enrichment-2",
        icons = du.icons("urania-235"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 30,
        ingredients = {
            {type="fluid", name="water", amount=100},
            {type="item", name="urania", amount=1},
            {type="item", name="clay", amount=1},
            {type="item", name="white-phosphorous", amount=1},
            -- ion exchange resins
        },
        results = {
            {type="fluid", name="wastewater", amount=100},
            {type="item", name="urania-235", probability=0.03, amount=1},
            {type="item", name="urania-238", probability=0.97, amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "chemistry", ---@diagnostic disable-line
        name = "hydrogen-peroxide-1",
        icons = du.icons("hydrogen-peroxide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 5,
        ingredients = {
            {type="fluid", name="anthraquinone", amount=100},
            {type="fluid", name="hydrogen", amount=100},
            {type="fluid", name="oxygen", amount=100},
        },
        results = {
            {type="fluid", name="hydrogen-peroxide", amount=100},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "hydrogen-peroxide-2",
        icons = du.icons("hydrogen-peroxide"):add_corner("base.fluid/sulfuric-acid"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 15,
        ingredients = {
            {type="fluid", name="ammonia", amount=100},
            {type="fluid", name="sulfuric-acid", amount=100},
        },
        results = {
            {type="fluid", name="hydrogen-peroxide", amount=100},
            {type="fluid", name="sulfuric-acid", amount=20},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "electrolysis", ---@diagnostic disable-line
        name = "silicon-carbide-1",
        icons = du.icons("silicon-carbide"):add_corner("graphite-electrode"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 60,
        ingredients = {
            {type="item", name="silica", amount=16},
            {type="item", name="graphite-electrode", amount=1},
        },
        results = {
            {type="item", name="graphite-dust", amount=6},
            {type="item", name="silicon-carbide", amount=16},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smelting", ---@diagnostic disable-line
        name = "graphite-1",
        icons = du.icons("graphite"):add_corner("silicon-carbide"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="silicon-carbide", amount=1},
        },
        results = {
            {type="item", name="graphite", amount=1},
            {type="item", name="silicon", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "crushing", ---@diagnostic disable-line
        name = "graphite-dust-1",
        icons = du.icons("graphite-dust"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="graphite", amount=1},
        },
        results = {
            {type="item", name="graphite-dust", amount=12},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "graphite-block-1",
        icons = du.icons("graphite-block"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="graphite-dust", amount=36},
            {type="fluid", name="epoxy", amount=12},
        },
        results = {
            {type="item", name="graphite-block", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "smithing", ---@diagnostic disable-line
        name = "graphite-electrode-1",
        icons = du.icons("graphite-electrode"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="graphite-dust", amount=36},
            {type="item", name="graphite-block", amount=1},
            {type="fluid", name="tar-pitch", amount=60},
        },
        results = {
            {type="item", name="graphite-electrode", amount=1},
        }
    }
})
data:extend({
    {
        type = "recipe", 
        always_show_made_in = true,
        enabled = false,
        category = "fabricating", ---@diagnostic disable-line
        name = "nuclear-science-pack-1",
        icons = du.icons("nuclear-science-pack"),
        subgroup = "raw-material",
        order = "a[a]",
        main_product = "",
        energy_required = 2,
        ingredients = {
            {type="item", name="urania-238", amount=1},
            {type="item", name="lead-plate", amount=12},
            {type="item", name="graphite-block", amount=2},
            {type="item", name="heavy-framing", amount=3},
        },
        results = {
            {type="item", name="nuclear-science-pack", amount=1},
        }
    }
})
-- uo2 batteries
-- uo2 catalysts
-- uo2 solar cells