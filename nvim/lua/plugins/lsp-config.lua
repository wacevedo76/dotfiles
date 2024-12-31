return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      -- require("mason-lspconfig").setup_handlers {
      --   function (server_name) -- default handler (optional)
      --     requre("lspconfig")[server_name].setup {}
      --   end
      -- }
    end
	},
	{
    'neovim/nvim-lspconfig',
    dependencies = {
      "saghen/blink.cmp",
		  "williamboman/mason.nvim",
		  "williamboman/mason-lspconfig.nvim",
    },

    opts = {
      servers = {
        lua_ls = {}
      }
    },
    config = function(_, opts)
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers) do
        -- passing config.capabliities to blink.cmp merges with the capabilities in your
        -- opts[server].setup(config)
        config.capabilities = 
        require('blink.cmp').get_lsp_capabilities()
        local lspconfig = require('lspconfig')

        -- lspconfig['lua-ls'].setup({ capabilities = capabilities })
      end
    end
  }
}
