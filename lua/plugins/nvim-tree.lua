return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    filters = {
        git_ignored = false,
        dotfiles = true,
        git_clean = false,
        no_buffer = false,
        custom = {},
        exclude = {},
      },

  },
}
