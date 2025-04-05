-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function augroup(name)
  return vim.api.nvim_create_augroup("somallg_" .. name, { clear = true })
end

-- Fix conceallevel for markdown files
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("markdown_conceal"),
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  group = augroup("reset_cursor_on_exit"),
  command = "set guicursor=a:ver25",
  desc = "Reset cursor back to beam when leaving Neovim",
})
