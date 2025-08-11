return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = {
      current_line_blame = true,
    },
    config = function()
      vim.keymap.set("n", "<leader>g", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Git Blame" })
    end,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
    config = function()
      -- Example keymaps for Fugitive
      vim.keymap.set("n", "<leader>gs", ":G<CR>", { desc = "Git Status" })
      vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git Diff" })
      vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "Git Blame" })
    end,
  },
}

