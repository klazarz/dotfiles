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
"set completeopt=menuone,longest
set completeopt=menuone,noselect
set cursorline



call plug#begin('~/.vim/plugged')

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'BurntSushi/ripgrep'
Plug 'dkarter/bullets.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/AutoComplPop'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " " 
"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>

" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" nnoremap <leader>pb :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <A-Left> gt 
nnoremap <A-Right> gT 

nnoremap <c-p> :Files<CR>
nnoremap <c-g> :Ag

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
"noremap <leader>= :vertical resize +5<CR>
"noremap <leader>- :vertical resize -5<CR>

nnoremap <c-s-Left> <C-W>- :vertical resize -2<CR>
nnoremap <c-s-Right> <C-W>+ :vertical resize +2<CR>

map <leader>ss :setlocal spell!<cr>


:nmap <leader>v <C-w>t<C-w>H 
:nmap <leader>h <C-w>t<C-w>K


vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"



inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })







command! -bang -nargs=* Ag
  \ call fzf#vim#grep(
  \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

lua << EOF
require'lspconfig'.pyright.setup{}
EOF



let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true

