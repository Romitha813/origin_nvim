-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

-- Map <leader>q to close the current buffer using the built-in LazyVim utility
vim.keymap.set("n", "<leader>q", function()
  require("lazyvim.util").ui.bufremove()
end, { desc = "Close Buffer" })
--
--
--
--
--

-- Normal Mode: Jump to start of code (^) and end of line ($)
vim.keymap.set("n", "<A-Left>", "^", { desc = "Go to start of code" })
vim.keymap.set("n", "<A-Right>", "$", { desc = "Go to end of line" })

-- Insert Mode: Use <C-o> to execute the jump and stay in insert mode
vim.keymap.set("i", "<A-Left>", "<C-o>^", { desc = "Go to start of code" })
vim.keymap.set("i", "<A-Right>", "<C-o>$", { desc = "Go to end of line" })

-- Visual Mode: Select to start of code or end of line
vim.keymap.set("v", "<A-Left>", "^", { desc = "Go to start of code" })
vim.keymap.set("v", "<A-Right>", "$", { desc = "Go to end of line" })
--
--
--
-- Map Ctrl+S to save the current buffer in Normal and Insert modes
vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>", { desc = "Save File" })

--
--
--
--
--

-- Normal Mode: Alt-h to start of code, Alt-l to end of line
vim.keymap.set("n", "<A-l>", "$", { desc = "Go to end of line" })
vim.keymap.set("n", "<A-h>", "^", { desc = "Go to start of code" })

-- Insert Mode: Using <C-o> to jump while typing
vim.keymap.set("i", "<A-h>", "<C-o>^", { desc = "Go to start of code" })
vim.keymap.set("i", "<A-l>", "<C-o>$", { desc = "Go to end of line" })

-- Visual Mode: For selecting until start/end of line
vim.keymap.set("v", "<A-h>", "^", { desc = "Go to start of code" })
vim.keymap.set("v", "<A-l>", "$", { desc = "Go to end of line" })
--
--
--
--

-- Insert Mode: Delete word backwards
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete word backwards" })

-- Terminal fallback (Many terminals send <C-h> for Ctrl+Backspace)
vim.keymap.set("i", "<C-h>", "<C-w>", { desc = "Delete word backwards" })

-- Command-line Mode: Also make it work when searching or typing commands
vim.keymap.set("c", "<C-BS>", "<C-w>", { desc = "Delete word backwards" })
vim.keymap.set("c", "<C-h>", "<C-w>", { desc = "Delete word backwards" })

---
---
---
---

-- Normal Mode
vim.keymap.set("n", "<C-Delete>", "dw", { desc = "Delete word forward" })

-- Insert Mode
vim.keymap.set("i", "<C-Delete>", "<C-o>dw", { desc = "Delete word forward" })
---
---
---

-- Normal & Visual Mode: Ctrl+Left/Right to jump words
vim.keymap.set({ "n", "v" }, "<C-Right>", "w", { desc = "Next word" })
vim.keymap.set({ "n", "v" }, "<C-Left>", "b", { desc = "Previous word" })

-- Insert Mode: Jump words without leaving insert mode
-- <C-o> allows running a normal mode command once
vim.keymap.set("i", "<C-Right>", "<C-o>w", { desc = "Next word" })
vim.keymap.set("i", "<C-Left>", "<C-o>b", { desc = "Previous word" })
---
---
---
---
---
---
---

-- Normal Mode: Select all text
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Visual Mode: Select all text (resets selection to include everything)
vim.keymap.set("v", "<C-a>", "<Esc>ggVG", { desc = "Select all" })

-- Insert Mode: Select all text
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select all" })
---
---
---
---
---

-- Normal Mode: Alt+Up for previous function, Ctrl+Down for next function
vim.keymap.set("n", "<A-Up>", "[m", { desc = "Previous function/class" })
vim.keymap.set("n", "<A-Down>", "]m", { desc = "Next function/class" })

-- Visual Mode: Select function by function
vim.keymap.set("x", "<A-Up>", "[m", { desc = "Previous function/class" })
vim.keymap.set("x", "<A-Down>", "]m", { desc = "Next function/class" })

-- Insert Mode: Jump while typing
vim.keymap.set("i", "<A-Up>", "<C-o>[m", { desc = "Previous function/class" })
vim.keymap.set("i", "<A-Down>", "<C-o>]m", { desc = "Next function/class" })

----
---
---
---
---
---
---

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>P", [["+P]], { desc = "Paste before from system clipboard" })

-- Delete to system clipboard (Cut)
vim.keymap.set({ "n", "v" }, "<leader>d", [["+d]], { desc = "Delete to system clipboard" })

----
---
---
---
---
---
---

-- This effectively disables the double-tap leader without needing to delete it
vim.keymap.set("n", "<leader><leader>", "<nop>", { desc = "Disabled" })

----
---
---
---

-- Normal Mode: Alt+V highlights the word under the cursor
vim.keymap.set("n", "<A-v>", "viw", { desc = "Select current word" })
