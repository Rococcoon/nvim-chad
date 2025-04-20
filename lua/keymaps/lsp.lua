-- Define a module table to hold the keymap functions
-- local M = {}

-- Function to set up LSP-related keymaps for the buffer
-- M.setup_lsp_keymaps = function(bufnr)
-- Keymap options (noremap and silent) specific to the buffer
local opts = { noremap = true, silent = true, buffer = bufnr }

-- Go to definition (normal mode)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

-- Go to declaration (normal mode)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

-- Go to implementation (normal mode)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

-- List references (normal mode)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

-- Trigger code action (normal mode)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

-- Rename symbol (normal mode)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

-- Show hover documentation (normal mode)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

-- Show signature help (normal mode)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

-- Go to previous diagnostic (normal mode)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

-- Go to next diagnostic (normal mode)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

-- Show diagnostics in the location list (normal mode)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

-- Map <leader>d to open LSP diagnostics in Telescope
vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>", { noremap = true, silent = true })

-- Map <leader>l to show diagnostics in the location list
vim.keymap.set("n", "<leader>zd", ":lua vim.diagnostic.setloclist()<CR>", { noremap = true, silent = true })

-- Format the current buffer (normal mode)
vim.keymap.set("n", "<leader>zf", function()
	vim.lsp.buf.format({ async = true })
end, opts)
-- end

-- Return the module table
--return M
