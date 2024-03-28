return {

  -- nvim-cmp: The completion engine for neovim (only for completions)
  -- luasnip: snippet engine for neovim - used as both a source and expansion tool for snippets 
  -- cmp_luasnip: luasnip completion source for nvim-cmp - supplies a list of possible snippets, then luasnip expands thouse
  -- friendly-snippets: a collection of vscode like snippets
  -- cmp_nvim_lsp: a completion source for nvim-cmp that displays the builtin completions offered by whichever lsp is attached to the buffer

  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    }
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
    	local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

    	cmp.setup({
    		snippet = {
    			-- REQUIRED - you must specify a snippet engine
    			expand = function(args)
    				require("luasnip").lsp_expand(args.body)
    			end,
    		},
    		window = {
    			completion = cmp.config.window.bordered(),
    			documentation = cmp.config.window.bordered(),
    		},
    		mapping = cmp.mapping.preset.insert({
    			["<C-b>"] = cmp.mapping.scroll_docs(-4),
    			["<C-f>"] = cmp.mapping.scroll_docs(4),
    			["<C-Space>"] = cmp.mapping.complete(),
    			["<C-e>"] = cmp.mapping.abort(),
    			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    		}),
    		sources = cmp.config.sources({
    			-- { name = "nvim_lsp" },
    			{ name = "luasnip" }, -- For luasnip users.
    		}, {
    			{ name = "buffer" },
    		}),
    	})
    end,
  },
}

-------------------------------------------------------------------------------------
--  {
--    "hrsh7th/cmp-nvim-lsp"
--  },
--  {
--    "L3MON4D3/LuaSnip",
--    dependencies = {
--      "saadparwaiz1/cmp_luasnip",
--      "rafamadriz/friendly-snippets"
--    }
--  },
--  {
--	  "hrsh7th/nvim-cmp",
--	  config = function()
--	  	-- Set up nvim-cmp.
--	  	local cmp = require("cmp")
--      require("luasnip.loaders.from_vscode").lazy_load()
--
--	  	cmp.setup({
--	  		snippet = {
--	  			-- REQUIRED - you must specify a snippet engine
--	  			expand = function(args)
--	  				require("luasnip").lsp_expand(args.body)
--	  			end,
--	  		},
--	  		window = {
--	  			completion = cmp.config.window.bordered(),
--	  			documentation = cmp.config.window.bordered(),
--	  		},
--	  		mapping = cmp.mapping.preset.insert({
--	  			["<C-b>"] = cmp.mapping.scroll_docs(-4),
--	  			["<C-f>"] = cmp.mapping.scroll_docs(4),
--	  			["<C-Space>"] = cmp.mapping.complete(),
--	  			["<C-e>"] = cmp.mapping.abort(),
--	  			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--	  		}),
--	  		sources = cmp.config.sources({
--	  			-- { name = "nvim_lsp" },
--	  			{ name = "luasnip" }, -- For luasnip users.
--	  		}, {
--	  			{ name = "buffer" },
--	  		}),
--	  	})
--	  end,
--  }