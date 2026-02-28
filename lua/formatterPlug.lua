require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black", "autoflake" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		c = { "clang-format", "ast-grep" },
		h = { "clang-format", "ast-grep" },
		prisma = { "prismals" },
		markdown = { "prettier" },
		php = { "php_cs_fixer" },
		go = { "ast_grep" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
