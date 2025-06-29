return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return tool ~= "tflint"
      end, opts.ensure_installed or {})
    end,
  },
}
