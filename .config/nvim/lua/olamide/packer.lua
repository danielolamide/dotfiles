-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  clone_timeout = false
}


return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "whatyouhide/vim-gotham" -- colorscheme
  -- completion
  use "hrsh7th/nvim-cmp"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets" --snippet collection
  -- lsp
  use "williamboman/nvim-lsp-installer"
  use 'neovim/nvim-lspconfig'
  use "jose-elias-alvarez/null-ls.nvim"
  --Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }
  --nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'p00f/nvim-ts-rainbow'
  --nvim tree
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  --autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  -- comments
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  --bufferline
  use { 'akinsho/bufferline.nvim', tag = "v2.*" }

  use "onsails/lspkind.nvim"
  use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
  use "tpope/vim-surround"
  use { "ray-x/lsp_signature.nvim" }

end)
