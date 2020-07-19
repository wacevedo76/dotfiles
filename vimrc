set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

set ai ruler nowrap linebreak autoindent cindent relativenumber nu autoindent

set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab

if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" -------- Plug plugin manager start ---------------------------------------------
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
call plug#end()
" ------------------------------------------------------------------------------

" remap esc
inoremap jk <ESC>

" swp directory
set directory=$HOME/.vim/swap//

" colo koehler
nnoremap <silent> <F3> :NERDTreeToggle<CR>
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

" tabs remaps
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Snipits
nnoremap ,re :-1read $HOME/.vim/snips/.skeleton.ruby.re<CR>3l
nnoremap ,rn :-1read $HOME/.vim/snips/.skeleton.ruby.rn<CR>2l
