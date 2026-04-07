local telescope = require("telescope")
local previewers = require("telescope.previewers")
local orig_maker = previewers.buffer_previewer_maker
telescope.setup({
  defaults = {
    buffer_previewer_maker = function(filepath, bufnr, opts)
      orig_maker(filepath, bufnr, opts)
      if filepath:match("%.rb$") then
        vim.schedule(function()
          vim.bo[bufnr].filetype = "ruby"
        end)
      end
    end,
  },
})
