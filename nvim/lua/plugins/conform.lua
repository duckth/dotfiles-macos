return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Let Herb's language server handle ERB formatting through LSP.
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.eruby = {}

      opts.formatters = opts.formatters or {}
      opts.formatters.rubocop = {
        command = "bundle",
        args = { "exec", "rubocop", "--server", "-a", "-f", "quiet", "--stderr", "--stdin", "$FILENAME" },
      }
    end,
  },
}
