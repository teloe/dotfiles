return {
	"kamwitsta/vinyl.nvim",
	"mitch1000/backpack",
	"AlexvZyl/nordic.nvim",
	"rose-pine/neovim",
	"rebelot/kanagawa.nvim",
	"mcauley-penney/techbase.nvim",
	"vague-theme/vague.nvim",
	"valonmulolli/heap.nvim",
	"tjdevries/colorbuddy.nvim",

	lazy = false,
	priority = 1000,

	config = function()
		require("nordic").load()
		require("backpack").setup()
		require("vinyl").setup()
		require("rose-pine").setup()
		require("kanagawa").setup({
			colors = {
				palette = {
					-- change all usages of these colors
					sumiInk0 = "#000000",
					fujiWhite = "#FFFFFF",
					springGreen = "#FFFFFF",
				},
				theme = {
					-- change specific usages for a certain theme, or for all of them
					wave = {
						ui = {
							float = {
								bg = "none",
							},
						},
					},
					dragon = {
						syn = {
							parameter = "yellow",
						},
					},
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
		})
		require("techbase").setup()
		require("vague").setup()
		require("heap").setup()
		require("colorbuddy").setup()
	end,
}
