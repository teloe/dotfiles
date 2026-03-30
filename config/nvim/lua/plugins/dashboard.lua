return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = {
					-- Font: ANSI Compact
					"▄▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄   ▄▄",
					"███▄██ ██▄██ ██ ██▀▄▀██",
					"██ ▀██  ▀█▀  ██ ██   ██",
					"                       ",
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
					"                     ",
					"⚡️ Neovim initialized",
				},
			},
		})
	end,
}
