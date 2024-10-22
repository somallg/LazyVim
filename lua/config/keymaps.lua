-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  { "i", "n" },
  "<C-c><C-c>",
  require("somallg.terminal").exec_code_block_at_cursor,
  { desc = "Execute code at cursor" }
)
