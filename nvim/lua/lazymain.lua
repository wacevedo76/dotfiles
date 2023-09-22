-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins={
  'nvim-lualine/lualine.nvim',
  'tpope/vim-fireplace',
  'tpope/vim-salve',
  {
    "vimwiki/vimwiki",
    branch = "dev",
    lazy = false,
    -- priority = 1000,
    init = function()
      vim.g.vimwiki_global_ext = 0
      vim.g.vimwiki_list = {
        {
          path = "~/code/wacevedo76/vimwiki/",
          syntax = "markdown",
          ext = ".md",
        },
      }
    end,
  },
}

require("lazy").setup("plugins")
