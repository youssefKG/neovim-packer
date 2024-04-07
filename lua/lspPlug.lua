local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local opts = { noremap = true, silent = true }
local lsp_kind = require("lspkind")
-- setup your lsp servers as usual
require("mason").setup()
-- LSP Mappings + Settings -----------------------------------------------------
-- modified from: https://github.com/neovim/nvim-lspconfig#suggested-configuration
-- Basic diagnostic mappings, these will navigate to or display diagnostics
-- vim.keymap.set("n", "<leader>d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "clangd", "cssls", "jdtls" },
})
require("luasnip.loaders.from_vscode").lazy_load()
local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = "",
	})
end
sign({ name = "DiagnosticSignError", text = "✘" })
sign({ name = "DiagnosticSignWarn", text = "▲" })
sign({ name = "DiagnosticSignHint", text = "⚑" })
sign({ name = "DiagnosticSignInfo", text = "»" })
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {

	border = "rounded",
})
--
vim.diagnostic.config({
	virtual_text = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
	},
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
local on_attach = function(client, bufnr)
	-- Mappings to magical LSP functions!
	require("luasnip.loaders.from_vscode").lazy_load()
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	-- vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)
	vim.opt.completeopt = { "menu", "menuone", "noinsert" }
end

lspconfig.tsserver.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.eslint.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.tailwindcss.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.lua_ls.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.cssls.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.clangd.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.jdtls.setup({ capabilities = capabilities, on_attach = on_attach })

-- autoComplet
local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	window = {
		completion = {
			max_width = 70,
			pumheight = 12,
		},
		documentation = {
			max_width = 70,
			max_heigth = 1,
		},
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
		["<C-n>"] = cmp.mapping.select_next_item(select_opts),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp", maxlength = 2 },
		{ name = "vsnip" },
		{ name = "path" },
		{ name = "buffer" },
		{ name = "luasnip" },
	}),
	formatting = {
		fields = { "menu", "abbr", "kind" },
		format = lsp_kind.cmp_format({ maxwidth = 50, ellipsis_char = "..." }),
	},
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
})
