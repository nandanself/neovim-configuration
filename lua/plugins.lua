vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "nvim-tree/nvim-web-devicons" })

	-- LSP plugins
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("onsails/lspkind-nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main", config = "require('lspsaga_config')" })
	use({
		"hrsh7th/nvim-cmp",
		requires = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	})
	use("saadparwaiz1/cmp_luasnip")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Nvim Tree
	use({ "nvim-tree/nvim-tree.lua" })

	-- Color Scheme
	use("sainnhe/everforest")

	-- Autopairs
	use("windwp/nvim-autopairs")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })

	-- Noice UI
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})

	-- Which key
	use({ "folke/which-key.nvim", config = "require('which_key_config')", event = "BufWinEnter" })

	-- Other Plugin
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")
	use("axelvc/template-string.nvim")
	use("j-hui/fidget.nvim")
	use("folke/todo-comments.nvim")
	use("numToStr/Comment.nvim")
	use("AndrewRadev/sideways.vim")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
	use("f-person/git-blame.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use({ "folke/twilight.nvim", config = "require('twilight_config')" })
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
	use({ "kylechui/nvim-surround", tag = "*", config = "require('surround_config')" })

	use("jose-elias-alvarez/typescript.nvim")
	-- use("folke/neodev.nvim")

	-- use({
	-- 	"jackMort/ChatGPT.nvim",
	-- 	config = function()
	-- 		require("chatgpt").setup({
	-- 			-- optional configuration
	-- 		})
	-- 	end,
	-- 	requires = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- })
	--
end)
