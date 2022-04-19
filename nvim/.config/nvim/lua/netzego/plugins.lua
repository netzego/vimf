-- $XDG_CONFIG_HOME/.nvim/lua/plugins.lua
-- https://github.com/wbthomason/packer.nvim#bootstrapping

-- local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
--
-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--   PACKER_BOOTSTRAP = vim.fn.system({
--     "git",
--     "clone",
--     "--depth",
--     "1",
--     "https://github.com/wbthomason/packer.nvim",
--     install_path,
--   })
-- end

-- vim.cmd [[packadd packer.nvim]]
--
-- vim.cmd([[
--   augroup Packer
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

require("packer").startup(function(use)
  -- Helpers
  use("nvim-lua/plenary.nvim")

  -- Colorscheme
  use({ "rktjmp/lush.nvim" })
  use({ "netzego/gruvbox.nvim" })
  -- use({ "ellisonleao/gruvbox.nvim" })

  -- Comments
  use({ "numToStr/Comment.nvim" })

  -- Lsp
  use("neovim/nvim-lspconfig")
  use("jose-elias-alvarez/null-ls.nvim")

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/nvim-treesitter-textobjects" })

  -- Telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim" })

  -- Statusline
  use("nvim-lualine/lualine.nvim")

  -- Git
  use("tpope/vim-fugitive")
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })

  -- Snippets
  use("dcampos/nvim-snippy")
  use("honza/vim-snippets")

  -- Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  -- use("hrsh7th/cmp-buffer")
  use("dcampos/cmp-snippy")
  -- use("hrsh7th/cmp-path")
  -- use("hrsh7th/cmp-cmdline")

  -- TODO
  -- surrounds

  -- use({ "HallerPatrick/py_lsp.nvim" })

  -- Filetypes and syntax

  -- https://github.com/ixru/nvim-markdown
  -- use("ixru/nvim-markdown")

  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)
