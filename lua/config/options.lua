-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

if vim.fn.has("win32") == 1 then
  local powershell_exe = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
  vim.opt.shell = powershell_exe
  vim.opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- terminal resise with mouse
vim.opt.mouse = "a"

-- Enable soft line wrapping
vim.opt.wrap = true

-- Break lines at words instead of characters
vim.opt.linebreak = true

-- (Optional) Maintain indentation of wrapped lines
vim.opt.breakindent = true

vim.opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable persistent undo across sessions
vim.opt.undofile = true
-- High undo limits for 2025 storage
vim.opt.undolevels = 10000

---
---

-- Handle swap file recovery automatically so the picker doesn't crash
vim.opt.shortmess:append("A") -- Don't give "ATTENTION" message

vim.opt.swapfile = false -- Stop creating .swp files

-----
---
vim.diagnostic.config({ update_in_insert = true })

---
---
---
---
-- Add this to lua/config/options.lua
vim.diagnostic.config({
  update_in_insert = true, -- Real-time errors while typing
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  severity_sort = true,
})
----
---
---
---
-- Add this to AppData/Local/nvim/lua/config/options.lua

vim.diagnostic.config({
  update_in_insert = true, -- Real-time updates as you type
  underline = true, -- Underline the actual error code
  severity_sort = true, -- Show errors before warnings
  virtual_text = { -- The text at the end of the line
    spacing = 4,
    source = "if_many", -- Shows "jdtls" or "pyright" so you know the source
    prefix = "●",
  },
  float = { -- The popup window when you hover
    border = "rounded",
    source = "always",
  },
})
