set nocompatible               " be iMproved

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'saltstack/salt-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'klen/python-mode'
Bundle 'rking/ag.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-sensible'
Bundle 'davidhalter/jedi-vim'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vimwiki'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

" ============================================
" Configs
" ============================================

" File Types
" ----------
syntax on                      " syntax highlighting
filetype on                    " required!
filetype plugin indent on      " required!
filetype plugin on                    " per-filetype plugins
filetype indent on                    " per-filetype indent

" Tabs
" ---- 
set autoindent                        " be smart
set smarttab                          " also smart
set shiftwidth=4                      " width of line-initial tab, maybe some other stuff
set shiftround
set softtabstop=4                     " 4 space tabs (soft)
set tabstop=4                         " 4 space tabs (hard)
set expandtab                         " use soft tabs

" Encodings
" ---------
set enc=utf-8                         " still don't know, really
set fenc=utf-8                        " same
set fencs=utf-8,shift-jis,iso-8859-1  " I guess these are the ones that I ever actually see

" Misc
" ----
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
set background=dark                   " dark terminals 420 
set ttyfast                           " optimize for fast terminals
" set lazyredraw                        " don't redraw while executing macros or that sort of thing
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
set statusline=%f%m\ %y\ [%{&fenc}]\ (%04l/%04L,\ %02v)\ %p%%

" Javascript
" ----------
let javascript_fold = 1                    " javascript syntax folding


" Python
" ------
let python_highlight_all = 1               " be all that you can be, python.vim
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

" Syntastic
" ---------
let g:syntastic_check_on_open=1


" NERDTree
" --------
let g:NERDSpaceDelims = 1                  " put space after comment delimiter

" CtrlP
" -----
" let g:ctrlp_match_window_bottom = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': 'eggs$\|\.git$\|env/lib$\|node_modules$',
\}
let g:ctrlp_use_caching = 0
let g:ctrlp_map = '<leader>t'
let g:ctrlp_switch_buffer = 0

" Mimic CMD+R from Sublime Text
map <Leader>r :CtrlPBufTag<CR>

" Indent Guides
" -------------
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1

" Commands/Mappings
" -----------------
" ^P toggles paste mode (from insert mode)
map <C-p> :set paste!<CR>:set paste?<CR>

" Set up powerline
" ----------------
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


"For all files, start at last edited position
autocmd BufReadPost *
           \ if line("'\"") > 0 && line("'\"") <= line("$") |
           \ exe "normal g`\"" |
           \ endif

" ctrl-h for previous tab
map <C-h> gT
" ctrl-L for next tab
map <C-l> gt

" display the number of occurences of the word under the cursor
map <Leader>wc :%s///gn<CR>

" open files with path relative to current buffer
" map <Leader>re :e <C-R>=expand("%:p:h") . "/" <CR>
" map <Leader>rt :tabnew <C-R>=expand("%:p:h") . "/" <CR>

" command to remove trailing whitespace
:command! Rmsp %s/\s\+$//

" ^O for scrolling through completion options
imap <C-o> <C-p>

" linewise select previously pasted text
map <Leader>v V`]

" de-uglify json files
map <Leader>jl :%!json_xs -f json -t json-pretty<cr>

" LEADER A TO AG
" map <expr> <leader>a FTAckCmd()

map <c-n> :cn<cr>

map ,n :tabnew<cr>

colorscheme zellner

