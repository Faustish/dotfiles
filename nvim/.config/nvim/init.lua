  -- Bootstrap lazy.nvim
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git", "clone", "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({
    { "folke/tokyonight.nvim", priority = 1000, config = function()
        vim.cmd("colorscheme tokyonight-night")
      end,
    },
    { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = true },
    { "nvim-lua/plenary.nvim" },
    { "NeogitOrg/neogit", dependencies = { "nvim-lua/plenary.nvim" }, config = true },
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" },
  config = true },
  })

  -- Keymaps
  vim.opt.clipboard = "unnamedplus"
  vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
  vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })
  vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })
  vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
