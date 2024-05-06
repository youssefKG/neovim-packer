require("lspsaga").setup({
	diagnostic = {
		max_height = 0.8,
		keys = {
			quit = { "q", "<ESC>" },
		},
		show_code_action = false,
	},
})
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
-- vim.diagnostic.config({
-- 	virtual_text = false,
-- })
