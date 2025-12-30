return {
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>ut", "<cmd>Telescope undo<cr>", desc = "Undo History" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {
            -- Force the mappings inside the floating window
            mappings = {
              i = {
                ["<cr>"] = require("telescope-undo.actions").restore,
                ["<C-y>"] = require("telescope-undo.actions").yank_additions,
                ["<C-r>"] = require("telescope-undo.actions").restore,
              },
              n = {
                ["<cr>"] = require("telescope-undo.actions").restore,
                ["<C-y>"] = require("telescope-undo.actions").yank_additions,
                ["<C-r>"] = require("telescope-undo.actions").restore,
              },
            },
          },
        },
      })
      require("telescope").load_extension("undo")
    end,
  },
}
