return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set('n', '<leader><Tab>', ':NvimTreeOpen<CR>')
  end
}
