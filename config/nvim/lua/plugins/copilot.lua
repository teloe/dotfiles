return {
	"github/copilot.vim",

	-- Community Copilot Chat plugin for chat interface
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-lua/plenary.nvim" }, -- Required utility library
			{ "nvim-telescope/telescope.nvim" }, -- Optional, for better UI pickers
		},
		config = function()
			require("CopilotChat").setup({
				-- Your configuration options here (optional)
				window = {
					-- layout = "float", -- Use a floating window layout
					width = 0.4, -- 75% of the screen width
				},
				-- auto_insert_mode = true, -- Enter insert mode when opening chat
				headers = {
					user = " Tom ",
					assistant = " Copilot ",
				},
			})
		end,
	},
}
