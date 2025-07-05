local wk = require("which-key")
wk.add({
  -- FileSystem
  -- * Explorer
  { "<leader>e", "<cmd>:Neotree focus position=float<cr>", desc = "Open File Explorer", mode = "n" },
  -- * FzfLua
  { "<leader>ff", "<cmd>FzfLua files %:p:h<cr>", desc = "Find Files", mode = "n" },
  { "<leader>fg", "<cmd>FzfLua live_grep %:p:h<cr>", desc = "Grep for files", mode = "n" },
  { "<leader>fd", ":FzfLua live_grep search_paths=", desc = "Grep for files, based on search path", mode = "n" },
  { "<leader>b", "<cmd>:FzfLua buffers<cr>", desc = "Buffers", mode = "n" },
  -- Views
  -- * Splits
  { "<leader>sl", "<cmd>vsplit<cr>", desc = "Split Vertical" },
  { "<leader>sj", "<cmd>split<cr>", desc = "Split Horizontal" },
  -- * Window navigation
  { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  -- Editor
  -- * Git
  { "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Git reset visual hunk" },
  { "<leader>gs", "<cmd>Git status<cr>", desc = "Display Git Status", mode = "n" },
  -- * Remap < and >
  { "<TAB>", ">>", mode = "n" },
  { "<S-TAB>", "<<", mode = "n" },
  { "<TAB>", ">gv", mode = "v" },
  { "<S-TAB>", "<gv", mode = "v" },

  -- { "<leader>b", group = "buffers", expand = function()
  --     return require("which-key.extras").expand.buf()
  --   end
  -- },
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
  }
})

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    -- Hover
    vim.keymap.set({ 'n', 'v' }, 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set({ 'n', 'v' }, 'L', vim.diagnostic.open_float, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>K', vim.lsp.buf.code_action, opts)
    -- Rename
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    -- Format document
    vim.keymap.set('n', 'F', vim.lsp.buf.format, opts)
    -- Goto
    -- vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, opts)
    -- vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
  end
})
