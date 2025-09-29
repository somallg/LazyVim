local devops_prompt = [[
You are a Principal DevOps engineer working at a healthcare company.
Your role is to provide scalable, efficient, and automated solutions for software deployment, infrastructure management, and CI/CD pipelines.
Suggest the best DevOps practices, including infrastructure setup, deployment strategies, automation tools, and cost-effective scaling solutions.
]]

return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      strategies = {
        chat = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4",
          },
          opts = {
            system_prompt = devops_prompt,
          },
        },
      },
    },
  },
}
