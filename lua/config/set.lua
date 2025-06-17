vim.cmd.colorscheme "kanagawa"

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
vim.api.nvim_set_option("clipboard","unnamedplus")

vim.opt.nu = true                 -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers

-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- fix eol on save
vim.opt.fixeol = false

-- Remove signs for warnings and errors
vim.diagnostic.config({
  signs = false
})

