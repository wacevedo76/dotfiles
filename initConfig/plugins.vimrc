" Autoload Vim Plug if not installed
if empty(glob('~/.local/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYNVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree'
  Plug 'mattn/emmet-vim'
  " Plug 'ryanoasis/vim-devicons'
  Plug 'prettier/vim-prettier'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'anott03/nvim-lspinstall'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tkhren/vim-fake'
  Plug 'morhetz/gruvbox'
  Plug 'thaerkh/vim-indentguides'
  Plug 'mhinz/vim-startify'
  Plug 'vimwiki/vimwiki'
  Plug 'janko-m/vim-test'
  Plug 'Galicarnax/vim-regex-syntax'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'ap/vim-css-color'
call plug#end()

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
