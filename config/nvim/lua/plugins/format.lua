return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		format_on_save = {
			timeout_ms = 2500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettier", stop_after_first = true },
			css = { "prettier" },
			scss = { "prettier" },
			php = { "php_cs_fixer" },
			-- php = { "prettier" },
			twig = { "prettier" },
		},
		formatters = {
			php_cs_fixer = {
				-- If using Mason, this command is usually in your path
				command = "php-cs-fixer",
				args = {
					"fix",
					"$FILENAME",
					"--rules=@PSR12", -- Forces a standard so it doesn't need a config file
					"--no-interaction",
					"--quiet",
				},
				stdin = false,
			},
		},
	},
}
