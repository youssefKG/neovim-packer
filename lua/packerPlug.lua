-- This file can be loaded by callinj `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	----------------------------Editor----------------------------
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	-- auto-tag
	use("windwp/nvim-ts-autotag")
	-- nerd tree
	use("mbbill/undotree")
	use({
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup()
		end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	----------------------------Editor----------------------------

	-----------------------------AI Assistant---------------------------
	use({ "Exafunction/codeium.vim" })
	-----------------------------AI Assistant---------------------------

	-----------------------------LSP(autoComplete)-------------------------------
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use({ "nvimdev/lspsaga.nvim" })
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-vsnip")
	use("onsails/lspkind.nvim")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")
	-----------------------------LSP-------------------------------

	-----------------------------Fuzzy Finder(telescope)---------------------------
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-----------------------------Fuzzy Finder---------------------------

	-----------------------------Formater---------------------------
	use("stevearc/conform.nvim")
	-----------------------------Formater---------------------------

	-----------------------------Colorschemes-----------------------
	use("ellisonleao/gruvbox.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("lifepillar/vim-solarized8")
	use("navarasu/onedark.nvim")
	use("rose-pine/neovim")
	use("ayu-theme/ayu-vim")
	use("sainnhe/gruvbox-material")
	use("bluz71/vim-nightfly-colors")
	use("sainnhe/everforest")
	---------------------------Colorschemes-----------------------

	-------------------------------UI------------------------------
	use({ "nvim-lualine/lualine.nvim", requires = {
		"nvim-tree/nvim-web-devicons",
		opt = true,
	} }) -- lualine
	use("nvim-tree/nvim-web-devicons")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
	})
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({})
		end,
	})
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use("folke/zen-mode.nvim")
	use("p00f/nvim-ts-rainbow")
	use("lukas-reineke/indent-blankline.nvim")
	use("luochen1990/rainbow")
	------------------------------UI-------------------------------
end)
