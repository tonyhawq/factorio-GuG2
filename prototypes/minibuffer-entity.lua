
require ("__core__.lualib.circuit-connector-sprites")

local storageTank = table.deepcopy(data.raw["storage-tank"]["storage-tank"])
storageTank.name = "small-tank"
storageTank.icons = {
  {
    icon = "__GuG2__/graphics/icons/small-tank.png",
    icon_size = 64,
  }
}
storageTank.minable.result = "small-tank"
storageTank.fast_replaceable_group = "pipe"
storageTank.max_health = 300
storageTank.corpse = "small-tank-remnants"

local entity_tileWidth = 0.5
local entity_tileHeight = 0.5
storageTank.collision_box = {{-entity_tileWidth + 0.25, -entity_tileHeight + 0.25},{entity_tileWidth - 0.25, entity_tileHeight - 0.25}}
storageTank.selection_box = {{-entity_tileWidth, -entity_tileHeight},{entity_tileWidth, entity_tileHeight}}

storageTank.flow_length_in_ticks = 360
storageTank.fluid_box = {
  volume = 1000,
  pipe_covers = pipecoverspictures(),
  pipe_connections = {
    {position = {0, 0}, direction=defines.direction.east},
    {position = {0, 0}, direction=defines.direction.west},
  },
}
storageTank.two_direction_only = true
storageTank.window_bounding_box = {{-0.4, -0.75}, {0.4, -0.3}}

circuit_connector_definitions["small-tank"] = circuit_connector_definitions.create_vector
(
universal_connector_template,
{
  { variation = 25, main_offset = util.by_pixel(-11,-7), shadow_offset = util.by_pixel(-11,-7), show_shadow = false },
  { variation = 27, main_offset = util.by_pixel(12,-8), shadow_offset = util.by_pixel(12,-8), show_shadow = false },
  { variation = 25, main_offset = util.by_pixel(-11,-7), shadow_offset = util.by_pixel(-11,-7), show_shadow = false },
  { variation = 27, main_offset = util.by_pixel(12,-8), shadow_offset = util.by_pixel(12,-8), show_shadow = false },
}
)
storageTank.circuit_wire_connection_points = circuit_connector_definitions["small-tank"].points
storageTank.circuit_connector_sprites = circuit_connector_definitions["small-tank"].sprites
storageTank.water_reflection = {
  pictures = {
    filename = "__GuG2__/graphics/entity/small-tank/minibuffer-reflection.png",
    priority = "extra-high",
    width = 24,
    height = 24,
    shift = util.by_pixel(5, 35),
    variation_count = 1,
    scale = 5,
  },
  rotate = false,
  orientation_to_variation = false,
}

storageTank.pictures = {
  fluid_background = {
    filename = "__GuG2__/graphics/entity/small-tank/fluid-background-minibuffer.png",
    priority = "extra-high",
    width = 32,
    height = 15,
  },
  window_background = {
    filename = "__GuG2__/graphics/entity/small-tank/hr-window-background-minibuffer.png",
    priority = "extra-high",
    width = 34,
    height = 48,
    scale = 0.5,
  },
  flow_sprite = {
    filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
    priority = "extra-high",
    width = 160,
    height = 20,
  },
  gas_flow = {
    filename = "__base__/graphics/entity/pipe/steam.png",
    priority = "extra-high",
    line_length = 10,
    width = 48,
    height = 30,
    frame_count = 60,
    axially_symmetrical = false,
    direction_count = 1,
    animation_speed = 0.25,
    scale = 0.5,
  },
  
  picture = {
    north = {
      layers = {
        {
          filename = "__GuG2__/graphics/entity/small-tank/north-minibuffer.png",
          priority = "extra-high",
          width = 960,
          height = 960,
          scale = 0.5,
        },
        {
          filename = "__GuG2__/graphics/entity/small-tank/north-minibuffer-shadow.png",
          priority = "extra-high",
          width = 960,
          height = 960,
          scale = 0.5,
          draw_as_shadow = true,
        },
        
      },
    },
    east = {
      layers = {
        {
          filename = "__GuG2__/graphics/entity/small-tank/east-minibuffer.png",
          priority = "extra-high",
          width = 960,
          height = 960,
          scale = 0.5,
        },
        {
          filename = "__GuG2__/graphics/entity/small-tank/east-minibuffer-shadow.png",
          priority = "extra-high",
          width = 960,
          height = 960,
          scale = 0.5,
          draw_as_shadow = true,
        },
        
      },
    },
    
    south = util.empty_sprite(0),
    west = util.empty_sprite(0),
  },
}
data:extend{storageTank}

data:extend({
  {
    type = "corpse",
    name = "small-tank-remnants",
    icon = "__GuG2__/graphics/icons/small-tank.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    tile_width = 0.5,
    tile_height = 0.5,
    selection_box = {{-0.5, -0.5},{0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      layers = {
        {
          filename = "__GuG2__/graphics/entity/small-tank/minibuffer-remnants.png",
          line_length = 1,
          width = 960,
          height = 960,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5,
        },
        {
          filename = "__GuG2__/graphics/entity/small-tank/minibuffer-remnants-shadow.png",
          line_length = 1,
          width = 960,
          height = 960,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5,
          draw_as_shadow = true
        },
      }
    }
  },
})