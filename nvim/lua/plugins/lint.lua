return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        dockerfile = { "hadolint" },
        -- ruby = { "rubocop" },
      },
    },
  },
}
