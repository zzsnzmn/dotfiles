set autoindent
set smarttab
set shiftround
set shiftwidth=4  " width of line-initial tab
set softtabstop=4 " 4 space tabs (soft)
set tabstop=4     " 4 space tabs (hard)
set expandtab     " use soft tabs


" HTML
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" rubbie
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" javascript
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0
autocmd Filetype coffeescript setlocal ts=2 sw=2 sts=0
