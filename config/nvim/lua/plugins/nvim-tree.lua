return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
    actions = {
    open_file = {
      quit_on_open = true,
      resize_window = false,
    },
  },
  renderer = {
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        git = {
          -- unstaged = "✗",
          unstaged = "!",
          -- staged = "✓",
          staged = "+",
          -- unmerged = "",
          unmerged = "#",
          -- renamed = "➜",
          renamed = "»",
          -- untracked = "★",
          untracked = "?",
          -- deleted = "",
          deleted = "-",
          ignored = "◌",
        },
      },
    },
  },
    }
  end,
}