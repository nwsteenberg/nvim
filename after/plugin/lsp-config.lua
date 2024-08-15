require("mason").setup()
require("mason-lspconfig").setup({
 ---	ensure_installed = { "lua_ls", "gopls" }
	ensure_installed = { "lua_ls", "bashls" }
})

-- @TODO: Setup golang, yaml, json, make and maybe more lsps?
