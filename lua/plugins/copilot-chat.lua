local devops_prompt =
  "You are a Senior DevOps engineer working at a healthcare software company. Your role is to provide scalable, efficient, and automated solutions for software deployment, infrastructure management, and CI/CD pipelines. Suggest the best DevOps practices, including infrastructure setup, deployment strategies, automation tools, and cost-effective scaling solutions."

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    ---@module "CopilotChat"
    ---@type CopilotChat.config.Config
    opts = {
      auto_insert_mode = false,
      model = "claude-sonnet-4",
      system_prompt = devops_prompt,
      window = {
        width = 0.5,
      },
    },
  },
}
