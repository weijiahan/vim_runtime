" Specify a directory for plugins
call plug#begin('~/.vim_runtime/plugged')

" ui
Plug 'iCyMind/NeoSolarized'               " another solarized color theme for truecolor
Plug 'itchyny/lightline.vim'              " a light and configurable statusline/tabline plugin
Plug 'maximbaz/lightline-ale'             " this plugin provides ale indicator for the lightline
Plug 'corntrace/bufexplorer'              " quickly and easily switch between buffers
Plug 'scrooloose/nerdtree'                " tree file system explorer
Plug 'Xuyuanp/nerdtree-git-plugin'        " show git status in nerdtree
Plug 'majutsushi/tagbar'                  " show tag list
Plug 'jszakmeister/markdown2ctags'        " markdown ctag support with tagbar


" editor
Plug 'tomtom/tcomment_vim'                " tcomment provides easy to use, file-type sensible comments
Plug 'ntpeters/vim-better-whitespace'     " highlight and strip all trailing whitespace characters
Plug 'dominikduda/vim_current_word'       " highlighting word under cursor and all of its occurrences
Plug 'amix/open_file_under_cursor.vim'    " open file under cursor
Plug 'terryma/vim-multiple-cursors'       " editing in many places at once
Plug 'airblade/vim-gitgutter'             " shows a git diff in the sign column
Plug 'Lokaltog/vim-easymotion'            " quickly jump to characters
Plug 'kien/rainbow_parentheses.vim'       " rainbow color for parentheses
Plug 'michaeljsmith/vim-indent-object'    " select and operate on various types of objects
Plug 'terryma/vim-expand-region'          " visually select use '+' or '-'
Plug 'tpope/vim-repeat'                   " repeat the last command using '.'


" tools
Plug 'w0rp/ale'
Plug 'rizzatti/dash.vim'                  " search api doc using dash or zeal
Plug 'ctrlpvim/ctrlp.vim'                 " full path fuzzy finder for Vim
Plug 'mileszs/ack.vim'                    " run search tool from vim
Plug 'Chiel92/vim-autoformat'             " format code
Plug 'tpope/vim-fugitive'                 " git plugin
Plug 'vim-scripts/mru.vim'                " a list of recently opened/edited files in Vim


" lang
Plug 'plasticboy/vim-markdown'            " markdown syntax
Plug 'aklt/plantuml-syntax'               " plantuml syntax
Plug 'liuchengxu/graphviz.vim'            " graphviz syntax
Plug 'nvie/vim-flake8'                    " syntax and style checker for python


" local
Plug '~/.vim_runtime/plugins/franca'      " fidl syntax


" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tpope/tpope-vim-abolish'
" Plug 'sophacles/vim-bundle-mako'
" Plug 'tpope/vim-surround'
" Plug 'junegunn/goyo.vim'
" Plug 'amix/vim-zenroom2'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'vim-scripts/mayansmoke'
" Plug 'vim-scripts/tlib'
" Plug 'kchmck/vim-coffee-script'
" Plug 'groenewege/vim-less'
" Plug 'therubymug/vim-pyte'
" Plug 'wannesm/wmgraphviz.vim'
" Plug 'morhetz/gruvbox'

call plug#end()
