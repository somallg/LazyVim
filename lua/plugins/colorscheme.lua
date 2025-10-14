return {
  {
    "rebelot/kanagawa.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "kanagawa",
        callback = function()
          vim.api.nvim_set_hl(0, "StatusLine", { link = "lualine_c_normal" })
        end,
      })
    end,
    lazy = true,
    ---@module "kanagawa"
    ---@type KanagawaConfig
    opts = {
      compile = true,
    },
  },
  {
    "LazyVim/LazyVim",
    ---@module "lazyvim"
    ---@type LazyVimConfig
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
