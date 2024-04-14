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
  
  
  -- Autocommand that reloads neovim whenever you save this file
  vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
  
  local status, packer = pcall(require,"packer")
  if not status then
    return
  end
  
  return packer.startup(function(use)
    use("wbthomason/packer.nvim")
    
    -- lua functions that many plugins use
    use("nvim-lua/plenary.nvim")
  
    use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme
    
    -- thumx & split window navigator
    use("christoomey/vim-tmux-navigator")
    
    -- maximizes and restores current window
    use("szw/vim-maximizer") 
  
    -- essential plugins
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")
   
    -- commenting with gc
     use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  
    -- file explorer
    use("nvim-tree/nvim-tree.lua")
    -- icons 
    use("kyazdani42/nvim-web-devicons")
  
    -- statusline
    use("nvim-lualine/lualine.nvim")
    
    -- fuzzy finding
    use ({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) 
    use ({ "nvim-telescope/telescope.nvim", branch  = "0.1.x" })
  
    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
  
    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")
  
    -- managing & installing lsp servers, linters & formatters
    use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
    use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
  
     -- configuring lsp servers
     use("neovim/nvim-lspconfig") -- easily configure language servers
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      requires = {
        { "nvim-tree/nvim-web-devicons" },
        { "nvim-treesitter/nvim-treesitter" },
      },
    }) -- enhanced lsp uis
    use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  
    -- tabs plugins
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
  
    use "lukas-reineke/indent-blankline.nvim"
  
    if packer_bootstrap then
      require("packer").sync()
    end
  end)