syntax on
set termguicolors
set smartindent

set number
set numberwidth=4

set incsearch
set nohlsearch

set splitbelow
set splitright

set hidden

set scrolloff=8

set undofile

set mouse=a

set ignorecase
set smartcase

set cb=unnamedplus
set wrap
set linebreak
set nocompatible

filetype plugin on
" :set virtualedit=all
":setlocal spell spelllang=pl_pl

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'} " Advanced highlighting
" Plug 'https://github.com/mustache/vim-mustache-handlebars'
" Plug 'mattn/emmet-vim'
" Plug 'leafOfTree/vim-matchtag'
" Plug 'APZelos/blamer.nvim'
" Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/mbbill/undotree'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'neovim/nvim-lspconfig'

Plug 'artanikin/vim-synthwave84' "Colorscheme port

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <F12> :TagbarToggle<CR>
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>



nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>gz <cmd>UndotreeToggle<cr>


nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" colorscheme molokai
colorscheme synthwave84
set background=dark

" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

lua require('rafalrybnik')

augroup cdpwd
    autocmd!
    autocmd VimEnter * cd $PWD
augroup END
