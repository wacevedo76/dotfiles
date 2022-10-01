return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ellisonleao/gruvbox.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'vimwiki/vimwiki'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'tpope/vim-fireplace'
  use 'tpope/vim-salve'
  use 'Olical/conjure'
  use 'dmac/vim-cljfmt'
  use 'clojure-vim/async-clj-omni'

-- LSP Plugins
  use { "williamboman/nvim-lsp-installer",
    { "neovim/nvim-lspconfig",
      config = function()
        require("nvim-lsp-installer").setup {}
        local lspconfig = require("lspconfig")
        lspconfig.sumneko_lua.setup {}
      end
    }
  }
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind.nvim'
end)
