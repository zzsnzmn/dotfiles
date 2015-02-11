set nocompatible               " be iMproved

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
set foldmethod=syntax                 " I dunno, maybe this will set up more folds automatically?
set foldlevelstart=99                 " forces folds open by default
set nojoinspaces                      " don't use two spaces after a . when joining lines
set foldenable                        " enable fold
set showcmd                           " show the cmdline.  not sure what it does other than show num of lines in visual mode
set t_Co=256                          " use 256 colors
set background=light                  " screen glare :'[
set ttyfast                           " optimize for fast terminals
set ruler                             " show line and column number always
set laststatus=2                      " always show the status line
set title                             " set window title
set noerrorbells                      " DESTROY ALL BELLS
set vb t_vb=                          " HATE BELLS
set showmatch                         " highlight matching brackets
set hlsearch                          " highlight search term
set showtabline=1                     " only show file tabs when more than one file open
set backupdir=/tmp,/var/tmp,~/tmp     " keep backup files in one place instead of next to the file
set directory=/tmp,/var/tmp,~/tmp     " directory to keep swap files in
set number                            " show line numbers
set listchars=tab:»·,trail:·          " when 'list' option set, show hard tabs and trailing spaces
" set statusline=%f%m\ %y\ [%{&fenc}]\ (%04l/%04L,\ %02v)\ %p%%

" Set tabs by filetype
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

colorscheme blazer

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" -----------------------------------------------------------------------------
" MISC
" -----------------------------------------------------------------------------
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sensible'
Plugin 'L9'

" -----------------------------------------------------------------------------
" Programming Utils
" -----------------------------------------------------------------------------

" Syntastic
" =============================================================================
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1


" Javascript
" =============================================================================
let javascript_fold = 1                    " javascript syntax folding


" Python
" =============================================================================
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'saltstack/salt-vim'

let python_highlight_all = 1
let g:pylint_onwrite = 0
let g:netrw_list_hide = '.*\.pyc$'

" Turn off defaults
let g:pymode_lint = 0
let g:pymode_lint_write = 0
let g:pylint_onwrite = 0
let g:pytmode_lint_write = 0
let g:pymode_rope = 0
let g:pymode_run = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Syntax Highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" adds python path to vim path, so putting the cursor over an import and
" hitting 'gf' should jump to that module
" probably need to update this
if has("python")
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
endif


" Ruby
" =============================================================================
Plugin 'vim-ruby/vim-ruby'

" Chef
" =============================================================================
Plugin 'tomtom/tlib_vim'
Plugin 'vadv/vim-chef'

" -----------------------------------------------------------------------------
" Utilities
" -----------------------------------------------------------------------------

" NERDTree
" =============================================================================
Plugin 'scrooloose/nerdtree'
let g:NERDSpaceDelims = 1                  " put space after comment delimiter

" CtrlP
" =============================================================================
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>t'
map <Leader>T :CtrlPBufTag<CR> 

let g:ctrlp_use_caching = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': 'eggs$\|\.git$\|env/lib$\|node_modules$',
\}


" Airline
" =============================================================================
Plugin 'bling/vim-airline'
let g:airline_theme = 'laederon'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#eclim#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1


" tmuxline
" =============================================================================
Plugin 'edkolev/tmuxline.vim'


" Tagbar
" =============================================================================
Plugin 'majutsushi/tagbar'
map ,t :TagbarToggle<CR>


" Ag
" =============================================================================
Plugin 'rking/ag.vim'
nmap <Leader>a :Ag!


" Vimwiki
" =============================================================================
Plugin 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]


" Indent Guides
" =============================================================================
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1


" -----------------------------------------------------------------------------
" Key Bindings
" -----------------------------------------------------------------------------

" ^P toggles paste mode (from insert mode)
map <C-p> :set paste!<CR>:set paste?<CR>

" ctrl-h/ctrl-l for previous/next tab
map <C-h> gT
map <C-l> gt

" display the number of occurences of the word under the cursor
map <Leader>wc :%s///gn<CR>

" ^O for scrolling through completion options
imap <C-o> <C-p>

map <c-n> :cn<cr>

map ,n :tabnew<cr>

"For all files, start at last edited position
autocmd BufReadPost *
           \ if line("'\"") > 0 && line("'\"") <= line("$") |
           \ exe "normal g`\"" |
           \ endif

call vundle#end()
