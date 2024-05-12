return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    version = "v7.0.0", -- Pin Neorg to the latest stable release
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    -- config = true,
    config = function()
      require("neorg").setup({
        load = {
            ["core.defaults"] = {},
        }
      })
    end
}
