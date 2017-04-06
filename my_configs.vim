set nocompatible               " Be iMproved
syntax on          " enable syntax highlighting
filetype on        " enable file type detection
filetype indent on " enable file type-specific indenting
filetype plugin on " enable file type-specific plugins
runtime macros/matchit.vim
set number
set shiftwidth=2
set nowrap

"tagbar to F8
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F3> :bnext<CR>
nmap <F2> :bprevious<CR>
imap jj <Esc>
" Set colorscheme to elflord
colorscheme elflord
"Set smart tabs with airline
let g:airline#extensions#tabline#enabled = 1

" set autocompletion when CTRL-P or CTRL-N are used.
" It is also used for whole-line
" . ... scan the current buffer
" b ... scan other loaded buffers that are in the buffer list
" w ... buffers from other windows
" u ... scan unloaded buffers that are in the buffer list
" U ... scan buffers that are not in the buffer list
" ] ... tag completion
" i ... scan current and included files
set complete=i,.,b,w,u,U,]

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
 let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Plugin key-mappings.
inoremap <expr><C-g> neocomplete#undo_completion()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby let g:rubycomplete_classes_in_global=1
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
 let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
 let g:neocomplete#force_omni_input_patterns = {}
endif
