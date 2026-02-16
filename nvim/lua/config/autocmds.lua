-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[autocmd BufLeave * silent! :noa w]])
vim.cmd([[autocmd FileType c set tabstop=4 softtabstop=4]])
vim.cmd([[autocmd FileType c set shiftwidth=4]])

vim.cmd([[
  augroup TransparentBackground
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
  autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
  autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none
  autocmd ColorScheme * highlight SignColumn ctermbg=none guibg=none

  augroup END
]])
