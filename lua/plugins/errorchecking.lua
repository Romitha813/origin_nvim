return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach", -- Changed from VeryLazy to LspAttach
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup({
        options = {
          throttle = 0, -- Set to 0 for instant real-time feedback
          show_source = true,
          add_messages = true,
        },
      })
      -- This is the most important line:
      vim.diagnostic.config({ virtual_text = false })
    end,
  },
}
