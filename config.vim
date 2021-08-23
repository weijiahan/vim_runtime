"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set relativenumber
nnoremap <C-TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprev<CR>

" nnoremap gd <C-]>
" noremap <silent> gd :GscopeFind g <C-R><C-W><cr>
" noremap <silent> gD :GscopeFind s <C-R><C-W><cr>

if has("gui_running")
   noremap <M-v> "+gp
   inoremap <M-v> <C-R>+
   cnoremap <M-v> <C-R>+
   noremap <M-c> "+y
endif


""""""""""""""""""""""""""""""
" => Graphviz
""""""""""""""""""""""""""""""
let g:graphviz_output_format = 'png'


" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=

set tags=./.tags;,.tags
