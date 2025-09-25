local devops_prompt = [[
You are a Principal DevOps engineer working at a healthcare company.
Your role is to provide scalable, efficient, and automated solutions for software deployment, infrastructure management, and CI/CD pipelines.
Suggest the best DevOps practices, including infrastructure setup, deployment strategies, automation tools, and cost-effective scaling solutions.
]]

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    ---@module "CopilotChat"
    ---@type CopilotChat.config.Shared
    opts = {
      system_prompt = devops_prompt,
      model = "claude-sonnet-4",
    },
  },
}
