return {
  --[[
    {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },

    --]]
  --
  --
  --
  --
  --[[
    --
  -- Install Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = true, -- ENABLE TRANSPARENCY
        theme = "dragon", -- Set default theme to dragon
        background = { dark = "dragon", light = "lotus" },
        -- Optional: specific overrides to ensure floating windows are also transparent
        overrides = function(colors)
          return {
            -- Force these groups to have NO background
            Normal = { bg = "none" },
            NormalNC = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            StatusLine = { bg = "none" },
            StatusLineNC = { bg = "none" },
            SignColumn = { bg = "none" },
            MsgArea = { bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            NvimTreeNormal = { bg = "none" },
            NeoTreeNormal = { bg = "none" },
            NeoTreeNormalNC = { bg = "none" },
          }
        end,
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },

--]]
  ---------
  ---
  ---
  ---
  ---
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- "latte", "frappe", "macchiato", "mocha"
      transparent_background = true,
      integrations = {
        neotree = true,
        telescope = { enabled = true },
        mason = true,
        mini = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
