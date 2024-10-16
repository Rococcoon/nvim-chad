-- nvim/init.lua or nvim/lua/setup.lua

-- golang
-- Key binding to format golang with gofmt
vim.keymap.set(
	"n",
	"<leader>fg",  -- Keybinding: <leader>fg to format Go file
	":! /usr/bin/gofmt -w %<CR>:edit!<CR>",  -- Run gofmt and reload the file
	{ noremap = true, silent = true }
)

-- javascript
-- Key binding to format javascript with js-semi-standard
vim.keymap.set(
	"n",
	"<leader>fjs",
	":!npx semistandard --fix %<CR>:set autoread<<CR>",
	{ noremap = true, silent = true }
)

-- lua
-- Set up a keybinding to format the current Lua file
vim.keymap.set(
	"n",
	"<leader>fl",
	':lua require("formatter.stylua").format()<CR>',
	{ noremap = true, silent = true }
)

-- Set up a keybinding to format the current file using Prettier
vim.keymap.set(
	"n",
	"<leader>fp",  -- You can choose a different key combination if you'd like
	':lua require("formatter.prettier").format()<CR>',
	{ noremap = true, silent = true }
)
