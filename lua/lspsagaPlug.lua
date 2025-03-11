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
vim.keymap.set("n", "<leader>p", "<cmd>Lspsaga diagnostic_jump_prev <CR>", opts)
vim.keymap.set("n", "<leader>n", "<cmd>Lspsaga diagnostic_jump_next <CR>", opss)
vim.keymap.set("n", "<leader>l", "<cmd>Lspsaga show_cursor_diagnostics <CR>", opts)
vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_workspace_diagnostics<CR>", opts)
-- vim.diagnostic.config({
-- vim.diagnostic.config({
-- 	virtual_text = false,
-- })
