local builtin = require("telescope.builtin")
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
require("telescope").setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		file_ignore_patterns = { "node_modules", "*.o" },
		pickers = {
			find_files = {
				theme = "dropdown",
			},
		},
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
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	},
})

-- require("telescope").setup({
-- 	defaults = {
-- 		file_ignore_patterns = { "node_modules" },
-- 		layout_config = {
-- 			horizontal = {
-- 				height = 0.9,
-- 				preview_cutoff = 40,
-- 				prompt_position = "bottom",
-- 				width = 0.8,
-- 			},
-- 		},
-- 	},
-- 	pickers = {
-- 		find_files = {
-- 			theme = "dropdown",
-- 		},
-- 	},
-- })

keymap("n", "<leader><leader>", builtin.find_files, opts)
keymap("n", "<leader>bb", builtin.buffers, opts)
keymap("n", "<leader>fh", builtin.help_tags, opts)
keymap("n", "T", builtin.colorscheme, opts)
