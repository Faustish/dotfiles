-- Prompt for the base branch rather than hardcoding one. Repos differ: some
-- integrate on dev, some on main. Defaults to dev since most of the Thon repos
-- use it; just hit enter there, or type another branch.
local function diff_against_base()
  vim.ui.input({ prompt = "Diff against branch: ", default = "dev" }, function(base)
    if not base or base == "" then
      return
    end
    -- --imply-local points the HEAD end of the range at the real files on disk,
    -- so the right-hand pane is editable and LSP attaches. Without it both sides
    -- are read-only buffers git builds from commits.
    vim.cmd("DiffviewOpen " .. base .. "...HEAD --imply-local")
  end)
end

return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gd", diff_against_base, desc = "Diff branch against base" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "History of this file" },
  },
  opts = {
    enhanced_diff_hl = true,
  },
}
