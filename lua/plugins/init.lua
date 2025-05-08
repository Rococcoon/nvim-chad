return {
	{
		"windwp/nvim-autopairs",
		enabled = false,
	},

	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- 🏆 Add Telescope configuration here:
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						"node_modules", -- Ignore node_modules
						"%.git", -- Ignore git files
						"public/.*", -- Ignore public folder
					},
				},
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"c",
				"cpp",
				"css",
				"go",
				"html",
				"javascript",
				"java",
				"lua",
				"typescript",
				"vim",
				"vimdoc",
			},
		},
	},

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()
		end,
	},
}
