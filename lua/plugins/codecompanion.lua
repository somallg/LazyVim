local devops_prompt =
  "You are a Principal DevOps engineer working at a healthcare company. Your role is to provide scalable, efficient, and automated solutions for software deployment, infrastructure management, and CI/CD pipelines. Suggest the best DevOps practices, including infrastructure setup, deployment strategies, automation tools, and cost-effective scaling solutions."

return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      {
        "<leader>aa",
        function()
          return require("codecompanion").toggle()
        end,
        desc = "Toggle (CodeCompanion)",
        mode = { "n", "v" },
      },
      {
        "<leader>ap",
        function()
          require("codecompanion").actions({})
        end,
        desc = "Prompt Actions (CodeCompanion)",
        mode = { "n", "v" },
      },
    },
    init = function()
      local group = vim.api.nvim_create_augroup("CodeCompanionHooks", {})

      vim.api.nvim_create_autocmd({ "User" }, {
        pattern = "CodeCompanionRequestStarted",
        group = group,
        callback = function()
          vim.notify("Planning response...", vim.log.levels.INFO, { title = "CodeCompanion" })
        end,
      })
    end,
    opts = {
      display = {
        chat = {
          window = {
            opts = {
              numberwidth = 4,
            },
            width = 0.5,
          },
        },
      },
      strategies = {
        chat = {
          adapter = {
            name = "copilot",
            model = "gemini-2.5-pro",
          },
          opts = {
            system_prompt = devops_prompt,
          },
        },
      },
    },
  },
}
