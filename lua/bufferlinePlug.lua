vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		mode = "buffers",
		separator_style = "thick",
		show_buffer_icons = true,
		indicator = "underline",
	},
	highlights = {
		separator = {
			guifg = "#073642",
			guibg = "#002b36",
		},
		separator_selected = {
			guifg = "#073642",
		},
	},
})
