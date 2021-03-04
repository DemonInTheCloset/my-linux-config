" ----------------- Plugins                      -----------------
call plug#begin('~/.vim/plugged')

Plug 'bazelbuild/vim-bazel'
Plug 'dag/vim-fish'
Plug 'dense-analysis/ale'
Plug 'google/vim-maktaba'
Plug 'HE7086/cyp-vim-syntax'
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'

call plug#end()

" ----------------- Plugin Options               -----------------
let g:airline_powerline_fonts = 1 " Airline powerline fonts

let g:ale_fix_on_save = 1
let g:ale_linters = {
            \   'haskell' : ['hlint'],
            \   'python' : ['bandit', 'flake8', 'pylint'],
            \   'cpp' : [],
            \   'c' : ['clangtidy'],
            \}
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'c': ['clang-format'],
            \ 'cpp': ['clang-format'],
            \ 'python' : ['black'],
            \}

" ----------------- Environment Options          -----------------
let g:python3_host_prog = '/usr/bin/python3'

" ----------------- File Specific Tab Behaviour  -----------------
filetype plugin on
filetype plugin indent on

augroup tab_behaviour
    autocmd Filetype c          setlocal tabstop=2
    autocmd Filetype c          setlocal shiftwidth=2
    autocmd Filetype cpp        setlocal tabstop=2
    autocmd Filetype cpp        setlocal shiftwidth=2
    autocmd Filetype json       setlocal tabstop=2
    autocmd Filetype json       setlocal shiftwidth=2
    autocmd Filetype haskell    setlocal tabstop=2
    autocmd Filetype haskell    setlocal shiftwidth=2
augroup END

" ----------------- Vim Options                  -----------------
syntax enable

set termguicolors   " Allow Colorscheme
set cursorline
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
set path+=**
set wildmenu
set hlsearch ic
set ignorecase
" CoC Options
set hidden          " TextEdit might fail if hidden is not set
set shortmess+=c    " Don't pass messages to ins-completion-menu
set cmdheight=2     " Give more space for displaying messages
set nobackup        " Some servers have issues with backup files, see #649.
set nowritebackup

" ----------------- Color Settings               -----------------
set background=dark
colorscheme gruvbox

let g:rainbow_active = 1
