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

vim.cmd [[packadd packer.nvim]]
--
-- vim.cmd([[
--   augroup Packer
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Helpers
  use("nvim-lua/plenary.nvim")

  -- Colorscheme
  -- use({ "rktjmp/lush.nvim" })
  -- use({ "netzego/gruvbox.nvim" })
  use({ "ellisonleao/gruvbox.nvim" })

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
  use({ "nvim-telescope/telescope-symbols.nvim" }) -- emojis

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

  -- surrounds
  -- https://github.com/kylechui/nvim-surround
  use({
    "kylechui/nvim-surround",
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })

  -- Webdevel
  use("mattn/emmet-vim")

  -- Go lang
  -- use("fatih/vim-go")

  -- use({ "HallerPatrick/py_lsp.nvim" })

  -- Filetypes and syntax

  -- https://github.com/ixru/nvim-markdown
  -- use("ixru/nvim-markdown")

  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)
