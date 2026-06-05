local version = vim.version()
local version_str = string.format("NVIM v%d.%d.%d", version.major, version.minor, version.patch)

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		local db = require("dashboard")

		db.setup({
			theme = "hyper",
			config = {
				header = {
					"│ ╲ ││",
					"││╲╲││",
					"││ ╲ │",
					"",
					version_str,
					"",
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Apps",
						group = "DiagnosticHint",
						action = "Telescope app",
						key = "a",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "Telescope dotfiles",
						key = "d",
					},
				},
				mru = {
					limit = 6,
					icon = "󰄉 ",
					label = "Recent Files",
				},
				project = {
					limit = 4,
					icon = "󰉋 ",
					label = "Projects",
				},
				footer = {
					"",
					"",
					"⚡️ Neovim initialized",
				},
			},
		})

		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#bddcdc" })
		vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#eeeeec" })
	end,
}
