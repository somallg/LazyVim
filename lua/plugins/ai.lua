return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ---@module "codecompanion"
    opts = {
      strategies = {
        chat = {
          adapter = "copilot",
          model = "claude-sonnet-4",
        },
        cmd = {
          adapter = "copilot",
          model = "claude-sonnet-4",
        },
        inline = {
          adapter = "copilot",
          model = "claude-sonnet-4",
        },
      },
      opts = {
        log_level = "DEBUG",
      },
    },
  },
}
