vim.opt.number = true
vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 8
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.foldmethod = "manual"
vim.opt.completeopt = { "menu", "menuone", "noinsert" }
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 6
vim.opt.pumheight = 15
vim.g.go_doc_keywordprg_enabled = 0
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.syntax = "on"
vim.filetype.add({
	extension = {
		ts = "typescript",
		tsx = "typescriptreact",
	},
})
