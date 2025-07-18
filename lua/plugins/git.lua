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
}

