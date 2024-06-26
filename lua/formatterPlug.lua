require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		C = { "clang-format", "ast-grep" },
		java = { "jdtls", "ast-grep" },
	},
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
