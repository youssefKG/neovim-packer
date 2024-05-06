local builtin = require("telescope.builtin")
require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
})
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.grep_string, {})
vim.keymap.set("n", "<leader>bb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "T", builtin.colorscheme, {})
