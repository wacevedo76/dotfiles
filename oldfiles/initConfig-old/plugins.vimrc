" Autoload Vim Plug if not installed
if empty(glob('~/.local/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYNVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'itchyny/lightline.vim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'morhetz/gruvbox'
" Plug 'tpope/vim-fugitive'
  Plug 'preservim/nerdtree'
  Plug 'thaerkh/vim-indentguides'
  Plug 'vimwiki/vimwiki'
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-ruby/vim-ruby'
" Plug 'neovim/nvim-lsp'
  Plug 'neovim/nvim-lspconfig'
" Plug 'anott03/nvim-lspinstall'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  Plug 'tpope/vim-rails'
" Plug 'ray-x/lsp_signature.nvim'
" Plug 'nvim-lua/completion-nvim'
" Plug 'nvim-lua/diagnostic-nvim'
  Plug 'mhinz/vim-startify'
  Plug 'Galicarnax/vim-regex-syntax'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'ap/vim-css-color'
  Plug 'janko-m/vim-test'
  Plug 'tkhren/vim-fake'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

set completeopt=menuone,noinsert,noselect
