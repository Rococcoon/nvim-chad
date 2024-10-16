require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
vim.opt.relativenumber = true

-- Add transparency where desired
vim.cmd([[
	hi Normal guibg=NONE ctermbg=NONE
	hi NormalNC guibg=NONE ctermbg=NONE
	hi NormalSB guibg=NONE ctermbg=NONE
	hi NormalFloat guibg=NONE ctermbg=NONE
	hi FloatBorder guibg=NONE ctermbg=NONE
	hi SignColumn guibg=NONE ctermbg=NONE
]])
