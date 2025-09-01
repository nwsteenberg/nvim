return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "/mnt/c/Users/nws/Synergy/*",
      "/mnt/c/Users/nws/Synergy",
      "~/.config/nvim",
      "~/development/*",
    },
    picker = {
      type = "fzf-lua", -- one of "telescope", "fzf-lua", or "snacks"
      preview = {
        enabled = true, -- show directory structure in Telescope preview
        git_status = false, -- show branch name, an ahead/behind counter, and the git status of each file/folder
        git_fetch = false, -- fetch from remote, used to display the number of commits ahead/behind, requires git authorization
        show_hidden = false, -- show hidden files/folders
      },
    }
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    -- optional picker
    { "ibhagwan/fzf-lua" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
