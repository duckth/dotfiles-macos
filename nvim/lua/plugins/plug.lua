-- Desc: Plugins and config
return {
  {
    "eandrju/cellular-automaton.nvim",
    -- lazy load on keybind
    keys = {
      { "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Give up" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to find files with hidden included
      {
        "<leader>fh",
        function()
          require("telescope.builtin").find_files({ hidden = true })
        end,
        desc = "Find Files (hidden)",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
      },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = { "olimorris/neotest-rspec" },
    opts = { adapters = { "neotest-rspec" } },
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "float",
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
      },
    },
  },
  {
    "kmontocam/nvim-conda",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
      },
      {
        "w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
      },
      {
        "b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
      },
    },
  },
  {
    "marcussimonsen/let-it-snow.nvim",
    cmd = "LetItSnow", -- Wait with loading until command is run
    opts = {},
  },
  {
    "vim-crystal/vim-crystal",
  },
  {
    "wilfreddenton/history.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      keybinds = {
        back = "H",
        forward = "L",
        view = "<leader>bv",
      },
    },
  },
  {
    "folke/sidekick.nvim",
    opts = {
      -- add any options here
      cli = {
        mux = {
          backend = "tmux",
          enabled = true,
        },
      },
    },
    keys = {
      {
        "<S-Tab>",
        function()
          if not require("sidekick").nes_jump_or_apply() then
            return "<S-Tab>"
          end
        end,
        expr = true,
        desc = "Goto/Apply Next Edit Suggestion",
      },
    },
  },
  {
    "folke/noice.nvim",
    enabled = true,
    opts = {
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "pyright",
          },
          opts = { skip = true },
        },
      },
    },
  },
  { "pfhawkins/nvmjml", ft = "mjml", config = true },
}
