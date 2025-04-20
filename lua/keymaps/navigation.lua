-- CUSTOM NAVIGATION
-- by: LBRM

-- Close Buffer
vim.keymap.set("n", "<leader>bx", ":bdelete<CR>", { noremap = true, silent = true })

-- Buffer navigation
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true })

-- Split window shortcut
vim.keymap.set("n", "<leader>wh", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { noremap = true, silent = true })

-- Window navigation
vim.keymap.set("n", "<leader>wj", "<C-w>h", {
	noremap = true,
	silent = true,
	desc = "navigate window left",
})
vim.keymap.set("n", "<leader>wk", "<C-w>j", {
	noremap = true,
	silent = true,
	desc = "navigate window down",
})
vim.keymap.set("n", "<leader>wl", "<C-w>k", {
	noremap = true,
	silent = true,
	desc = "navigate window up",
})
vim.keymap.set("n", "<leader>w;", "<C-w>l", {
	noremap = true,
	silent = true,
	desc = "navigatwe window right",
})

-- Close Window
vim.keymap.set("n", "<leader>wx", ":q<CR>", {
	noremap = true,
	silent = true,
	desc = "exit window",
})

-- map keys for numeric navigation between tabs
vim.keymap.set("n", "<Leader>1", ":tabnext 1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>2", ":tabnext 2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>3", ":tabnext 3<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>4", ":tabnext 4<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>5", ":tabnext 5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>6", ":tabnext 6<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>7", ":tabnext 7<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>8", ":tabnext 8<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>9", ":tabnext 9<CR>", { noremap = true, silent = true })
