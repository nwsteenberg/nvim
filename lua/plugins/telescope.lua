return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        defaults = {
          sorting_strategy = "ascending"
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          },
          file_browser = {
            grouped = true,
            hijack_netrw = true,
            initial_mode = "normal",
            mappings = {
              ["n"] = {
                ["<bs>"] = require("telescope._extensions.file_browser.actions").backspace,
                ["q"] = require('telescope.actions').close,
                -- your custom normal mode mappings
              },
            },
          },
        }
      }
      require("telescope").load_extension "file_browser"
      require("telescope").load_extension("ui-select")
    end
  },
}
