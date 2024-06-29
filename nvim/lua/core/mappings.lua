-- Map leader and local leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ","

vim.g.mkdp_browser = '/usr/bin/vivaldi-stable'

vim.o.syntax = 'on'
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.virtualedit = 'block'
vim.o.clipboard = 'unnamedplus'
vim.o.inccommand = "split"
vim.o.ignorecase = true
vim.o.termguicolors = true

-- Neorg
vim.keymap.set('n', '<leader>tc', ':Neorg toggle-concealer<cr>')

-- Coding mappings
vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('i', '((', '()<esc>:let leavechar=")"<cr>i')
vim.keymap.set('i', '[[', '[]<esc>:let leavechar="]"<cr>i')
vim.keymap.set('i', '{{', '{}<esc>:let leavechar="}"<cr>i')
vim.keymap.set('i', "''", "''<esc>:let leavechar='\"'<cr>i")
vim.keymap.set('i', '``', '``<esc>:let leavechar="`"<cr>i')
vim.keymap.set('i', '""', '""<esc>i')
vim.keymap.set('n', '<esc>', ':noh<cr>')
vim.cmd([[ inoremap <C-j> <esc>/[)}"'\]`>]<cr>:nohl<cr>a ]])

vim.keymap.set('n', '<F7>', 'gg=<C-o><C-o>')

vim.keymap.set('n', '<leader>tt', ':set nu! rnu!<CR>')
vim.keymap.set('n', '<leader>sw', ':set wrap!<CR>')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

-- Tab keybindings
vim.keymap.set('n', 'tn', ':tabnew<Space>')
vim.keymap.set('n', 'te', ':tabe<Space>')
vim.keymap.set('n', 'tk', ':tabnext<cr>')
vim.keymap.set('n', 'tj', ':tabprev<cr>')
vim.keymap.set('n', 'th', ':tabfirst<cr>')
vim.keymap.set('n', 'tl', ':tablast<cr>')
vim.keymap.set('n', 'tm', ':tabm<Space>')
vim.keymap.set('n', '<leader>h', ':help<Space>')
vim.keymap.set('n', 'bk', ':bnext<cr>')
vim.keymap.set('n', 'bj', ':bprevious<cr>')
vim.keymap.set('n', 'bl', ':blast<cr>')
vim.keymap.set('n', 'bh', ':bfirst<cr>')
vim.keymap.set('n', '<leader>ai', 'mzgg=G`z')

-- buffers
vim.keymap.set('n', '<leader>bb', ':buffers<cr>')
vim.keymap.set('n', '<leader>bb', ':buffers<cr>')

-- Remove highlight search
vim.keymap.set('n', '<space>', ':nohl<bar>:echo<cr>')

-- NeoTree settings/keymaps
vim.keymap.set('n', '<leader><tab>', ':Neotree filesystem toggle left<cr>')

-- Lsp settings/keymaps
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
  end,
})

-- Markdown-preview settings
vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<cr>', {})

-- autocmd InsertEnter * norm zz

-- autocmd BufWritePre * :%s/\s\+$//e
