return {
  -- 1. ToggleTerm Plugin
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<C-\>]],
      direction = "horizontal",
      size = 15,
      dir = "buffer", -- This makes the terminal open in your current file's folder
      start_in_insert = true,
    },
  },

  -- 2. Code Runner Plugin
  {
    "CRAG666/code_runner.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("code_runner").setup({
        mode = "toggleterm",
        focus = true,
        startinsert = true,
        -- THIS IS WHERE YOU PUT THE FILETYPE BLOCK:
        filetype = {
          python = "cd $dir; python -u $fileName",
          rust = "cd $dir; if (Test-Path Cargo.toml) { cargo run } else { rustc $fileName; ./$fileNameWithoutExt.exe }",
          c = "cd $dir; gcc $fileName -o $fileNameWithoutExt.exe; ./$fileNameWithoutExt.exe",
          cpp = "cd $dir; g++ $fileName -o $fileNameWithoutExt.exe; ./$fileNameWithoutExt.exe",
          java = "cd $dir; javac $fileName; java $fileNameWithoutExt",
          javascript = "node $fileName",
          typescript = "ts-node $fileName",
        },
      })

      -- Keybinding to run the code
      vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false, desc = "Run Code" })
    end,
  },
}
