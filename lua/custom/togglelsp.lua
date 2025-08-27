-- lua/custom/cmp.lua

local M = {}

-- Your existing toggle_autocomplete function
M.toggle_autocomplete = function()
	-- ... (code from your prompt) ...
end

-- New function to toggle LSP
M.toggle_lsp = function()
	local bufnr = vim.api.nvim_get_current_buf()

	-- Check for active clients in the current buffer
	local active_clients = vim.lsp.get_clients({ bufnr = bufnr })

	if #active_clients > 0 then
		-- LSP is currently enabled, so detach all clients
		for _, client in ipairs(active_clients) do
			vim.lsp.buf_detach_client(bufnr, client.id)
		end
		print("LSP disabled for current buffer")
	else
		-- LSP is disabled, so re-enable it
		-- LspStart handles starting the correct LSP for the filetype
		vim.cmd("LspStart")
		print("LSP enabled for current buffer")
	end
end

return M
