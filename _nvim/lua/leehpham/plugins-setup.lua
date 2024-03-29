local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand to configure Neovim to automatically run :PackerSync whenever plugins-setup.lua is updated.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- My plugins here
  
  -- lua functions that many plugins use
  use("nvim-lua/plenary.nvim")

  use {'morhetz/gruvbox' }

  -- Markdown syntax highlighting
  use {'preservim/vim-markdown'}

  -- tmux & split window navigation
  -- use("christoomey/vim-tmux-navigator")

  -- Maximizes and restores current window
  -- use("szw/vim-maximizer")

  -- essential plugins
  -- use("tpope/vim-surround")
  -- use("vim-scripts/ReplaceWithRegister")

  -- commenting with gc
  -- use("numToStr/Comment.nvim")

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- for file icons
    },
  }

  -- Bufferline
  use {
    "akinsho/bufferline.nvim", tag = "v3.*",
    requires = {
      "nvim-tree/nvim-web-devicons"
    }
  }

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- fuzzy finder
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- autocompletion
  use {"hrsh7th/nvim-cmp"}
  use {"hrsh7th/cmp-buffer"}
  use {"hrsh7th/cmp-path"}

  -- snippets
  use {"L3MON4D3/LuaSnip"}
  use {"saadparwaiz1/cmp_luasnip"}
  use {"rafamadriz/friendly-snippets"}

  -- Indentation guides
  use {"lukas-reineke/indent-blankline.nvim"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
