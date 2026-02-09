" Tools Plugins Configuration
" =========================
" ALE, autoformat, LeaderF, etc.

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE (Asynchronous Linting)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autoformat
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
" au BufWrite * :Autoformat
let g:formatdef_clangformat_objc = '"clang-format -style=file"'


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-better-whitespace
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * EnableStripWhitespaceOnSave


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-current-word
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (uses defaults)


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LeaderF
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-dict
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (uses defaults)
