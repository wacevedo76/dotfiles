local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}
local optsns = { noremap = true, silent = false}

vim.g.mapleader = ' '

map('n', '<space>', ':nohl<bar>:echo<cr>', opts)
map('n', '<leader><Tab>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ig', ':IndentGuidesToggle<CR>', opts)
map('n', '<leader>tt', ':set nu! rnu!<CR>', opts)
map('i', 'jk', '<esc>', opts)

map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-l>', '<c-w>l', opts)

map('n', 'tn', ':tabnew<Space>', optsns)
map('n', 'te', ':tabe<Space>', optsns)
map('n', 'tk', ':tabnext<cr>', optsns)
map('n', 'tj', ':tabprev<cr>', optsns)
map('n', 'th', ':tabfirst<cr>', optsns)
map('n', 'tl', ':tablast<cr>', optsns)
map('n', 'tm', ':tabm<Space>', optsns)
map('n', 'ht', ':tab help<Space>', optsns)
map('n', 'bk', ':bnext<cr>', optsns)
map('n', 'bj', ':bprevious<cr>', optsns)
map('n', 'bl', ':blast<cr>', optsns)
map('n', 'bh', ':bfirst<cr>', optsns)
map('n', '<leader>ai', 'mzgg=G`z', opts)