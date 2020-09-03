" -----------------------------------------------------------------------------
" Key Bindings
" -----------------------------------------------------------------------------

" Delete trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

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
