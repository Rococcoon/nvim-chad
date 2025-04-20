-- nvim/lua/formatter/prettier.lua
local M = {}

-- Path to your prettier executable
local prettier_path = "/home/lulu/.local/share/nvim/mason/bin/prettier"

-- Function to format files using prettier
function M.format()
	-- Write file so formatting works on disk content
	vim.cmd("write")

	-- Get the current buffer name (the file you're editing)
	local buf_name = vim.api.nvim_buf_get_name(0)

	-- Execute the prettier formatter with stdin-filepath to preserve language detection
	vim.fn.system(prettier_path .. " --write " .. vim.fn.shellescape(buf_name))

	-- Reload the buffer after formatting
	vim.cmd("edit")
end

return M
