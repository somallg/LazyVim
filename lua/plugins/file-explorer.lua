return {
  {
    "folke/snacks.nvim",
    ---@module "snacks"
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = { hidden = true },
          files = { hidden = true },
          grep = { hidden = true },
          grep_word = { hidden = true },
        },
      },
      terminal = {
        win = {
          position = "right",
          width = 0.5,
        },
      },
    },
  },
}
