"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline
set cursorcolumn
set number
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

" change file to sjis encoding
nnoremap <leader>sj :e! ++enc=sjis<CR>

""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
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
nmap <leader>tb :TagbarToggle<CR>

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
    \ 'ctagsbin' : '~/.vim_runtime/sources_non_forked/markdown2ctags/markdown2ctags.py',
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
" => YouCompleteMe
""""""""""""""""""""""""""""""
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>yl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>


""""""""""""""""""""""""""""""
" => WM Graphviz
""""""""""""""""""""""""""""""
let g:WMGraphviz_output = "png"
nnoremap <leader>ll :GraphvizCompile<CR>
nnoremap <leader>lv :GraphvizShow<CR>

""""""""""""""""""""""""""""""
" => Mark.vim
""""""""""""""""""""""""""""""
nmap <leader>mm <Plug>MarkSet<CR>
nmap <leader>mr <Plug>MarkRegex<CR>
vmap <leader>mr <Plug>MarkRegex<CR>
nmap <leader>mc <Plug>MarkClear<CR>
nmap <leader>ma <Plug>MarkAllClear<CR>

""""""""""""""""""""""""""""""
" => ultisnips
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""""""""""""""""""""""""""""""
" => vim-autoformat
""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
" au BufWrite * :Autoformat
let g:formatdef_clangformat_objc = '"clang-format -style=file"'

""""""""""""""""""""""""""""""
" => vim-preview
""""""""""""""""""""""""""""""
au FileType markdown nmap <leader>v :Preview<CR>

""""""""""""""""""""""""""""""
" => Dash or Zeal
""""""""""""""""""""""""""""""
if has("mac") || has("macunix")
    :nnoremap <silent> <leader>d :Dash<CR>
elseif has("linux") || has("unix")
    let g:investigate_command_for_python = '/usr/bin/zeal ^s'
    :nnoremap <silent> <leader>d :!zeal "<cword>"&<CR><CR>
endif

""""""""""""""""""""""""""""""
" => vim-commentary
""""""""""""""""""""""""""""""
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType cmake setlocal commentstring=#\ %s

""""""""""""""""""""""""""""""
" => vim-go
""""""""""""""""""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>cv <Plug>(go-coverage)
au FileType go nmap <leader>c :GoCallstack<CR>
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>yg :GoDef<CR>
au FileType go nmap <leader>yf :GoReferrers<CR>
au FileType go nmap <Leader>er <Plug>(go-rename)


""""""""""""""""""""""""""""""
" => vim-gitgutter
""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 5000


""""""""""""""""""""""""""""""
" => vim-diff
""""""""""""""""""""""""""""""
map <silent> <leader>1 :diffget 1<CR> :diffupdate<CR>
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

""""""""""""""""""""""""""""""
" => plantuml
""""""""""""""""""""""""""""""
let g:plantuml_executable_script='java -jar /usr/local/share/plantuml/plantuml.jar'
if has("mac") || has("macunix")
    au FileType plantuml nmap <leader>v :silent make<CR>:!open %:r.png<CR>
endif

au FileType dot nmap <leader>v :silent make<CR>:GraphvizShow<CR>

" autocmd FileType c,cpp,python,ruby,java,sh,javascript,fidl,proto autocmd BufWritePre <buffer> :%s/\s\+$//e
" autocmd FileType c,cpp,python,ruby,java,sh,javascript,fidl,proto autocmd BufWritePre <buffer> :StripWhitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

let g:PreviewCSSPath='/home/weijh/.vim_runtime/themes/github.css'
