-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- select everything on ctrl + a
map("n", "<C-A>", "ggVG", { desc = "Select everything" })

-- end of line next to start of line
map({ "n", "v" }, "+", "<End>", { desc = "End of line" })

-- find files on ctrl + p
map("n", "<C-P>", ":Telescope find_files<CR>", { desc = "Find files" })

-- map comma to backtick so i can use precise marks
map({ "n", "v" }, ",", "`", { desc = "Use backtick instead of comma" })
-- map dash to tilde so i can use it
map({ "n", "v" }, "-", "~", { desc = "Use dash instead of tilde" })

-- recent files on ½
map("n", "$", "<Cmd>Telescope oldfiles<CR>", { desc = "Show recent files (Telescope)" })

-- buffers on tab
map("n", "<Tab>", "<Cmd>Telescope buffers<CR>", { desc = "Show buffers (Telescope)" })

-- map leader + dot to harpoon marks
map("n", "<leader>.", "<Cmd>Telescope harpoon marks<CR>", { desc = "Show harpoon marks (Telescope)" })

map("n", "<leader>e", "<Cmd>Neotree reveal<CR>", { desc = "NeoTree Reveal" })
