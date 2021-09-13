set nocompatible              " required
filetype indent on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" GO
"Plugin 'fatih/vim-go'

" Auto indent
" Plugin 'vim-scripts/indentpython.vim'

" Flake 8
"Plugin 'nvie/vim-flake8'

" Tree dir
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required


" General settings
set number
set visualbell
set ignorecase
syntax off
set hlsearch
set cursorline
set ruler                           " show line and column number
set showcmd             " show (partial) command in status line

" Remaps
nmap oo o<Esc>
nmap OO O<Esc>

" Force me to not use keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <End> <NOP>
noremap <Home> <NOP>

" Yank eol
nnoremap Y y$

" Completion custom setting
set wildmode=longest,list,full
set wildmenu

" Increase history size
set viminfo='100,<500,s10,h

" Show bad white sspaces
highlight BadWhitespace guibg=red ctermbg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" ---- Minimal configuration:
"set smartindent   " Do smart autoindenting when starting a new line
"set shiftwidth=4  " Set number of spaces per auto indentation
"set expandtab     " When using <Tab>, put spaces instead of a <tab>
"  character
"
"  " ---- Good to have for consistency
"  " set tabstop=4   " Number of spaces that a <Tab> in the file counts for
"  " set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth
"
"
"
" Command mapping
"


" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set expandtab
au BufRead,BufNewFile *.h set expandtab
au BufRead,BufNewFile Makefile* set noexpandtab

"
" "
" --------------------------------------------------------------------------------
"  " configure editor with tabs and nice stuff...
"  "
"  --------------------------------------------------------------------------------

set expandtab           " enter spaces when tab is pressed
" set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new

"  line
"
"  " make backspaces more powerfull

set backspace=indent,eol,start
"

command -nargs=+ Search /def <args>
command -nargs=+ Count %s/<args>/&/n
command -nargs=+ Grep !grep -n "<args>" %:p | less

"
" Vimdiff custom
"
if &diff
    syntax off
endif
