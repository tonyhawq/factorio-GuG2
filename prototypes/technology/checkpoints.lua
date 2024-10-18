Multistage.make_technology{
    name = "conduits",
    icons = {
        {
            icon = "__base__/graphics/technology/logistics-1.png",
            icon_size=256,
        }
    },
    required = {
        {name="iron-plate", amount=20},
        {name="iron-gear-wheel", amount=10},
    },
    effects = {
        {
            type = "give-item",
            item = "common-loot-bag",
            count = 1,
        }
    },
}