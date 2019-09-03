data:extend({
    {
        type = "container",
        name = "routing-node",
        icon = "__logisticstubes__/graphics/icon.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "routing-node"},
        max_health = 50,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        fast_replaceable_group = "container",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        inventory_size = 6,
        open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
        close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        picture =
        {
          filename = "__logisticstubes__/graphics/entity.png",
          priority = "extra-high",
          width = 46,
          height = 33,
          shift = {0.25, 0.015625}
        },
    },
    {
        type = "item",
        name = "routing-node",
        icon = "__logisticstubes__/graphics/icon.png",
        icon_size = 32,
        flags = {},
        subgroup = "storage",
        order = "a[items]-a[routing-node]",
        place_result = "routing-node",
        stack_size = 10
    },
    {
        type = "recipe",
        name = "routing-node",
        ingredients = {{"wood", 1}},
        result = "routing-node",
        result_count = 2,
        energy_required = 0.25
    }
})