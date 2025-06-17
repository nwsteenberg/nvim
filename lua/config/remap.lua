-- Filesystem
-- * Explorer
vim.keymap.set('n', '<leader>e', ":NvimTreeFocus<CR>", { desc = 'Focus File Explorer' })
-- * Fzf
vim.keymap.set('n', '<leader>ff', ":FzfLua files<CR>", { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', ":FzfLua live_grep<CR>", { desc = 'Project live grep' })
vim.keymap.set('n', '<leader>fd', ":FzfLua live_grep search_paths=", { desc = 'Project live grep with search path' })
vim.keymap.set('n', '<leader>b', ":FzfLua buffers<CR>", { desc = 'Search buffers' })

-- Views
-- * Splits
vim.keymap.set('n', '<leader>sl', ":vsplit")
vim.keymap.set('n', '<leader>sj', ":split")
-- * Window navigation
vim.keymap.set('n', '<leader>w', "<C-w>")

-- Editor
-- * Git
vim.keymap.set('n', '<leader>gr', ":Gitsigns reset_hunk<CR>")

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    -- Hover
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Code actions
    vim.keymap.set({'n', 'v'}, '<leader>K', vim.lsp.buf.code_action, opts)

    -- Goto
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)

    -- Rename
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    -- Format document
    vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, opts)
  end
})
