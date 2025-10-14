return {
  {
    "akinsho/bufferline.nvim",
    ---@module "bufferline"
    ---@type bufferline.UserConfig
    opts = {
      options = {
        auto_toggle_bufferline = false,
      },
    },
  },
  {
    "folke/snacks.nvim",
    ---@module "snacks"
    ---@type snacks.Config
    opts = {
      dashboard = {
        enabled = false,
      },
    },
  },
}
