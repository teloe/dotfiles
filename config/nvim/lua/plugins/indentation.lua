return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},

	config = function()
		require("ibl").setup({
			indent = {
				char = "│",
				highlight = { "Whitespace" },
				tab_char = "│",
			},
			whitespace = {
				remove_blankline_trail = true,
				highlight = { "Whitespace" },
			},
			scope = {
				show_start = false,
				show_end = false,
			},
			exclude = {
				filetypes = { "help", "terminal", "lazy", "packer", "TelescopePrompt", "mason" },
				buftypes = { "nofile", "prompt" },
			},
		})
	end,
}
