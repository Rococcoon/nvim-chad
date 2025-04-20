--

-- whichkey
vim.keymap.set("n", "<leader>kw", function()
	vim.cmd("Whichkey " .. vim.fn.input("Whichkey: "))
end, { desc = "whichkey query lookup" })
