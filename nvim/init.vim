lua << EOF
  require('settings')
  require('packer-config')
  require('mappings')
  require('colorschemes-config.gruvbox')
  require('lualine-config')
  require('nvim-tree-config')
  require('lsp-config.language-servers')
  require('lsp-config.nvim-cmp')
  require('treesitter-config')
EOF

nnoremap <F7> gg=<C-o><C-o>

inoremap (( ()<Esc>:let leavechar=")"<cr>i
inoremap [[ []<Esc>:let leavechar="]"<cr>i
inoremap {{ {}<Esc>:let leavechar="}"<cr>i
inoremap '' ''<Esc>:let leavechar="'"<cr>i
inoremap `` ``<Esc>:let leavechar="`"<cr>i
inoremap "" ""<Esc>:let leavechar='"'<cr>i
inoremap 3" """"""<Esc>hhi
inoremap <C-j> <Esc>/[)}"'\]`>]<cr>:nohl<cr>a

nnoremap <leader>bb :buffers<cr>

" Auto center text when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing white space when saving
autocmd BufWritePre * :%s/\s\+$//e
