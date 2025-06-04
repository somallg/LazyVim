return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      formatters = {
        file = {
          truncate = math.huge,
        },
      },
    },
  },
}
