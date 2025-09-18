return {
  {
    "rebelot/kanagawa.nvim",
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
