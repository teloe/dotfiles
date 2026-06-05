return {
	"github/copilot.vim",
	-- Use at least node v22
	init = function()
		-- This dynamically finds where 'node' is currently pointing in your shell
		local node_path = vim.fn.exepath("node")
		if node_path ~= "" then
			vim.g.copilot_node_command = node_path
		end
	end,

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim" },
		},
		config = function()
			require("CopilotChat").setup({
				model = "auto",
				window = {
					-- layout = "float",
					-- width = 0.4,
				},
				-- auto_insert_mode = true,
				headers = {
					user = " Tom ",
					assistant = " Copilot ",
				},
			})
		end,
	},
}
