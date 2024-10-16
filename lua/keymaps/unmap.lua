-- Unmap file for nvchad default
--
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		-- buffer
		-- buffer new
		vim.keymap.del("n", "<leader>b")

		-- motions
		vim.keymap.del("n", "L")
	end,
})
