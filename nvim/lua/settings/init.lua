local set = vim.opt

vim.notify = require("notify")
vim.wo.fillchars='eob: '
set.expandtab = true
set.smarttab = true
set.backspace = "indent,eol,start"
set.clipboard = "unnamedplus"
set.foldmethod = "manual"
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.list = true
set.smartindent = true
set.hidden = true
set.incsearch = true
set.ruler = true
set.wrap = false
set.linebreak = true
set.nu = true
set.rnu = true
set.autoindent = true
set.cursorline = true
set.cursorcolumn = true
set.autochdir = true
set.updatetime = 300
set.splitbelow = true
set.splitright = true

-- let mapleader = " "
-- let maplocalleader = ','
-- filetype plugin on
-- syntax enable
-- syntax on
