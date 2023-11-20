set lines=50 columns=170
" let g:airline_right_sep = '«'
" let g:airline_left_sep = '»'
" let g:airline_left_sep = ''
let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''

" highlight iCursor guifg=white guibg=steelblue
" highlight iCursor
" set guicursor+=i:ver25-iCursor
" set guicursor+=i:blinkon0

" noremap <silent>þ :noh<CR><Esc>
" noremap! þ <Esc>
" noremap! ~ <Esc>
" noremap ~ <Esc>
" noremap <M-~> <Esc>
" noremap <M-þ> <Esc>

inoremap é i
noremap é i
vnoremap ã "*y
noremap ö "*p
inoremap ö <Esc>"*p<Bar>i
vnoremap ø "*d

" noremap þ <Esc>

noremap / :noh<CR>/

" noremap! <silent>þ :noh<CR><Esc>
set guioptions+=r
set guicursor+=n-v-c:blinkon0
vnoremap <C-c> "+y


" if nerdtree#runningWindows()
"     call s:initVariable("g:NERDTreeDirArrowExpandable", "")
"     call s:initVariable("g:NERDTreeDirArrowCollapsible", "▼")
" else
"     call s:initVariable("g:NERDTreeDirArrowExpandable", "+")
"     call s:initVariable("g:NERDTreeDirArrowCollapsible", "~")
" endif
language en                 " sets the language of the messages / UI (vim)

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
