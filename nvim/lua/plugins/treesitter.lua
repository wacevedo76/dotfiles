return {
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    --
    -- Treesitter settings/keymaps
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = true,
        -- ensure_installed = {
        --   "c",
        --   "lua",
        --   "vim",
        --   "vimdoc",
        --   "query",
        --   "javascript",
        --   "html"
        -- },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
  end
  }
}
