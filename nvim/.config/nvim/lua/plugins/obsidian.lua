return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "/home/kjetilcf/Dropbox/obsidian_vault",
      },
    },
    completion = {
      nvim_cmp = false,
    },
  },
}
