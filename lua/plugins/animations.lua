return {
  -- 1. Smooth Scrolling (Built-in Snacks)
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = true },
    },
  },

  -- 2. Normal Smear Cursor (Default Smooth Style)
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {
      -- Standard smooth settings
      stiffness = 0.6,
      trailing_exponent = 2.0,
      distance_stop_animating = 0.1,
      hide_target_hack = false,
    },
  },

  -- 3. UI Animations (Window Transitions)
  {
    "nvim-mini/mini.animate",
    event = "VeryLazy",
    opts = function()
      local animate = require("mini.animate")
      return {
        cursor = { enable = false }, -- Let smear-cursor handle the movement
        scroll = { enable = false }, -- Let snacks handle the scrolling
        resize = { timing = animate.gen_timing.linear({ duration = 100, unit = "total" }) },
        open = { timing = animate.gen_timing.linear({ duration = 100, unit = "total" }) },
        close = { timing = animate.gen_timing.linear({ duration = 100, unit = "total" }) },
      }
    end,
  },
}
