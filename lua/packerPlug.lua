-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	-- web dev icons
	use("nvim-tree/nvim-web-devicons")
	-- theme solarized osaka
	use({ "ellisonleao/gruvbox.nvim" })
	--neo-tree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	})
	--colorized
	use("norcalli/nvim-colorizer.lua")
	-- treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	-- buferline
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	-- lsp
	-- ...other plugins before and after...
	-- LSP integration and autocomplete
	use("folke/neoconf.nvim")
	use("neovim/nvim-lspconfig")
	use("saadparwaiz1/cmp_luasnip")
	use("williamboman/mason-lspconfig.nvim")
	use("williamboman/mason.nvim")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("onsails/lspkind.nvim")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")
	-- Prettier
	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- auto paires
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	-- zen mode
	use("folke/zen-mode.nvim")
	-- rainbow
	use("p00f/nvim-ts-rainbow")
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {},
			})
		end,
	})
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"rafamadriz/friendly-snippets",
		config = function()
			-- will exclude all javascript snippets
			require("luasnip.loaders.from_vscode").load({
				exclude = { "javascript" },
			})
		end,
	})
	--themes
	use("rose-pine/neovim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("luochen1990/rainbow")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("lifepillar/vim-solarized8")
	use("navarasu/onedark.nvim")
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
	-- lsp saga
	use({ "nvimdev/lspsaga.nvim" })
	--ai
	use({ "Exafunction/codeium.vim" })
end)
