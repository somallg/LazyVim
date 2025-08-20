return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
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
          return require("codecompanion").actions({})
        end,
        desc = "Prompt Actions (CodeCompanion)",
        mode = { "n", "v" },
      },
    },
    event = "VeryLazy",
    ---@module "codecompanion"
    opts = {
      display = {
        chat = {
          window = {
            layout = "float",
            height = 0.9,
            width = 0.9,
          },
        },
      },
      --   opts = {
      --     system_prompt = function()
      --       return [[You are a Senior DevOps engineer working at Big Company.
      -- Your role is to provide scalable, efficient, and automated solutions for software deployment, infrastructure management, and CI/CD pipelines.
      -- Suggest the best DevOps practices, including infrastructure setup, deployment strategies, automation tools, and cost-effective scaling solutions.]]
      --     end,
      --   },
      strategies = {
        chat = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4",
          },
        },
        cmd = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4",
          },
        },
        inline = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4",
          },
        },
      },
    },
    init = function()
      local group = vim.api.nvim_create_augroup("CodeCompanionFidgetHooks", { clear = true })

      vim.api.nvim_create_autocmd({ "User" }, {
        pattern = "CodeCompanionRequest*",
        group = group,
        callback = function(request)
          local msg
          local level = vim.log.levels.INFO

          if request.match == "CodeCompanionRequestStarted" then
            msg = "[CodeCompanion] Starting request..."
          elseif request.match == "CodeCompanionRequestStreaming" then
            msg = "[CodeCompanion] Streaming response..."
          elseif request.match == "CodeCompanionRequestFinished" then
            msg = "[CodeCompanion] Request completed"
          elseif request.match == "CodeCompanionRequestCancelled" then
            msg = "[CodeCompanion] Request cancelled"
            level = vim.log.levels.WARN
          else
            msg = "[CodeCompanion] Unknown event: " .. request.match
            level = vim.log.levels.ERROR
          end

          vim.notify(msg, level)
        end,
      })
    end,
  },
}
