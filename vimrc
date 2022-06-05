set nocompatible              " required
filetype indent on                  " required

" General settings
set number
set visualbell
set ignorecase
syntax on
set hlsearch
set cursorline
set ruler                           " show line and column number
set showcmd             " show (partial) command in status line
set redrawtime=4000  " needed for big files like clucontrol 
set incsearch!      " dont do incremenatl search

" Remaps


" Force me to not use keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <End> <NOP>
noremap <Home> <NOP>
noremap <C-Left> <NOP>
nmap <C-Left> <NOP>

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
set softtabstop=4       " make 4 spaces on backspace
set backspace=indent,eol,start  "make the backspace indent behave
set autoindent          " copy indent from current line when starting a new

" Commands
command! -nargs=+ Search /def <args>
command! -nargs=+ Count %s/<args>/&/n
command! -nargs=+ Grep !grep -n "<args>" %:p | less
command! -nargs=0 Debug <startinsert>import\spdb;pdb.set_trace()<Esc>

"
" Vimdiff custom
"
if &diff
    syntax off
endif
