-- disable mouse support
vim.o.mouse = ""

-- keep undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Syntax highlighting (redundant with Treesitter, but safe)
vim.cmd("syntax on")

-- Highlight current line
vim.o.cursorline = true
vim.cmd("highlight Cursorline cterm=NONE ctermbg=black")

-- Set colorscheme
vim.cmd("colorscheme habamax")

-- Always show statusline
vim.o.laststatus = 2

-- LAZYVIM CONFIG
require("config.lazy")

-- NEOTREE
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})

-- Formatters
vim.keymap.set('n', '<leader>fj', ':%!jq .<CR>', { desc = "Format JSON with jq" })

-- General Settings
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.fillchars = { eob = " " } -- Remove
vim.o.scrolloff = 25
vim.o.sidescrolloff = 25
vim.opt.ignorecase = true -- search options
vim.opt.smartcase = true -- search option

-- creates a trailing line at the end of files on write
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, true)
    if #lines > 0 and lines[#lines] ~= "" then
      vim.api.nvim_buf_set_lines(0, -1, -1, true, { "" })
    end
  end,
})

