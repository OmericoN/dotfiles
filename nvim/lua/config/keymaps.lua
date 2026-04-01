-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

local map = vim.keymap.set

-- 1. Normal Mode: Toggle the terminal open/closed
-- We map both <C-/> and <C-_> to catch however your terminal app sends the keystroke
map("n", "<C-/>", function()
  Snacks.terminal.toggle()
end, { desc = "Toggle Terminal" })
map("n", "<C-_>", function()
  Snacks.terminal.toggle()
end, { desc = "which_key_ignore" })

-- 2. Terminal Mode: Hide the terminal when you press it inside the command line
map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
map("t", "<C-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
--
vim.keymap.set("n", "j", "gj", { desc = "Move down (wrapped)" })
vim.keymap.set("n", "k", "gk", { desc = "Move up (wrapped)" })

-- Remap <leader>fg to ripgrep live_grep
vim.keymap.set("n", "<leader>fg", function()
  local actions = require("telescope.actions")
  require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({
    attach_mappings = function(_, map)
      -- Force C-j and C-k to move selections in insert mode
      map("i", "<C-j>", actions.move_selection_next)
      map("i", "<C-k>", actions.move_selection_previous)
      return true
    end,
  }))
end, { desc = "Ripgrep search in project" })
