return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	-- In the new version, the main branch is highly recommended
	branch = "main",
	lazy = false,
	config = function()
		-- 1. Setup Highlighting
		-- This ensures treesitter starts for every file you open
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})

		-- 2. Handle Parser Installation
		-- In the new API, 'ensure_installed' is handled via the 'update' function
		-- in the install module, or by setting the preference.
		local install = require("nvim-treesitter.install")

		-- This is the new way to define your required parsers
		install.update({
			with_sync = false, -- Set to true if you want it to block until finished
			ensure_installed = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"regex",
				"terraform",
				"sql",
				"dockerfile",
				"toml",
				"json",
				"java",
				"groovy",
				"go",
				"gitignore",
				"graphql",
				"yaml",
				"make",
				"cmake",
				"markdown",
				"markdown_inline",
				"bash",
				"tsx",
				"css",
				"html",
				"twig",
			},
		})
	end,
}
