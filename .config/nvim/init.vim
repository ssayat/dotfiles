:set number	
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set smartindent
:set mousehide
:set nowrap
:syntax on 

call plug#begin()
Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ggandor/leap.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'cocopon/iceberg.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'NLKNguyen/papercolor-theme'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

"colorscheme
set background=dark
colorscheme PaperColor
" colorscheme iceberg
set laststatus=2

"keybinds
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>r :NERDTreeFind<cr>

nnoremap ,<space> :nohlsearch<CR>

nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

:set shortmess=a

"ALE settings

let g:ale_sign_error = '!!'
let g:ale_sign_warning = '--'

let g:ale_linters = { 'python': ['flake8'], 'cpp': ['clang'] }


