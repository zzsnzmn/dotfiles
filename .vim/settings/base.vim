syntax on                             " syntax highlighting
filetype on                           " required!
filetype plugin indent on             " required!
filetype plugin on                    " per-filetype plugins
filetype indent on                    " per-filetype indent

set number                            " show line numbers


set enc=utf-8
set fenc=utf-8
set fencs=utf-8,shift-jis,iso-8859-1
set mouse=nv                          " let the mouse do stuff
set clipboard=unnamed                 " share system clipboard
set autoread                          " automatically check for changes to the file
set incsearch                         " turn on incremental searching
set scrolloff=10                      " rows on either side of the cursor when scrolling

set splitright                        " open new vertical splits on the right side
set splitbelow                        " open new horizontal splits on the bottom

set smartcase                         " case-insensitive searching
set ignorecase                        " Ignore case when searching
set hlsearch                          " highlight search term

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.pyc                 " don't need dem pyc files
set showcmd                           " show the cmdline.  not sure what it does other than show num of lines in visual mode

set termguicolors

set laststatus=2                      " always show the status line
set ruler                             " show line and column number always
set ttyfast                           " optimize for fast terminals
set title                             " set window title

set noerrorbells                      " DESTROY ALL BELLS
set vb t_vb=                          " HATE BELLS
set showmatch                         " highlight matching brackets

set showtabline=1                     " only show file tabs when more than one file open

set backupdir=/tmp,/var/tmp,~/tmp     " keep backup files in one place instead of next to the file
set directory=/tmp,/var/tmp,~/tmp     " directory to keep swap files in
set listchars=tab:»·,trail:·          " when 'list' option set, show hard tabs and trailing spaces

