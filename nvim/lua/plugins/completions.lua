-- return {
--     "neovim/nvim-lspconfig",
--     event = { "BufReadPre", "BufNewFile" },
--     dependencies = {
--         "hrsh7th/cmp-nvim-lsp",
--         { "antosha417/nvim-lsp-file-operations", config = true },
--     },
--     config = function()
--         -- import lspconfig plugin
--         local lspconfig = require("lspconfig")
-- 
--         -- import cmp-nvim-lsp plugin
--         local cmp_nvim_lsp = require("cmp_nvim_lsp")
-- 
--         local keymap = vim.keymap -- for conciseness
--         vim.api.nvim_create_autocmd("LspAttach", {
--             group = vim.api.nvim_create_augroup("UserLspConfig", {}),
--             callback = function(ev)
--                 -- Buffer local mappings.
--                 -- See `:help vim.lsp.*` for documentation on any of the below functions
--                 local opts = { buffer = ev.buf, silent = true }
-- 
--                 -- set keybinds
--                 opts.desc = "Show LSP references"
--                 keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
-- 
--                 opts.desc = "Go to declaration"
--                 keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
-- 
--                 opts.desc = "Show LSP definitions"
--                 keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
-- 
--                 opts.desc = "Show LSP implementations"
--                 keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
-- 
--                 opts.desc = "Show LSP type definitions"
--                 keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
-- 
--                 opts.desc = "See available code actions"
--                 keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
-- 
--                 opts.desc = "Smart rename"
--                 keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
-- 
--                 opts.desc = "Show buffer diagnostics"
--                 keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
-- 
--                 opts.desc = "Show line diagnostics"
--                 keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
-- 
--                 opts.desc = "Go to previous diagnostic"
--                 keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
-- 
--                 opts.desc = "Go to next diagnostic"
--                 keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
-- 
--                 opts.desc = "Show documentation for what is under cursor"
--                 keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
-- 
--                 opts.desc = "Restart LSP"
--                 keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
--             end,
--         })
--     end,
-- }


-- #### New test config
return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = 'rafamadriz/friendly-snippets',

  -- use a release tag to download pre-built binaries
  version = '*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = { preset = 'super-tab' },

    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
  opts_extend = { "sources.default" }
}

-- #### Old Config #############################################################
-- nvim-cmp: The completion engine for neovim (only for completions)
-- luasnip: snippet engine for neovim - used as both a source and expansion tool for snippets 
-- cmp_luasnip: luasnip completion source for nvim-cmp - supplies a list of possible snippets, then luasnip expands thouse
-- friendly-snippets: a collection of vscode like snippets
-- cmp_nvim_lsp: a completion source for nvim-cmp that displays the builtin completions offered by whichever lsp is attached to the buffer


-- return {
--   -- LuaSnip
--   {
--     "L3MON4D3/LuaSnip",
-- 
--     version = "v2.*",
--     dependencies = {
--       "saadparwaiz1/cmp_luasnip",
--       "rafamadriz/friendly-snippets",
--       "kmarius/jsregexp"
--     },
--     build = "make install_jsregexp",
--   },
--   -- nvim-cmp
--   {
--     "hrsh7th/nvim-cmp",
--     config = function()
--     	local cmp = require("cmp")
--       local luasnip = require("luasnip")
--       -- require("luasnip.loaders.from_vscode").lazy_load() # this line was part of the issue with emmet_ls
-- 
--     	cmp.setup({
--     		snippet = {
--     			-- REQUIRED - you must specify a snippet engine
--     			expand = function(args)
--     				-- require("luasnip").lsp_expand(args.body)   # this line was part of the issue with emmet_ls
--     				require("luasnip").lsp_expand(args.body)
--             luasnip.lsp_expand(args.body)
--     			end,
--     		},
--     		window = {
--     			completion = cmp.config.window.bordered(),
--     			documentation = cmp.config.window.bordered(),
--     		},
--     		mapping = cmp.mapping.preset.insert({
--           ["<C-k>"] = cmp.mapping.select_prev_item(),
--           ["<C-j>"] = cmp.mapping.select_next_item(),
--     			["<C-b>"] = cmp.mapping.scroll_docs(-4),
--     			["<C-f>"] = cmp.mapping.scroll_docs(4),
--     			["<C-Space>"] = cmp.mapping.complete(),
--     			["<C-e>"] = cmp.mapping.abort(),
--     			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     		}),
--     		sources = cmp.config.sources({
--     			{ name = "nvim_lsp" },
--     			{ name = "luasnip" }, -- For luasnip users.
--     		}, {
--     			{ name = "buffer" },
--     			{ name = "path" },
--     		}),
--     	})
--     end,
--   },
--   {
--     "hrsh7th/cmp-nvim-lsp",
--     config = function()
-- 		-- COMPLETION
-- 		local cmp = require("cmp")
-- 		local cmp_mappings = cmp.mapping.preset.insert({
-- 			["<C-b>"] = cmp.mapping.scroll_docs(-4),
-- 			["<C-f>"] = cmp.mapping.scroll_docs(4),
-- 			["<C-y>"] = cmp.mapping.complete(),
-- 			["<C-e>"] = cmp.mapping.abort(),
-- 			["<CR>"] = cmp.mapping.confirm({ select = false }),
-- 		})
--     end
--   },
--   {
--       "hrsh7th/cmp-buffer"
--   },
--   {
--     "hrsh7th/cmp-path"
--   },
-- }
