syntax on                             " syntax highlighting
filetype on                           " required!
filetype plugin indent on             " required!
filetype plugin on                    " per-filetype plugins
filetype indent on                    " per-filetype indent

set autoindent                        " be smart
set smarttab                          " also smart
set shiftwidth=4                      " width of line-initial tab, maybe some other stuff
set shiftround
set softtabstop=4                     " 4 space tabs (soft)
set tabstop=4                         " 4 space tabs (hard)
set expandtab                         " use soft tabs
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,shift-jis,iso-8859-1
set mouse=nv                          " let the mouse do stuff
set clipboard=unnamed                 " share system clipboard
set bs=2                              " make backspace work like it should
set autoread                          " automatically check for changes to the file
set incsearch                         " turn on incremental searching
set scrolloff=10                      " rows on either side of the cursor when scrolling
set splitright                        " open new vertical splits on the right side
set splitbelow                        " open new horizontal splits on the bottom
set smartcase                         " case-insensitive searching
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildmenu                          " might do nothing because of wildmode
set wildmode=longest,list             " show menu for tab-completion
set wildignore+=*.pyc                 " don't need dem pyc files
set foldlevelstart=99                 " forces folds open by default
set showcmd                           " show the cmdline.  not sure what it does other than show num of lines in visual mode
set t_Co=256                          " use 256 colors
set background=dark                   " screen glare :'[
set ttyfast                           " optimize for fast terminals
set ruler                             " show line and column number always
set laststatus=2                      " always show the status line
set title                             " set window title
set noerrorbells                      " DESTROY ALL BELLS
set vb t_vb=                          " HATE BELLS
set showmatch                         " highlight matching brackets
set hlsearch                          " highlight search term
set ignorecase                        " Ignore case when searching
set showtabline=1                     " only show file tabs when more than one file open
set backupdir=/tmp,/var/tmp,~/tmp     " keep backup files in one place instead of next to the file
set directory=/tmp,/var/tmp,~/tmp     " directory to keep swap files in
set number                            " show line numbers
set listchars=tab:»·,trail:·          " when 'list' option set, show hard tabs and trailing spaces
