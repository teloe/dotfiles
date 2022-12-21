local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"

    -- General
    use "tpope/vim-repeat"
    use "tpope/vim-unimpaired"
    use "AndrewRadev/switch.vim"
    use "christoomey/vim-tmux-navigator"
    use "tpope/vim-surround"
    use "junegunn/vim-easy-align"
    use "mg979/vim-visual-multi"

    -- Commenting
    use "terrortylor/nvim-comment"
    require("nvim_comment").setup({
        hook = function()
            if vim.api.nvim_buf_get_option(0, "filetype") == "vue" then
                require("ts_context_commentstring.internal").update_commentstring()
            end
        end
    })
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Filetree
    use "kyazdani42/nvim-tree.lua"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-fzy-native.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    use "fladson/vim-kitty"
    use "romgrk/barbar.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    require("indent_blankline").setup{}
    use "nvim-lualine/lualine.nvim"
    use "windwp/nvim-autopairs"
    require("nvim-autopairs").setup{}
    use "ggandor/leap.nvim"

    -- Icons
    use "kyazdani42/nvim-web-devicons"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "glepnir/lspsaga.nvim"

    use "aca/emmet-ls"

    -- vsnip
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
    -- Formatting
    use "sbdchd/neoformat"

    -- Colors
    use "flazz/vim-colorschemes"
    use "habamax/vim-bronzage"
    use "projekt0n/github-nvim-theme"
    use "muchzill4/doubletrouble"
    use "mcchrish/zenbones.nvim"
    use "shaunsingh/nord.nvim"
    use "phha/zenburn.nvim"
    use "toppair/prospector.nvim"
    use "adisen99/apprentice.nvim"
    use "ishan9299/modus-theme-vim"
    use "rktjmp/lush.nvim"

    -- Git
    use "tpope/vim-fugitive"

    use "TimUntersberger/neogit"
    local neogit = require('neogit')
    neogit.setup {}

    use "lewis6991/gitsigns.nvim"
    require "gitsigns".setup {
        signs = {
            add = {hl = "GitGutterAdd", text = "│"},
            change = {hl = "GitGutterChange", text = "│"},
            delete = {hl = "GitGutterDelete", text = "_"},
            topdelete = {hl = "GitGutterDelete", text = "‾"},
            changedelete = {hl = "GitGutterChangeDelete", text = "~"}
        }
    }

    -- HTML
    use "othree/html5.vim"
    use "mattn/emmet-vim"
    use "nelsyeung/twig.vim"

    -- CSS
    use "hail2u/vim-css3-syntax"
    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require "colorizer".setup()
        end
    }

    -- JS
    use "MaxMEllon/vim-jsx-pretty"
    use "elzr/vim-json"
    use "neoclide/vim-jsx-improve"

    -- Markdown
    use {"tpope/vim-markdown", ft = "markdown"}

    -- Automatically set up configuration after cloning packer.nvim
    if packer_bootstrap then
        require("packer").sync()
    end
end)
