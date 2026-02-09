" Specify a directory for plugins
call plug#begin('~/.dotfiles/vim_runtime/plugged')

" ============================================================================
" KEYMAPPING
" ============================================================================
Plug 'liuchengxu/vim-which-key'


" ============================================================================
" UI
" ============================================================================
Plug 'iCyMind/NeoSolarized'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'


" ============================================================================
" EDITING
" ============================================================================
Plug 'tomtom/tcomment_vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'dominikduda/vim_current_word'
Plug 'amix/open_file_under_cursor.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'easymotion/vim-easymotion'
Plug 'kien/rainbow_parentheses.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-repeat'


" ============================================================================
" GIT
" ============================================================================
Plug 'jreybert/vimagit', { 'on': 'Vimagit' }
Plug 'tpope/vim-fugitive'


" ============================================================================
" TOOLS
" ============================================================================
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'skywind3000/vim-dict'
Plug 'liuchengxu/graphviz.vim', { 'for': 'dot' }


" ============================================================================
" LANGUAGES
" ============================================================================
Plug 'plasticboy/vim-markdown'
Plug 'aklt/plantuml-syntax'
Plug 'nvie/vim-flake8'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'


" ============================================================================
" PLATFORM-SPECIFIC
" ============================================================================
if has("mac") || has("macunix")
   Plug 'rizzatti/dash.vim'
elseif has("linux") || has("unix")
   Plug 'KabbAmine/zeavim.vim'
endif


" ============================================================================
" LOCAL
" ============================================================================
Plug '~/.dotfiles/vim_runtime/plugins/franca'
Plug '~/.dotfiles/vim_runtime/plugins/auto-popmenu'


call plug#end()
