vim.cmd.colorscheme "kanagawa"
-- indentmini color for kanagawa
vim.cmd.highlight('IndentLine guifg=#2A2A37') -- darker than current
vim.cmd.highlight('IndentLineCurrent guifg=#54546D')

-- Clipboard
vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank

-- General Editor
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
vim.opt.cursorline = true

-- fix eol on save
vim.opt.fixeol = false

-- Remove signs for warnings and errors
-- vim.diagnostic.config({
--   signs = false
-- })

vim.opt.autochdir = false

