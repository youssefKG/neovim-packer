require("nvim-treesitter.configs").setup({
	prefer_git = false,
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "c", "javascript", "todotxt", "lua", "typescript", "java" },
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,
	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = {
			"html",
			"xml",
			"typescript",
			"tsx",
			"javascriptreact",
			"javascript",
			"typescriptreact",
			"markdown",
		},
	},
	highlight = {
		enable = true,
		disable = { "txt" },
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
	},
})
