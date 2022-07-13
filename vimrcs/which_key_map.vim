"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" nmap <silent> <leader>a <Plug>(ale_next_wrap)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => which key map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map =  {}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => top menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader><tab> :noh<cr>
let g:which_key_map['<Tab>'] = 'disable-highlight'
noremap <leader>. :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
let g:which_key_map['.'] = 'find-file'
noremap <leader>' :<C-U>Leaderf! rg --recall<CR>
let g:which_key_map["\'"] = 'resume-last-search'
noremap <leader>, :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
let g:which_key_map[','] = 'switch-buffer'
nmap <Leader>` :exe "tabn ".g:lasttab<CR>
let g:which_key_map['`'] = 'last-tab'
noremap <leader>: :<C-U><C-R>=printf("Leaderf command %s", "")<CR><CR>
let g:which_key_map[':'] = 'command'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => buffer menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>bk :Bclose<cr>:tabclose<cr>gT
map <leader>bK :bufdo bd<cr>
map <leader>bN :e ~/buffer<cr>
map <leader>bm :e ~/buffer.md<cr>
let g:Lf_ShortcutB = '<leader>bi'
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
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => code menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>cj :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>cl :LeaderfFunction!<CR>
if has("mac") || has("macunix")
    nmap <silent> <leader>ck :Dash<CR>
elseif has("linux") || has("unix")
    nmap <silent> <leader>ck <Plug>Zeavim
    vmap <silent> <leader>ck <Plug>ZVVisSelection
endif
let g:which_key_map['c'] = {
   \ 'name' : '+code' ,
   \ 'j'    : 'jump-to-symbol' ,
   \ 'l'    : 'function-explore' ,
   \ 'k'    : 'docset' ,
   \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => file menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<leader>ff'
nnoremap <silent> <leader>fs :update<CR>
map <leader>fS :w !sudo tee > /dev/null %<CR>
map <leader>fp :e! ~/.vim_runtime/<cr>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>

" change file to sjis encoding
nnoremap <leader>fej :e! ++enc=sjis<CR>
nnoremap <leader>feu :e! ++enc=utf8<CR>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>fem mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
noremap <silent> <Leader>fy :let @+ = expand("%:p")<cr>

let g:which_key_map['f'] = {
   \ 'name' : '+file' ,
   \ 'e'    : {
      \ 'name' : '+encode' ,
      \ 'j' : 'convert-to-sjis' ,
      \ 'u' : 'convert-to-utf8' ,
      \ 'm' : 'remove windows ^M' ,
      \ } ,
   \ 'f'    : 'find-file' ,
   \ 'm'    : 'mru' ,
   \ 'p'    : 'open-vimrc-config-dir' ,
   \ 's'    : 'save-file' ,
   \ 'S'    : 'save-file-with-sudo' ,
   \ 'y'    : 'copy-file-path' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:magit_show_magit_mapping     = get(g:, 'magit_show_magit_mapping',        '<leader>g/' )

let g:which_key_map['g'] = {
   \ 'name' : '+git' ,
   \ '/'    : 'magit-buffer' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => open menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>op :NERDTreeToggle<cr>
map <leader>oP :NERDTreeFind<cr>

let g:which_key_map['o'] = {
   \ 'name' : '+open' ,
   \ 'p'    : 'nerdtree-toggle' ,
   \ 'P'    : 'file-in-nerdtree' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tab and toggle menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

map <leader>ts :setlocal spell!<cr>
map <leader>tp :setlocal paste!<cr>
nnoremap <silent> <leader>tg :GitGutterToggle<cr>

let g:which_key_map['t'] = {
   \ 'name' : '+tab/toggle' ,
   \ 'n'    : 'new-tab' ,
   \ 'o'    : 'close-other-tab' ,
   \ 'c'    : 'close-tab' ,
   \ 'm'    : 'move-tab' ,
   \ 'e'    : 'new-tab-with-current-path' ,
   \ 'l'    : 'last-tab' ,
   \ 's'    : 'spell-check-toggle' ,
   \ 'p'    : 'past-mode-toggle' ,
   \ 'g'    : 'gitgutter-toggle' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>sd :<C-U><C-R>=printf("Leaderf! rg -e ")<CR>
xnoremap <leader>sd :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap <leader>sl :<C-U>Leaderf! rg --recall<CR>
vnoremap <silent> <leader>sr :call VisualSelection('replace', '')<CR>
noremap <leader>ss :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e ")<CR>
noremap <leader>sS :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
xnoremap <leader>sS :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", leaderf#Rg#visual())<CR>
noremap <leader>sb :<C-U><C-R>=printf("Leaderf! line %s", "")<CR><CR>
noremap <leader>si :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>

let g:which_key_map['s'] = {
   \ 'name' : '+search' ,
   \ 'b'    : 'fuzzy-search-line' ,
   \ 'd'    : 'search-current-directory' ,
   \ 'l'    : 'resume-last-search' ,
   \ 'i'    : 'jump-to-symbol' ,
   \ 'r'    : 'replace-selected-text' ,
   \ 's'    : 'search-current-buffer' ,
   \ 'S'    : 'search-current-buffer-at-point' ,
   \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => help menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map.h = { 'name' : '+help' }
noremap <leader>hh :<C-U><C-R>=printf("Leaderf help %s", "")<CR><CR>
let g:which_key_map.h.h = 'help-tags'


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => window menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ }
