let mapleader = '-'
let maplocalleader = "//"

set nocompatible ruler nowrap linebreak nu relativenumber autoindent
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set colorcolumn=80

colo desert

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" -------- Plug plugin manager start -------------------------------------------
"  Autoload
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 3rd-party plugin list
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'mattn/emmet-vim'
  Plug 'SirVer/ultisnips'
  Plug 'prettier/vim-prettier'
  Plug 'Valloric/YouCompleteMe'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tkhren/vim-fake'
call plug#end()

" NerdTree function
function! ToggleNERDTree()
  NERDTreeToggle
  silent NERDTreeMirror
endfunction

" remap esc
inoremap jk <ESC>

" auto indent correction
nnoremap <F7> gg=<C-o><C-o>

" swp directory
set directory=$HOME/.vim/swap//

" colo koehler
nnoremap <silent> <F3> :call ToggleNERDTree()<CR>
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap ` ``<Esc>:let leavechar="`"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap <C-j> <Esc>/[)}"'\]`>]<CR>:nohl<CR>a

" Easier navigating between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set splitbelow splitright

" tabs remaps
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" open .vimrc in new split | reload vimrc changes
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" My signature
iabbrev ssig William Acevedo<cr>----------------------------------------<cr><tab>william.acevedo@gmail.com<cr>

" fzf
nnoremap <leader>f :FZF<cr>
nnoremap // :BLines!<CR>
nnoremap ?? :Rg!<CR>

"----------------------------------------------------
" quote wrap words
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
