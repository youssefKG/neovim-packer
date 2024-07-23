require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		javascriptreact = { "prettier", "prettierd" },
		typescript = { "prettier" },
		typescriptreact = { "prettierd" },
		json = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		c = { "clang-format", "ast-grep" },
		java = { "google-java-format" },
		prisma = { "prismals" },
		markdown = { "prettier" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
