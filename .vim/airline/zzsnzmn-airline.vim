" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#zzsnzmn#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.


" Dividers
" hi StatusLine ctermbg=235 guibg=#222222 ctermfg=255 guifg=#FFFFFF cterm=bold gui=none
" hi StatusLineNC ctermbg=235 guibg=#222222 ctermfg=239 guifg=#555555 cterm=none gui=none
" hi VertSplit ctermfg=235 guifg=#222222 ctermbg=235 guibg=#222222 cterm=none gui=none
" hi ColorColumn ctermbg=233 guibg=#151515




let s:N1   = [ '#FFFFFF' , '#222222' , 255 , 232 ]
let s:N2   = [ '#555555' , '#222222' , 7 , 235 ]
let s:N3   = [ '#151515' , '#222222' , 7  , 234 ]
let g:airline#themes#zzsnzmn#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#zzsnzmn#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#zzsnzmn#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#6f005f' , 255     , 60      , ''     ] ,
      \ }


let s:I1 = [ '#00005f' , '#00dfff' , 7  , 233  ]
let s:I2 = [ '#ffffff' , '#005fff' , 255 , 235  ]
let s:I3 = [ '#ffffff' , '#000080' , 7  , 234  ]
let g:airline#themes#zzsnzmn#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#zzsnzmn#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 234      , ''     ] ,
      \ }
" let g:airline#themes#zzsnzmn#palette.insert_paste = {
      " \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      " \ }


let g:airline#themes#zzsnzmn#palette.replace = copy(g:airline#themes#zzsnzmn#palette.insert)
let g:airline#themes#zzsnzmn#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#zzsnzmn#palette.replace_modified = g:airline#themes#zzsnzmn#palette.insert_modified


let s:V1 = [ '#000000' , '#ffaf00' , 7 , 234 ]
let s:V2 = [ '#000000' , '#ff5f00' , 255 , 235 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 7  , 234  ]
let g:airline#themes#zzsnzmn#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#zzsnzmn#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 60      , ''     ] ,
      \ }


let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#zzsnzmn#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#zzsnzmn#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#zzsnzmn#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#zzsnzmn#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

