return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      yamlls = {
        filetypes = { "yaml", "yaml.ansible", "yaml.docker-compose", "yaml.gitlab" },
      },
    },
  },
}
