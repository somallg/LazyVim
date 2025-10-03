return {
  {
    "folke/snacks.nvim",
    ---@module "snacks"
    ---@type snacks.Config
    opts = {
      picker = {
        formatters = {
          file = {
            truncate = 120,
          },
        },
        sources = {
          explorer = { hidden = true },
          files = { hidden = true },
          grep = { hidden = true },
          grep_word = { hidden = true },
        },
      },
    },
  },
}
