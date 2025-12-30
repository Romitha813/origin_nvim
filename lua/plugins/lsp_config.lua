return {
  -- Your existing global config
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = true,
        virtual_text = { spacing = 4, source = "if_many", prefix = "●" },
        severity_sort = true,
      },
    },
  },

  -- Add this to ensure the Rust-specific plugin respects your settings
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    ft = { "rust" },
    opts = {
      server = {
        -- This forces Rust to use the same settings you defined above
        on_attach = function(_, bufnr)
          vim.lsp.inlay_hints.enable(true, { bufnr = bufnr })
        end,
      },
    },
  },
}
