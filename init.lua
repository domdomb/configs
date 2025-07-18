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

-- Tab format
vim.opt.expandtab = true      -- use spaces instead of tabs


