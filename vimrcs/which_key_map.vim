" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>mw mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" change file to sjis encoding
nnoremap <leader>sj :e! ++enc=sjis<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => which key map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map =  {}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => top menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader><cr> :noh<cr>
let g:which_key_map['<CR>'] = 'disable-highlight'
map <leader>. :CtrlP<cr>
let g:which_key_map['.'] = 'find-file'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => buffer menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>bk :Bclose<cr>:tabclose<cr>gT
map <leader>bK :bufdo bd<cr>
map <leader>bN :e ~/buffer<cr>
map <leader>bm :e ~/buffer.md<cr>
nmap <script> <silent> <unique> <Leader>bi :BufExplorer<CR>
nmap <script> <silent> <unique> <Leader>bs :BufExplorerHorizontalSplit<CR>
nmap <script> <silent> <unique> <Leader>bv :BufExplorerVerticalSplit<CR>
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
map <leader>bd :cd %:p:h<cr>:pwd<cr>
let g:which_key_map['b'] = {
   \ 'name' : '+buffer' ,
   \ 'd'    : 'switch-cwd-to-buffer' ,
   \ 'i'    : 'buffer-list' ,
   \ 'k'    : 'kill-buffer' ,
   \ 'K'    : 'kill-all-buffer' ,
   \ 'm'    : 'new-markdown-buffer' ,
   \ 'n'    : 'next-buffer' ,
   \ 'N'    : 'new-empty-buffer' ,
   \ 'p'    : 'previous-buffer' ,
   \ 's'    : 'buffer-list-split' ,
   \ 'v'    : 'buffer-list-vsplit' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => file menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.f = { 'name' : '+file' }
nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'
map <leader>fd :e! ~/.vim_runtime/my_configs.vim<cr>
let g:which_key_map.f.d = 'open-vimrc-file'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tab and toggle menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.t = { 'name' : '+tab/toggle' }
map <leader>tn :tabnew<cr>
let g:which_key_map.t.n = 'new-tab'
map <leader>to :tabonly<cr>
let g:which_key_map.t.o = 'close-other-tab'
map <leader>tc :tabclose<cr>
let g:which_key_map.t.c = 'close-tab'
map <leader>tm :tabmove
let g:which_key_map.t.m = 'move-tab'
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
let g:which_key_map.t.e = 'new-tab-with-current-path'

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
let g:which_key_map.t.l = 'last-tab'

nmap <leader>tb :TagbarToggle<CR>
let g:which_key_map.t.b = 'tagbar-toggle'
map <leader>ts :setlocal spell!<cr>
let g:which_key_map.t.s = 'spell-check-toggle'
map <leader>tt :NERDTreeToggle<cr>
let g:which_key_map.t.t = 'nerdtree-toggle'
map <leader>tp :setlocal paste!<cr>
let g:which_key_map.t.p = 'past-mode-toggle'
nnoremap <silent> <leader>tg :GitGutterToggle<cr>
let g:which_key_map.t.g = 'gitgutter-toggle'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => file menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.f = { 'name' : '+file' }
map <leader>fo :NERDTreeFind<cr>
let g:which_key_map.f.o = 'file-in-nerdtree'
map <leader>ff :CtrlP<cr>
let g:which_key_map.f.f = 'find-file'
map <leader>fl :MRU<CR>
let g:which_key_map.f.l = 'access-file-list'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.s = { 'name' : '+search' }
map <leader>sd :Ack<Space>
let g:which_key_map.s.d = 'search-current-directory'
map <leader>sl :botright cope<cr>
let g:which_key_map.s.l = 'search-list'
map <leader>sn :cn<cr>
let g:which_key_map.s.n = 'next-search-result'
map <leader>sp :cp<cr>
let g:which_key_map.s.p = 'previous-search-result'
vnoremap <silent> <leader>sr :call VisualSelection('replace', '')<CR>
let g:which_key_map.s.r = 'replace-selected-text'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => help menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.h = { 'name' : '+help' }
if has("mac") || has("macunix")
    nmap <silent> <leader>hd :Dash<CR>
elseif has("linux") || has("unix")
    nmap <silent> <leader>hd <Plug>Zeavim
    vmap <silent> <leader>hd <Plug>ZVVisSelection
endif
let g:which_key_map.h.d = 'docset'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => local leader menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType dot nnoremap <localleader>c :GraphvizCompile<CR>
au FileType dot nnoremap <localleader>v :Graphviz png<CR>

if &diff
   map <silent> <localleader>1 :diffget 1<CR> :diffupdate<CR>
   map <silent> <localleader>2 :diffget 2<CR> :diffupdate<CR>
   map <silent> <localleader>3 :diffget 3<CR> :diffupdate<CR>
   map <silent> <localleader>4 :diffget 4<CR> :diffupdate<CR>
endif

let g:plantuml_executable_script='java -jar /usr/local/share/plantuml/plantuml.jar'
if has("mac") || has("macunix")
    au FileType plantuml nmap <leader>v :silent make<CR>:!open %:r.png<CR>
endif
