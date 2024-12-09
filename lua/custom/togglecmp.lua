-- lua/custom/cmp.lua

local M = {}

M.toggle_autocomplete = function()
  local cmp = require('cmp')

  -- Initialize the toggle state if it doesn't exist
  if vim.g.cmp_autocomplete == nil then
    vim.g.cmp_autocomplete = true -- Default to enabled
  end

  -- Toggle the state
  vim.g.cmp_autocomplete = not vim.g.cmp_autocomplete

  -- Update CMP configuration
  if vim.g.cmp_autocomplete then
    cmp.setup({
      completion = {
        autocomplete = { require('cmp.types').cmp.TriggerEvent.TextChanged }
      }
    })
    print("Autocomplete enabled")
  else
    cmp.setup({
      completion = {
        autocomplete = false
      }
    })
    print("Autocomplete disabled")
  end
end

return M
