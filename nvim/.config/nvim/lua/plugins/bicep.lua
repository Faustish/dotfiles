-- Bicep support.
--
-- Neovim already detects the filetype (*.bicep -> ft=bicep), but ships no
-- syntax file for it, so without a treesitter grammar the buffer renders as
-- plain text.
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "bicep" } },
  },

  -- Optional: language server (completion, diagnostics, go-to-definition).
  -- bicep-langserver is a .NET application, so mason needs `dotnet` on PATH
  -- to install and run it. Uncomment once `dotnet-sdk` is installed.
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       bicep = {},
  --     },
  --   },
  -- },
}
