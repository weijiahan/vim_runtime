"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <silent> <leader>a <Plug>(ale_next_wrap)


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
noremap <leader>. :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
let g:which_key_map['.'] = 'find-file'
noremap <leader>' :<C-U>Leaderf! rg --recall<CR>
let g:which_key_map["\'"] = 'resume-last-search'
noremap <leader>, :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
let g:which_key_map[','] = 'switch-buffer'
nmap <Leader>` :exe "tabn ".g:lasttab<CR>
let g:which_key_map['`'] = 'last-tab'


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

let g:which_key_map['c'] = {
   \ 'name' : '+code' ,
   \ 'j'    : 'jump-to-symbol' ,
   \ 'l'    : 'function-explore' ,
   \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => file menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<leader>ff'
nnoremap <silent> <leader>fs :update<CR>
map <leader>fS :w !sudo tee > /dev/null %<CR>
map <leader>fd :e! ~/.vim_runtime/configs.vim<cr>
map <leader>fo :NERDTreeFind<cr>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>

" change file to sjis encoding
nnoremap <leader>fej :e! ++enc=sjis<CR>
nnoremap <leader>feu :e! ++enc=utf8<CR>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>fem mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

let g:which_key_map['f'] = {
   \ 'name' : '+file' ,
   \ 'd'    : 'open-vimrc-file' ,
   \ 'e'    : {
      \ 'name' : '+encode' ,
      \ 'j' : 'convert-to-sjis' ,
      \ 'u' : 'convert-to-utf8' ,
      \ 'm' : 'remove windows ^M' ,
      \ } ,
   \ 'f'    : 'find-file' ,
   \ 'm'    : 'mru' ,
   \ 'o'    : 'file-in-nerdtree' ,
   \ 's'    : 'save-file' ,
   \ 'S'    : 'save-file-with-sudo' ,
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
map <leader>tt :NERDTreeToggle<cr>
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
   \ 't'    : 'nerdtree-toggle' ,
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
xnoremap <leader>ss :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", leaderf#Rg#visual())<CR>
noremap <leader>sb :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

let g:which_key_map['s'] = {
   \ 'name' : '+search' ,
   \ 'b'    : 'fuzzy-search-current-buffer' ,
   \ 'd'    : 'search-current-directory' ,
   \ 'l'    : 'resume-last-search' ,
   \ 'r'    : 'replace-selected-text' ,
   \ 's'    : 'search-current-buffer' ,
   \ }

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
