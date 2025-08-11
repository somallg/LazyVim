return {
  "yetone/avante.nvim",
  build = "make",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  ---@module "avante"
  ---@type avante.Config
  opts = {
    input = {
      provider = "snacks",
    },
    provider = "copilot",
    copilot = {
      model = "gpt-4.0",
    },
    windows = {
      width = 50,
    },
  },
  version = false,
}
