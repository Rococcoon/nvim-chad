-- CUSTOM COMMANDS
-- By: LBRM

-- Comments
vim.keymap.set("n", "<leader>ac", "gcc", { noremap = false })
vim.keymap.set("v", "<leader>ac", "gcc", { noremap = false })

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Redo
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })

-- Terminal
vim.keymap.set("n", "<leader>tk", function()
	require("nvchad.term").new({ pos = "sp" })
end, { desc = "terminal new horizontal term" })

vim.keymap.set("n", "<leader>tv", function()
	require("nvchad.term").new({ pos = "vsp" })
end, { desc = "terminal new vertial term" })
