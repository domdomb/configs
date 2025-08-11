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
      lspconfig.terraformls.setup({
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end,
        },
      })
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', '<leader>j', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      -- Configure diagnostics
      vim.diagnostic.config({
        virtual_text = {
          severity = vim.diagnostic.severity.ERROR,
          prefix = "●",
          spacing = 1,
        },
      })

      -- Optional: make the error symbol red
      vim.cmd([[highlight DiagnosticVirtualTextError guifg=#ff5555]])
    end
  }

}

