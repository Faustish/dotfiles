return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewFileHistory",
  },
  keys = {
    -- Everything this branch changed against dev, as a file list.
    { "<leader>gd", "<cmd>DiffviewOpen dev...HEAD<cr>", desc = "Diff branch against dev" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "History of this file" },
  },
  opts = {
    enhanced_diff_hl = true,
  },
}
