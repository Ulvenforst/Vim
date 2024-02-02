vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Telescope (leader + pf, leader + ps to grep)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use { "rose-pine/neovim", as = "rose-pine" }

  -- Highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Harpoon (C-e)
  use('theprimeagen/harpoon')

  -- Used for git (leader + gs to open git status)
  use('tpope/vim-fugitive')

  -- Used for commenting (gcc to comment out a line, gc to comment out the target of a motion)
  use('tpope/vim-commentary')

  -- Indentation guides
  use("lukas-reineke/indent-blankline.nvim")

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Autocompletion for pairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
    }
  }
end)
