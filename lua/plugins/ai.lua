return {
  {
    "yetone/avante.nvim",
    build = "make",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    event = "VeryLazy",
    ---@module "avante"
    ---@type avante.Config
    opts = {
      input = {
        ---@type avante.InputProvider
        provider = "snacks",
      },
      ---@type avante.Mode
      mode = "legacy",
      ---@type avante.ProviderName
      provider = "copilot",
      providers = {
        ---@type AvanteSupportedProvider
        copilot = {
          disable_tools = true,
          model = "claude-sonnet-4",
        },
      },
      selector = {
        ---@type avante.SelectorProvider
        provider = "snacks",
      },
      windows = {
        ask = {
          start_insert = false,
        },
        edit = {
          start_insert = false,
        },
        width = 50,
      },
    },
    version = false,
  },
}
