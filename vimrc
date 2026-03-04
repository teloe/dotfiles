" --------------------------------------------
" Tom's vimrc
" author: Tom Eloe
" repo: https://github.com/teloe/dotfiles/
" --------------------------------------------

set encoding=utf8

" Settings ------------------------------- {{{

" Remap leader key to ,
let g:mapleader=','

set mouse=a

" Remap ; to :
nnoremap ; :

" Quick save
noremap <Leader>s :update<CR>

" Use Vim defaults
set nocompatible

" Keep undo history when switching buffers
set hidden

set path+=**
set fo+=t
set linebreak
set wrap
set laststatus=2

" Show line numbers
set number

" Show the cursor position
set ruler

" Display all matching files when tab complete
set wildmenu

" Disable swap files
set noswapfile

set autoindent

" Number of spaces of tab character
set tabstop=4

" Number of spaces to autoindent
set shiftwidth=4

" Convert tabs to spaces
set expandtab

" Split new window below the current one
set splitbelow

" Split new window to the right of current
set splitright

" Move freely around files
set whichwrap+=<,>,h,l,[,]

" Move cursor to end of line while in insert mode
inoremap <C-e> <Esc>A

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" Navigate beginning/ end of line move up/ down 5 lines
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k

" Toggle windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Vertical split
nnoremap vs :vsplit

" Vertical resize current buffer by 10
" nnoremap <right> :vertical resize +10<CR>
" nnoremap <left> :vertical resize -10<CR>

" Clear search
" map <silent> <esc> :noh<cr>

" Simpler go to next
" noremap <C-n> <C-f>n

" Show quotation marks in json files
autocmd Filetype json let g:indentLine_enabled=0

" Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Space to toggle folds.
autocmd FileType css,scss,vim set foldmethod=marker foldlevel=0
autocmd FileType javascript,json set foldmethod=marker foldlevel=99 foldmarker={,}
nnoremap <Space> za
vnoremap <Space> za

" Copy to osx clipboard
vnoremap <C-c> "*y<CR>"

" Markdown filetype
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Change cursor to line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q""]]"

" }}}

" Plugins ------------------------------- {{{

call plug#begin()

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='apprentice'
" let g:airline_powerline_fonts = 1

" NerdTree
Plug 'preservim/nerdtree'
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Disable cursorline
" let NERDTreeHighlightCursorline=0

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

" Custom icons for expandable/expanded directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Remove the arrows next to directories
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let NERDTreeNodeDelimiter = "\x07"

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<Cr>

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Misc
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'rstacruz/vim-closer'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'ryanoasis/vim-devicons'
Plug 'nelsyeung/twig.vim'
" Plug ''

call plug#end()

" }}}

" Colors
colo cabin
set termguicolors
