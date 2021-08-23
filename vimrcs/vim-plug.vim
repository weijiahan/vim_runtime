" Specify a directory for plugins
call plug#begin('~/.vim_runtime/plugged')

" keymap
Plug 'liuchengxu/vim-which-key'


" ui
Plug 'iCyMind/NeoSolarized'               " another solarized color theme for truecolor
Plug 'itchyny/lightline.vim'              " a light and configurable statusline/tabline plugin
Plug 'maximbaz/lightline-ale'             " this plugin provides ale indicator for the lightline
Plug 'scrooloose/nerdtree'                " tree file system explorer
Plug 'Xuyuanp/nerdtree-git-plugin'        " show git status in nerdtree


" editor
Plug 'tomtom/tcomment_vim'                " tcomment provides easy to use, file-type sensible comments
Plug 'ntpeters/vim-better-whitespace'     " highlight and strip all trailing whitespace characters
Plug 'dominikduda/vim_current_word'       " highlighting word under cursor and all of its occurrences
Plug 'amix/open_file_under_cursor.vim'    " open file under cursor
Plug 'terryma/vim-multiple-cursors'       " editing in many places at once
" Plug 'airblade/vim-gitgutter'             " shows a git diff in the sign column
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'easymotion/vim-easymotion'          " quickly jump to characters
Plug 'kien/rainbow_parentheses.vim'       " rainbow color for parentheses
Plug 'michaeljsmith/vim-indent-object'    " select and operate on various types of objects
Plug 'terryma/vim-expand-region'          " visually select use '+' or '-'
Plug 'tpope/vim-repeat'                   " repeat the last command using '.'
Plug 'jreybert/vimagit'                   " magit for vim
Plug 'octol/vim-cpp-enhanced-highlight'   " additional vim c++ syntax highlighting


" tools
Plug 'w0rp/ale'
if has("mac") || has("macunix")
   Plug 'rizzatti/dash.vim'               " search api doc using dash
elseif has("linux") || has("unix")
   Plug 'KabbAmine/zeavim.vim'            " search api doc using zeal
endif
Plug 'Chiel92/vim-autoformat'             " format code
Plug 'tpope/vim-fugitive'                 " git plugin
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'
" Plug 'ludovicchabant/vim-gutentags'       " auto generate tag file
" Plug 'skywind3000/gutentags_plus'

" lang
Plug 'plasticboy/vim-markdown'            " markdown syntax
Plug 'aklt/plantuml-syntax'               " plantuml syntax
Plug 'liuchengxu/graphviz.vim'            " graphviz syntax
Plug 'nvie/vim-flake8'                    " syntax and style checker for python


" local
Plug '~/.vim_runtime/plugins/franca'      " fidl syntax
Plug '~/.vim_runtime/plugins/auto-popmenu'" light weight auto complete plugin skywind3000/vim-auto-popmenu


call plug#end()
