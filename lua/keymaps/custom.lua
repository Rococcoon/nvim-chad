-- Toggle CMP
vim.api.nvim_set_keymap(
	"n",
	"<leader>tc", -- Change <leader>tc to your preferred keybinding
	":lua require('custom.togglecmp').toggle_autocomplete()<CR>",
	{ noremap = true, silent = true }
)

-- Toggle LSP
vim.api.nvim_set_keymap(
	"n",
	"<leader>tl",
	":lua require('custom.togglelsp').toggle_lsp()<CR>",
	{ noremap = true, silent = true }
)
