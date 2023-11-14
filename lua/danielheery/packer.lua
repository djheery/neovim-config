-- Tihis file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
	-- Only required if you have packer configured as `opt`
	vim.cmd [[packadd packer.nvim]]
	  use 'wbthomason/packer.nvim'
	  use 'rstacruz/vim-closer'

	  use({
		'nvim-telescope/telescope.nvim', tag= '0.1.4',
		requires = {{'nvim-lua/plenary.nvim'}}
	  })

      use ({
        'rose-pine/neovim', 
        as = 'rose-pine', 
        config = function() vim.cmd('colorscheme rose-pine') end
      })

      use({
	    "pocco81/auto-save.nvim",
	    config = function()
		     require("auto-save").setup {

             }
	    end,
      })

    use('onsails/lspkind-nvim')
    use('tpope/vim-surround')
    use('saadparwaiz1/cmp_luasnip')
    use('numToStr/Comment.nvim')
    use('rafamadriz/friendly-snippets') 
    use('theprimeagen/vim-be-good')
	  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use('nvim-treesitter/playground')
    use('nvim-lualine/lualine.nvim')
	  use('theprimeagen/harpoon')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')
	  use('mbbill/undotree')
	  use('tpope/vim-fugitive')
    use('christoomey/vim-tmux-navigator')

    use {
          'hrsh7th/nvim-cmp',
          config = function ()
            require'cmp'.setup {
              snippet = {
                expand = function(args)
                  require'luasnip'.lsp_expand(args.body)
                end
              },

              sources = {
                { name = 'luasnip' },
                -- more sources
              },
            }
          end
    }
    use{
      'folke/todo-comments.nvim', 
      dependencies = { "nvim-lua/plenary.nvim" },
    }; 
      use {
	      'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
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

    use('folke/zen-mode.nvim')
end)
