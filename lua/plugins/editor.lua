return {
  -- Indent indicator
  {
    'nvimdev/indentmini.nvim',
    config = function()
      require('indentmini').setup({
        only_current = false
      })
    end
  },
  -- Color theme
  {
    "gbprod/nord.nvim",
    "rebelot/kanagawa.nvim"
  },
  -- Word highlighting
  {
    'RRethy/vim-illuminate',
  },
  -- Autopairs
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  -- Sleuth
  {
    "tpope/vim-sleuth",
    event = { "BufReadPost", "BufNewFile" }
  },
  -- Trouble (diagnostics)
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
  },
  -- Copilot
  {
    'github/copilot.vim',
  },

}
