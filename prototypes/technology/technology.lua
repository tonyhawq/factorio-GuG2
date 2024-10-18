data:extend({
    {
        type = "technology",
        name = "electrolysis",
        icon_size = 256, icon_mipmaps = 0,
        icon = "__un-science__/graphics/technology/chemistry.png",
        prerequisites = {"automation"},
        unit =
        {
            count = 10,
            ingredients =
            {
                {"automation-science-pack", 1},
            },
            time = 10
        },
        effects =
        {
            
        },
        order = "b-b"
    },
  })