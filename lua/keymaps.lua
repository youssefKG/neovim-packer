local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
--make space as leader key
vim.g.mapleader = " "

---------------------mods navigation --------------------
keymap("i", "jk", "<Esc>", opts) --insert mode to normal mode
keymap("i", ",,", "<Esc>", opts)
keymap("c", "jk", "<Esc>", opts) -- from command mode to normal mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("t", "jk", "<Esc>", opts)
---------------------mods navigation --------------------

--------------------- windiow navitation --------------------
keymap("n", "<C-h>", "<C-w>h", opts) --navigate to left window
keymap("n", "<C-j>", "<C-w>j", opts) --navigate to down window
keymap("n", "<C-k>", "<C-w>k", opts) --navigate to up window
keymap("n", "<C-l>", "<C-w>l", opts) --navigate to right window
--------------------- windiow navitation  ---------------------
---
---------------------Copy -------------------------------------
keymap("v", "<C-c>", '"+y', opts)
---------------------Copy -------------------------------------

--------------------- yank --------------------
keymap("n", "yw", "yiw", opts)
--------------------- yank --------------------

--------------------- deletion--------------------
--delete word
keymap("n", "dw", "diw", opts) --delete word
keymap("n", 'd"', 'di"', opts) --delete between double quotes
keymap("n", "d{", "di{", opts) --delete between curlie brayes
keymap("n", "d(", "di(", opts) --delete between parentheses
keymap("n", "d'", "di'", opts) --delete between single quotes
--------------------- deletion  --------------------

--------------------- replace --------------------
keymap("n", "cw", "ciw", opts) -- repalce word
keymap("n", "c{", "ci{", opts) --replace what's between curlie brayes
keymap("n", "c(", "ci(", opts) --repalce what's between parentheses
keymap("n", 'c"', 'ci"', opts) --repalce what's between double quotes
keymap("n", "c'", "ci'", opts) --replace what's between single quotes
--------------------- replace --------------------

--------------------resize window --------------------
keymap("n", "<C-left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-up>", ":resize +2<CR>", opts)
keymap("n", "<C-down>", ":resize -2<CR>", opts)
--------------------resize window --------------------

-------------------- buffers --------------------
keymap("n", "<S-l>", ":bn <CR>", opts)
keymap("n", "<S-h>", ":bp <CR>", opts)
keymap("n", "<leader>bb", ":buffers <CR>", opts)
keymap("n", "<leader>bd", ":bdelete! <CR>", opts)
keymap("n", "<leader>bn", ":bn <CR>", opts)
keymap("n", "<leader>bp", ":bn <CR>", opts)
-------------------- buffers --------------------

-------------------- neotree --------------------
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>Neotree toggle float <CR>", opts) -- toogle neotree explore
---------------------- neotree --------------------

--------------------UndoTree -------------------
keymap("n", "<leader>u", "<cmd>UndotreeToggle <CR>", opts)
--------------------UndoTree -------------------

-------------------- Clean search -------------------
keymap("n", "<Esc>", "<cmd>noh <CR>", opts)
-------------------- Clean search -------------------

-------------------- ZenMode -------------------
keymap("n", "<leader>z", "<cmd>ZenMode <CR>", opts) -- toogel zenMode
-------------------- ZenMode -------------------
