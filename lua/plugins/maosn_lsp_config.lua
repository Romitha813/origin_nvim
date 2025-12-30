return {
  -- Update mason.nvim
  {
    "mason-org/mason.nvim",
    opts = {
      -- your mason options
    },
  },

  -- Update mason-lspconfig.nvim
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- This is the automatic installation you wanted
      automatic_installation = true,
      ensure_installed = { "lua_ls", "rust_analyzer" }, -- add your LSPs here
    },
  },
}
