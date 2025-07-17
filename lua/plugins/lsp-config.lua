-- to add a new language server, add that language server to "ensure_install" block then add that language server 
-- to lspconfig under the nvim-lspconfig plugin

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "terraformls", "pyright", "gopls", "regols" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.terraformls.setup({})
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', '<leader>j', vim.lsp.buf.hover, {})
    end
  }

}


