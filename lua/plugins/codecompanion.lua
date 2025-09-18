return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ---@module "codecompanion"
    opts = {
      display = {
        chat = {
          window = {
            width = 0.5,
          },
        },
      },
      strategies = {
        chat = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4",
          },
        },
      },
    },
  },
}
