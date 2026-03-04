return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = "cd app && npm install", -- Force npm to run on every update/install
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
}
