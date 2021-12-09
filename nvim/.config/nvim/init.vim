set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

syntax on 

set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set nu
set relativenumber

set wildmode=longest,list,full
set wildmenu

set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
" set noshowmode
set signcolumn=yes
set colorcolumn=80
set ruler
set cmdheight=1
set foldcolumn=1
set laststatus=2
set backspace=eol,start,indent
set complete+=kspell
set completeopt=menuone,longest
set cursorline



call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'BurntSushi/ripgrep'
Plug 'dkarter/bullets.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/AutoComplPop'


call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " " 
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <A-Left> gt 
nnoremap <A-Right> gT 


noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

map <leader>ss :setlocal spell!<cr>


vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

