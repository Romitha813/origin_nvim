-- AppData/Local/nvim/lua/plugins/errorchecking.lua
return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup({
        options = {
          throttle = 0, -- Instant feedback
          show_source = true, -- Show if it's jdtls, clangd, etc.
          add_messages = true,
          multilines = {
            enabled = true,
            always_show = true, -- This makes EVERY error in the file visible
          },
        },
      })
    end,
  },
}
