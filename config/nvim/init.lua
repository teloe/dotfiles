require("core.options") -- Load options
require("core.keymaps") -- Load keymaps
vim.cmd("colorscheme drab") -- Set colorscheme

-- Set up lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup({
	require("plugins.nvim-tree"),
	require("plugins.format"),
	require("plugins.lualine"),
	require("plugins.barbar"),
	require("plugins.lazydev"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	-- require("plugins.snacks"),
	require("plugins.indentation"),
	require("plugins.gitsigns"),
	require("plugins.whichkey"),
	require("plugins.comments"),
	require("plugins.colorizer"),
	require("plugins.mini"),
	require("plugins.autopairs"),
	require("plugins.tmux-nav"),
	require("plugins.colorscheme"),
	require("plugins.dropbar"),
	require("plugins.copilot"),
	require("plugins.flash"),
	require("plugins.markdown"),
	require("plugins.neogit"),
})
