return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        width = 40,
        mappings = {
          ["."] = "set_root",      -- Go into the selected folder
          [","] = "navigate_up",   -- Go up one directory
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.wo.number = true
            vim.wo.relativenumber = false
          end,
        },
      },
    },
  },
}

