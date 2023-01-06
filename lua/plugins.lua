vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly",
	})
	use("sainnhe/everforest")

	use("rmagatti/alternate-toggler")
	use("windwp/nvim-autopairs")
	use("mg979/vim-visual-multi")
	use("gcmt/wildfire.vim")
	use("tpope/vim-surround")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })
	use("MattesGroeger/vim-bookmarks")
	use("tom-anders/telescope-vim-bookmarks.nvim")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("onsails/lspkind-nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main", config = "require('lspsaga_config')" })

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("jose-elias-alvarez/typescript.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")
	use("axelvc/template-string.nvim")
	use("j-hui/fidget.nvim")
	use("folke/todo-comments.nvim")
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})
	use("numToStr/Comment.nvim")
	use("AndrewRadev/sideways.vim")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
	use("tpope/vim-obsession")
	use("dhruvasagar/vim-prosession")
	use("f-person/git-blame.nvim")
	use({ "folke/which-key.nvim", config = "require('which_key_config')", event = "BufWinEnter" })
	use("lukas-reineke/indent-blankline.nvim")
	use("folke/neodev.nvim")
	use({ -- Autocompletion
		"hrsh7th/nvim-cmp",
		requires = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	})
	use({ "folke/twilight.nvim", config = "require('twilight_config')" })
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
	use({ "kylechui/nvim-surround", tag = "*", config = "require('surround_config')" })

	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	use({
		"rmagatti/goto-preview",
		config = function()
			require("goto-preview").setup({
				width = 120, -- Width of the floating window
				height = 15, -- Height of the floating window
				border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" }, -- Border characters of the floating window
				default_mappings = false, -- Bind default mappings
				debug = false, -- Print debug information
				opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent.
				resizing_mappings = false, -- Binds arrow keys to resizing the floating window.
				post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
				references = { -- Configure the telescope UI for slowing the references cycling window.
					telescope = require("telescope.themes").get_dropdown({ hide_preview = false }),
				},
				-- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
				focus_on_open = true, -- Focus the floating window when opening it.
				dismiss_on_move = false, -- Dismiss the floating window when moving the cursor.
				force_close = true, -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
				bufhidden = "wipe", --
			})
		end,
	})

	use("github/copilot.vim")
end)
