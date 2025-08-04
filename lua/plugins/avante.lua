return {
  "yetone/avante.nvim",
  cmd = "AvanteAsk",
  build = "make",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    input = {
      provider = "snacks",
      provider_opts = {
        title = "Avante Input",
        icon = " ",
      },
    },
    provider = "copilot",
    providers = {
      ---@type AvanteSupportedProvider
      copilot = {
        model = "gpt-4.1",
      },
    },
    windows = {
      width = 50,
    },
  },
  version = false, -- Never set this value to "*"! Never!
}

-- dependencies
-- keys
-- lazy = true,
-- opts
-- version
--
-- input
-- provider
