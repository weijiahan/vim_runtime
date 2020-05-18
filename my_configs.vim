"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_override_sign_column_highlight = 0
set cursorline
set cursorcolumn
set ambiwidth=double
" set relativenumber
set pastetoggle=<F9>
nnoremap <C-TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprev<CR>
noremap <F5> :make<CR>
nnoremap <F5> :w<CR> :silent make<CR>
inoremap <F5> <Esc>:w<CR>:silent make<CR>
vnoremap <F5> :<C-U>:w<CR>:silent make<CR>
if has("gui_running")
   noremap <M-v> "+gp
   inoremap <M-v> <C-R>+
   cnoremap <M-v> <C-R>+
   noremap <M-c> "+y
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For OneCore
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

set linespace=1


""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""
" => RainbowParentheses
""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""

" tagbar support fidl
let g:tagbar_type_fidl = {
    \ 'ctagstype' : 'fidl',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 't:typeCollection',
        \ 'm:method',
        \ 'b:broadcast',
        \ 's:struct',
        \ 'u:union',
        \ 'a:map',
        \ 'y:typedef',
        \ 'e:enumeration'
    \ ]
\ }

let g:tagbar_type_css = {
\ 'ctagstype' : 'CSS',
    \ 'ctagsbin'  : 'ctags',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

"tagbar support golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim_runtime/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" Add support for ruby files in tagbar.
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" add a definition for Objective-C to tagbar
let g:tagbar_type_objc = {
    \ 'ctagstype' : 'ObjectiveC',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 'I:implementation',
        \ 'p:Protocol',
        \ 'm:Object_method',
        \ 'c:Class_method',
        \ 'v:Global_variable',
        \ 'F:Object field',
        \ 'f:function',
        \ 'p:property',
        \ 't:type_alias',
        \ 's:type_structure',
        \ 'e:enumeration',
        \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'        : ' ',
    \ 'kind2scope' : {
        \ 'i' : 'interface',
        \ 'I' : 'implementation',
        \ 'p' : 'Protocol',
        \ 's' : 'type_structure',
        \ 'e' : 'enumeration'
    \ },
    \ 'scope2kind' : {
        \ 'interface'      : 'i',
        \ 'implementation' : 'I',
        \ 'Protocol'       : 'p',
        \ 'type_structure' : 's',
        \ 'enumeration'    : 'e'
    \ }
\ }

""""""""""""""""""""""""""""""
" => Graphviz
""""""""""""""""""""""""""""""
let g:graphviz_output_format = 'png'

""""""""""""""""""""""""""""""
" => vim-autoformat
""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
" au BufWrite * :Autoformat
let g:formatdef_clangformat_objc = '"clang-format -style=file"'


""""""""""""""""""""""""""""""
" => vim-commentary
""""""""""""""""""""""""""""""
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType cmake setlocal commentstring=#\ %s

""""""""""""""""""""""""""""""
" => vim-gitgutter
""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 5000


" autocmd FileType c,cpp,python,ruby,java,sh,javascript,fidl,proto autocmd BufWritePre <buffer> :%s/\s\+$//e
" autocmd FileType c,cpp,python,ruby,java,sh,javascript,fidl,proto autocmd BufWritePre <buffer> :StripWhitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

let g:PreviewCSSPath='/home/weijh/.vim_runtime/themes/github.css'

""""""""""""""""""""""""""""""
" => rust
""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1

if has("mac") || has("macunix")
   set macligatures
endif

