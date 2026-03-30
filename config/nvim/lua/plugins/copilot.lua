return {
	"github/copilot.vim",

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim" },
		},
		config = function()
			require("CopilotChat").setup({
				window = {
					-- layout = "float",
					-- width = 0.4,
				},
				-- auto_insert_mode = true,
				headers = {
					user = " Tom ",
					assistant = " Copilot ",
				},
			})
		end,
	},
}
