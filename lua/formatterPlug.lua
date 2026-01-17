require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		javascriptreact = { "prettier", "prettierd" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		h = { "clang-format", "ast-grep" },
		java = { "google-java-format" },
		prisma = { "prismals" },
		markdown = { "prettier" },
		php = { "php_cs_fixer" },
		go = { "ast_grep" },
		c = { "clang-format", "ast-grep" },
		python = { "autoflake" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
