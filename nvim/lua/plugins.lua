
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- Status bar
  use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		 config = function()
			 require('lualine').setup()
		 end
  }

	-- Tabs
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('bufferline').setup()
		end
	}
	-- Highlight 
  use {
  	'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
	-- LSP
	use 'neovim/nvim-lspconfig'
	use {
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end
	}
  use {
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup{
				ensure_installed = { "sumneko_lua", "rust_analyzer", 'pyright', },
			}
		end
	}
	use 'folke/tokyonight.nvim'
	vim.cmd[[colorscheme tokyonight-moon]]

end)
