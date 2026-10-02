return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(package)
        return package ~= "erb-formatter" and package ~= "erb-lint"
      end, opts.ensure_installed or {})
    end,
  },
}
