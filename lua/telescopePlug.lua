local builtin = require("telescope.builtin")
local keymap = vim.keymap.set

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		layout_config = {
			horizontal = {
				height = 0.9,
				preview_cutoff = 40,
				prompt_position = "bottom",
				width = 0.8,
			},
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
	},
})

keymap("n", "<leader><leader>", builtin.find_files, {})
keymap("n", "<leader>fg", builtin.grep_string, {})
keymap("n", "<leader>bb", builtin.buffers, {})
keymap("n", "<leader>fh", builtin.help_tags, {})
keymap("n", "T", builtin.colorscheme, {})
