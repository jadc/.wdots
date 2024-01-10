" mapping
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" options
"" misc
syntax on 
set timeoutlen=250
set lazyredraw
set history=1000
set undolevels=1000
set visualbell
set noerrorbells
set backspace=indent,eol,start
set clipboard=unnamedplus

"" disable backups
set nobackup
set nowritebackup
set noundofile
set noswapfile

" folding
set foldlevel=20
set foldmethod=indent
nnoremap <space> za

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" show hidden characters & fix unicode 
scriptencoding utf-8
set encoding=utf-8
set listchars=eol:⮠

" indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set autoindent
set copyindent
filetype indent on
filetype plugin indent on

" better wrap behaviour
set wrap linebreak nolist
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

" vim plug
"call plug#begin()
"
"Plug 'lervag/vimtex'
"
"call plug#end()

" vim tex
"filetype plugin indent on
"syntax enable
"let g:vimtex_compiler_latexmk = {'executable' : 'latexmk.exe'}
"let g:vimtex_quickfix_mode=0
"let g:vimtex_view_general_viewer = 'sioyek'
"let g:vimtex_view_general_options = '-reuse-instance @pdf'
