-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local setkey = vim.keymap.set
local opts = { noremap = true, silent = true }

setkey('i', 'jj', '<Esc>')

-- I like j gj to move visually and not by blocks (when lines wrapped)
setkey('n', 'j', 'gj')

-- I like k gk to move visually and not by blocks (when lines wrapped)
setkey('n', 'k', 'gk')

-- Select all
setkey('n', '<C-a>', 'gg<S-v>G')

-- New tab
setkey('n', 'te', ':tabedit<Return>')
setkey('n', '<tab>', ':tabnext<Return>', opts)
setkey('n', '<s-tab>', ':tabprev<Return>', opts)

--Inc rename
--LSP Wrapper for incremental rename
setkey('n', '<leader>rn', ':IncRename ')

-- FZF
vim.keymap.set('n', ';;', require('fzf-lua').resume)
vim.keymap.set('n', ';f', require('fzf-lua').files, { desc = 'Fzf Files' })
vim.keymap.set('n', ';r', require('fzf-lua').live_grep_resume)
vim.keymap.set('n', ';q', require('fzf-lua').quickfix)
vim.keymap.set('n', ';b', require('fzf-lua').grep_curbuf)
vim.keymap.set('n', ';e', require('fzf-lua').diagnostics_workspace)
vim.keymap.set('n', ';s', require('fzf-lua').grep_cword)
vim.keymap.set('n', ';c', require('fzf-lua').colorschemes)
require('fzf-lua').setup({ keymap = { builtin = { true, ['<Esc>'] = 'hide' } } })
