-- Map leader
vim.g.mapleader = ' '

vim.o.syntax = 'on'
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.number = true
vim.o.relativenumber = true

-- Coding mappings
vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('i', '((', '()<esc>:let leavechar=")"<cr>i')
vim.keymap.set('i', '[[', '[]<esc>:let leavechar="]"<cr>i')
vim.keymap.set('i', '{{', '{}<esc>:let leavechar="}"<cr>i')
vim.keymap.set('i', "''", "''<esc>:let leavechar='\"'<cr>i")
vim.keymap.set('i', '``', '``<esc>:let leavechar="`"<cr>i')
vim.keymap.set('i', '""', '""<esc>i')
-- inoremap vim.keymap.set('i', '<C-j>', '<esc>/[)}"'\]`>]<cr>:nohl<cr>a')

vim.keymap.set('n', '<F7>', 'gg=<C-o><C-o>')

vim.keymap.set('n', '<leader>bb', ':buffers<cr>')
-- vim.keymap.set('n', '<leader>ig', ':IndentGuidesToggle<CR>')
vim.keymap.set('n', '<leader>tt', ':set nu! rnu!<CR>')
vim.keymap.set('n', '<leader>ww', ':set wrap!<CR>')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

vim.keymap.set('n', 'tn', ':tabnew<Space>')
vim.keymap.set('n', 'te', ':tabe<Space>')
vim.keymap.set('n', 'tk', ':tabnext<cr>')
vim.keymap.set('n', 'tj', ':tabprev<cr>')
vim.keymap.set('n', 'th', ':tabfirst<cr>')
vim.keymap.set('n', 'tl', ':tablast<cr>')
vim.keymap.set('n', 'tm', ':tabm<Space>')
vim.keymap.set('n', '<leader>h', ':help<Space>')
vim.keymap.set('n', 'th', ':tab help<Space>')
vim.keymap.set('n', 'bk', ':bnext<cr>')
vim.keymap.set('n', 'bj', ':bprevious<cr>')
vim.keymap.set('n', 'bl', ':blast<cr>')
vim.keymap.set('n', 'bh', ':bfirst<cr>')
vim.keymap.set('n', '<leader>ai', 'mzgg=G`z')

vim.keymap.set('n', '<leader>bb', ':buffers<cr>')

vim.keymap.set('n', '<space>', ':nohl<bar>:echo<cr>')

-- autocmd InsertEnter * norm zz

-- autocmd BufWritePre * :%s/\s\+$//e
