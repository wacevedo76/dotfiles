return {
  "vimwiki/vimwiki",
  branch = "dev",
  lazy = false,
  init = function()
    vim.g.vimwiki_global_ext = 0
    vim.g.vimwiki_list = {
      {
        path = "~/code/Repos/vimwiki/",
        syntax = "markdown",
        ext = ".md",
      },
    }
  end,
}
