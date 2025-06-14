"""""""""""""""
" Indentation "
"""""""""""""""

" new lines inherit indentation of previous lines
set autoindent
" show tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4


""""""""""
" Search "
""""""""""

" enable search highlighting
"set hlsearch
" incremental search that shows partial matches
set incsearch
" ignore case when searching
set ignorecase
" case-sensitive search if query contains uppercase letter
set smartcase

"""""""""""""""
" File Search "
"""""""""""""""

" Make find commands recursive by default, overwrite default
" (basically prefixing each query with **/)
set path=$PWD/**

" Display all matching files on tab completion
set wildmenu

set wildignore+=*/.git/*,*/node_modules/*,*/__pycache__/*,*/tags,*.pyc,*.o


""""""""""""""""""
" Text Rendering "
""""""""""""""""""

" enable syntax highlighting
syntax enable
" show matching paranetheses
set showmatch
" use utf-8
set encoding=utf-8


""""""""""""""""""
" User Interface "
""""""""""""""""""

" show line numbers
set number
" flash screen instead of sound on errors
set visualbell
" filename in window's title
set title
" always show cursor position
set ruler
" highlight line under cursor
"set cursorline

" use relative line numbers
set relativenumber
" always show status line
set laststatus=2

" defaults for splits
set splitbelow
set splitright


"""""""""
" Files "
"""""""""

" no backup, no swap files
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""
" Key Mappings and Custom Commands "
""""""""""""""""""""""""""""""""""""
" open/close NERDTree
map <F2> :NERDTreeToggle<CR>
" reveal file in tree
map <F3> :NERDTreeFind<CR>
" Toggle option to paste text unmodified (keep indentation)
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" Use ü to jump to tag
map ü <C-]>

""""""""""""""""""""""""""""""
" Filetype-specific settings "
""""""""""""""""""""""""""""""

" Python
"
" enable all Python syntax highlighting features
let python_highlighting_all = 1

au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab | 
	\ set autoindent |
	\ set fileformat=unix 

" web development
au BufNewFile,BufRead *.js,*.html,*.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 


"""""""""
" Other "
"""""""""

" no need to be compatible with VI
set nocompatible

" use clipboard register
set clipboard^=unnamed,unnamedplus

" enable filetype detection, plugin and indent files
filetype plugin indent on

" set tmux as slime target
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "0.1"}

au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['bib', 'css', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']


let mapleader=" "
nnoremap <leader>p "0p
