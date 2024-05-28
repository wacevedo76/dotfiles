return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "v7.0.0", -- Pin Neorg to the latest stable release
    -- config = true,
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.integrations.treesitter"] = {},
          ["core.autocommands"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.keybinds"] = {
            config = {
              default_keybinds = false,
              hook = function(keybinds)
                keybinds.remap_event("norg", "n", "<C-y>", "core.qol.todo_items.todo.task_cycle")
  							keybinds.remap_event("norg", "n", "<C-s>", "core.integrations.telescope.find_linkable")
  							keybinds.remap_event("norg", "n", "<C-l>", "core.integrations.telescope.insert_link")
  							keybinds.remap_event("norg", "n", "<C-f>", "core.integrations.telescope.insert_file_link")
  							keybinds.remap_event("norg", "n", "<C-h>", "core.integrations.telescope.search_headings")
  							keybinds.remap_event("norg", "n", "<leader>tu", "core.qol.todo_items.todo.task_undone")
  							keybinds.remap_event("norg", "n", "<leader>tp", "core.qol.todo_items.todo.task_pending")
  							keybinds.remap_event("norg", "n", "<leader>td", "core.qol.todo_items.todo.task_done")
  							keybinds.remap_event("norg", "n", "<leader>th", "core.qol.todo_items.todo.task_hold")
  							keybinds.remap_event("norg", "n", "<leader>tc", "core.qol.todo_items.todo.task_cancelled")
  							keybinds.remap_event("norg", "n", "<leader>tr", "core.qol.todo_items.todo.task_recurring")
  							keybinds.remap_event("norg", "n", "<leader>ti", "core.qol.todo_items.todo.task_important")
  							keybinds.remap_event("norg", "n", "<leader>ta", "core.qol.todo_items.todo.task_ambiguous")
  							keybinds.remap_event("norg", "n", "<CR>", "core.esupports.hop.hop-link")
  							keybinds.remap_event("norg", "n", "gd", "core.esupports.hop.hop-link")
  							keybinds.remap_event("norg", "n", "gf", "core.esupports.hop.hop-link")
  							keybinds.remap_event("norg", "n", "gF", "core.esupports.hop.hop-link")
  							keybinds.remap_event("norg", "n", "<leader>nn", "core.dirman.new.note")
  							keybinds.remap_event("norg", "n", "<C-b>", "core.esupports.hop.hop-link", "vsplit")
  							keybinds.remap_event("norg", "n", ">.", "core.promo.promote")
  							keybinds.remap_event("norg", "n", "<,", "core.promo.demote")
  							keybinds.remap_event("norg", "n", ">>", "core.promo.promote", "nested")
  							keybinds.remap_event("norg", "n", "<<", "core.promo.demote", "nested")
  							keybinds.remap_event("norg", "n", "<leader>lt", "core.pivot.toggle-list-type")
  							keybinds.remap_event("norg", "n", "<leader>li", "core.pivot.invert-list-type")
  							keybinds.remap_event("norg", "n", "<leader>id", "core.tempus.insert-date")

  							-- Insert mode
  							keybinds.remap_event("norg", "i", "<C-z>", "core.looking-glass.magnify-code-block")
  							keybinds.remap_event("norg", "i", "<C-l>", "core.integrations.telescope.insert_link")
  							keybinds.remap_event("norg", "i", "<C-f>", "core.integrations.telescope.insert_file_link")
  							keybinds.remap_event("norg", "i", "<C-t>", "core.promo.promote")
  							keybinds.remap_event("norg", "i", "<C-d>", "core.promo.demote")
  							keybinds.remap_event("norg", "i", "<C-c>", "core.itero.next-iteration")
  							keybinds.remap_event("norg", "i", "<C-x>", "core.tempus.insert-date-insert-mode")

  							--traverse-heading mode
  							keybinds.remap_event(
  								"traverse-heading",
  								"n",
  								"j",
  								"core.integrations.treesitter.next.heading"
  							)
  							keybinds.remap_event(
  								"traverse-heading",
  								"n",
  								"k",
  								"core.integrations.treesitter.previous.heading"
  							)
              end,
            }
          }
        }
      })
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end
}
