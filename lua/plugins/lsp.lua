return {
  -- Install Mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- Install Mason-Lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "vim",
              }
            }
          }
        },
        capabilities = capabilities,
      })
    end
  },
}
