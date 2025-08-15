return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    event = "VeryLazy",
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
