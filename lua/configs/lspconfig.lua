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

	-- java
	"jdtls",

	-- javascript
	"ts_ls",

	-- lua
	"lua_ls",

	-- markdown
	"marksman",
	-- "vale_ls",

	-- python
	"pyright",
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
		"objcpp",
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
	},
})

-- configuring single server, example: typescript
lspconfig.ts_ls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
})

-- Extend gopls to support .templ files
lspconfig.gopls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	filetypes = { "go", "templ" }, -- Add `templ` to supported filetypes
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

-- configure jdtls for java
lspconfig.jdtls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	filetypes = { "java" },
	settings = {
		java = {
			home = "/opt/jdk-24.0.1/bin/java",
			project = {},
			imports = {
				gradle = {
					wrapper = {
						checksums = {
							{
								sha256 = "7d3a4ac4de1c32b59bc6a4eb8ecb8e612ccd0cf1ae1e99f66902da64df296172",
								allowed = true,
							},
						},
					},
				},
			},
		},
	},
	root_dir = lspconfig.util.root_pattern("settings.gradle.kts", "build.gradle.kts", "gradlew", ".git"),
})

-- configure marksman for markdown
lspconfig.marksman.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	filetypes = { "md" },
	settings = {},
	root_dir = lspconfig.util.root_pattern(""),
})

-- Configure Pyright (Python LSP)
lspconfig.pyright.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic",
				autoImportCompletions = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
})

-- -- configure vale for markdown
-- lspconfig.vale_ls.setup({
-- 	on_attach = nvlsp.on_attach,
-- 	on_init = nvlsp.on_init,
-- 	capabilities = nvlsp.capabilities,
-- 	filetypes = { "md" },
-- 	settings = {},
-- 	root_dir = lspconfig.util.root_pattern(""),
-- })
