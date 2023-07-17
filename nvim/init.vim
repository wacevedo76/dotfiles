lua << EOF
  require('colorschemes-config.gruvbox')
  require('lsp-config.language-servers')
  require('lsp-config.nvim-cmp')
  require('lualine-config')
  require('mappings')
  require('nvim-tree-config')
  require('packer-config')
  require('settings')
  require('treesitter-config')
  -- require('chatGPT-config')
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

nmap <M-Right> :vertical resize +1<cr>
nmap <M-Left> :vertical resize -1<cr>
nmap <M-Down> :resize +1<cr>
nmap <M-Up> :resize -1<cr>

" Auto center text when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing white space when saving
autocmd BufWritePre * :%s/\s\+$//e

let g:vimwiki_list = [{'path': '~/code/wacevedo76/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
