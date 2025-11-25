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
        init_options = {
          addonSettings = {
            ["Ruby LSP Rails"] = {
              enablePendingMigrationsPrompt = false,
            },
          },
        },
      },
    },
  },
}
