return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false, -- Load the plugin immediately
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional, for better UI
      "mfussenegger/nvim-dap", -- Optional, for debugging support
    },
    config = function()
      require("flutter-tools").setup({})
    end,
  },
}
