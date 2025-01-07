-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = {
  -- css
	"cssls",

  -- golang
  "gopls",

  -- html
	"html",

  -- lua
  "lua_ls",

}
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

-- Configure Clangd with OpenCV Include Paths
lspconfig.clangd.setup({
  -- Point to where compile_commands.json is generated
  cmd = { "clangd", "--compile-commands-dir=./" },
  filetypes = {
    "c",
    "cpp",
    "h",
    "hpp",
    "objc",
    "objcpp"
  },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  -- Explicitly add include paths for OpenCV
  settings = {
    clangd = {
      includePath = {
        "/usr/include/opencv4",
        vim.fn.expand("~") .. "/raylib/src",
      },
    },
  }
})

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
