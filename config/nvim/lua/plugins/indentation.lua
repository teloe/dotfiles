return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")

		-- This hook tells IBL to skip drawing on folded lines
		hooks.register(hooks.type.SKIP_LINE, function(tick, bufnr, line)
			return vim.fn.foldclosed(line) ~= -1
		end)

		require("ibl").setup({
			indent = {
				char = "│",
				highlight = { "Whitespace" },
				-- Low priority ensures folds/other signs show over the lines
				priority = 1,
			},
			scope = { enabled = false }, -- Scopes often interfere with folds
			exclude = {
				filetypes = { "help", "terminal", "lazy", "mason", "dashboard", "neogitstatus" },
			},
		})
	end,
}
