"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Configuration
" Modular configuration for better maintainability
" Structure: vimrcs/plugins/{category}/{plugin}.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" UI Plugins
source $VIMRC_ROOT/vimrcs/plugins/ui/lightline-nerdtree.vim

" Editing Enhancement
source $VIMRC_ROOT/vimrcs/plugins/editing/editing-enhance.vim

" Git Integration
source $VIMRC_ROOT/vimrcs/plugins/git/git.vim

" Tools
source $VIMRC_ROOT/vimrcs/plugins/tools/tools.vim

" Language Support
source $VIMRC_ROOT/vimrcs/plugins/lang/lang.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => which-key plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-auto-popmenu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tcomment plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tcomment_mapleader2=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd BufEnter NERD_tree_* call SomeFunctionToChangeTheTabLabel


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-s>'
let g:VM_maps['Find Subword Under'] = '<C-s>'
let g:VM_maps['Select All']         = '<A-s>'
let g:VM_maps['Skip Region']        = '<C-x>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ ['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'charvaluehex']]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'charvaluehex': '0x%B'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE (Asynchronous Linting & Fixing)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'objc': ['clang-format'],
\}

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gitgutter_enabled=1
" let g:gitgutter_map_keys = 0
" let g:gitgutter_max_signs = 5000
" let g:gitgutter_override_sign_column_highlight = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-signify (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_no_function_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow (luochen1990/rainbow)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Format (via ALE)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :ALEFix<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-better-whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * EnableStripWhitespaceOnSave


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_UseVersionControlTool = 0
let g:Lf_WorkingDirectoryMode = 'a'
let g:Lf_ShowDevIcons = 0
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_ShowHidden = 1
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_RootMarkers = ['.projectile']
noremap gD :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap gd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-auto-popmenu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gutentags_plus & vim-gutentags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gutentags_add_default_project_roots = 0
" let g:gutentags_project_root = ['.projectile']
" let g:gutentags_ctags_tagfile = '.tags'
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_modules = ['ctags', 'gtags_cscope']
" let g:gutentags_plus_switch = 1
" let g:gutentags_cache_dir = s:vim_tags
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" let g:gutentags_plus_nomap = 1
" if !isdirectory(s:vim_tags)
"    silent! call mkdir(s:vim_tags, 'p')
" endif

