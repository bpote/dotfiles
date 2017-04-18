scriptencoding utf-8

" my nvim configuration playing with nvim

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set textwidth=120
set formatoptions=tcrq
set backupcopy=yes

set hlsearch
set incsearch
set ignorecase smartcase
set title
set number

let g:mapleader = ','
let g:maplocalleader = ','

inoremap jk <ESC>

set omnifunc=syntaxcomplete#Complete

call plug#begin()

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-projectionist'  " also required for c-brenn/phoenix.vim
Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'fatih/vim-go'

Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['elm', 'elixir']
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'c-brenn/phoenix.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#functions = {}
let g:deoplete#omni#input_patterns = {}

Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
autocmd FileType elixir,sh let g:NERDSpaceDelims = 1
Plug 'tpope/vim-surround'

""" Navigation #nav
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'window': 'enew' }
nnoremap <silent> <C-P> :FZF<cr>
nnoremap <silent> <leader>a :Ag<cr>

Plug 'dietsche/vim-lastplace'
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

call plug#end()
