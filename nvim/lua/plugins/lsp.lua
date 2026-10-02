return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- solargraph = {
      --   init_options = {
      --     formatting = false,
      --   },
      --   settings = {
      --     solargraph = {
      --       autformat = false,
      --       diagnostic = false,
      --       useBundler = true,
      --     },
      --   },
      -- },
      crystalline = {},
      ruby_lsp = {
        cmd = { "bundle", "exec", "ruby-lsp" },
        init_options = {
          addonSettings = {
            ["Ruby LSP Rails"] = {
              enablePendingMigrationsPrompt = false,
            },
          },
        },
      },
      herb_ls = {
        init_options = {
          linter = { enabled = true },
          formatter = { enabled = true },
        },
      },
      -- ruby_lsp handles diagnostics/formatting via its rubocop addon,
      -- so the standalone rubocop LSP server (enabled by the ruby extra) is disabled.
      rubocop = {
        enabled = false,
      },
    },
  },
}
