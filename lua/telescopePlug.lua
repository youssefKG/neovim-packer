local builtin = require("telescope.builtin")
require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
})
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>bb", builtin.buffers, {})
vim.keymap.set("n", "<leader>p", builtin.commands, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>w", builtin.builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>w", builtin.git_files, {})
