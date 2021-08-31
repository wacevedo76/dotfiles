" Run multiple wikis
let g:vimwiki_list = [
  \ {'path': '~/code/wacevedo76/vimwiki/', 'syntax': 'media', 'ext': '.wiki'}
  \ ]

" swp directory
set directory=$HOME/.config/nvim/swap//

" Auto center text when entering insert mode
autocmd InsertEnter * norm zz

" Highlight search and clear
set hlsearch
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" Set colorcolumn
call matchadd('ColorColumn', '\%81v', 100)

" Automatically saves & loads when closing or opening a file
set viewoptions-=options
augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* if &ft !=# 'help' | mkview | endif
    autocmd BufWinEnter *.* if &ft !=# 'help' | silent! loadview | endif
augroup END

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" templates
au BufNewFile * silent! 0r ~/.config/nvim/templates/%:e.tpl

" Remove trailing white space when saving
autocmd BufWritePre * :%s/\s\+$//e
