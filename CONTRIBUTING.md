# Contributing Guide

Thank you for considering contributing to this Vim configuration!

## How to Contribute

### 1. Adding New Plugins

**Step 1: Add to `vimrcs/vim-plug.vim`**

```vim
" Add to appropriate section
Plug 'author/plugin-name'

" For lazy loading:
Plug 'author/plugin-name', { 'on': 'PluginCommand' }
Plug 'author/plugin-name', { 'for': 'python' }
```

**Step 2: Create Configuration**

1. Choose the appropriate category directory:
   - `vimrcs/plugins/ui/` - UI, colorschemes, statusline
   - `vimrcs/plugins/editing/` - Editing enhancement plugins
   - `vimrcs/plugins/git/` - Git integration plugins
   - `vimrcs/plugins/tools/` - Tools (linting, formatting, search)
   - `vimrcs/plugins/lang/` - Language-specific plugins

2. Create a new file: `vimrcs/plugins/{category}/{plugin-name}.vim`

3. Add your configuration:
```vim
" {Plugin Name}
" =======
" Description of the plugin

" Mappings
noremap <leader>x :PluginCommand<CR>

" Settings
let g:plugin_option = 1
```

**Step 3: Source in `vimrcs/plugins_config.vim`**

Add at the end of the appropriate section:
```vim
source $VIMRC_ROOT/vimrcs/plugins/{category}/{plugin-name}.vim
```

### 2. Modifying Existing Configuration

**File Structure:**
```
vimrcs/
├── basic.vim           # Core Vim settings
├── extended.vim        # GUI and advanced settings
├── filetypes.vim       # Language-specific settings
├── plugins_config.vim  # Plugin configurations (sourced from plugins/)
├── vim-plug.vim        # Plugin declarations
└── which_key_map.vim  # Key mappings
```

**Guidelines:**
- Keep comments in English or Chinese consistently
- Use sections: `" ======= Section Name ======= `
- Group related settings together
- Use `try...catch` for potentially failing configurations

### 3. Updating Key Bindings

Key mappings are in `vimrcs/which_key_map.vim`.

**Adding a new mapping:**

```vim
" In the appropriate section
noremap <leader>nx :NewCommand<CR>
let g:which_key_map['n'] = {
    \ 'name' : '+new-feature',
    \ 'x'    : 'description of mapping',
    \ }
```

### 4. Testing Changes

```bash
# Check Vim config syntax
vim -u ~/.vimrc -N -c 'echo "Config OK" | quit'

# Test plugin loading
vim -c 'PlugStatus' -c 'quit'

# Check for errors
vim -c 'source ~/.vimrc' -c 'quit'
```

### 5. Submitting Changes

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-change`
3. Make your changes
4. Test thoroughly
5. Commit with clear message: `git commit -m "feat: add new plugin configuration"`
6. Push and create PR

## Style Guide

### Vim Script

```vim
" Good:
let g:option_name = value
nnoremap <silent> <leader>x :Command<CR>

" Avoid:
let g:optionName = value " camelCase
nnoremap <leader>x :Command<CR> " without silent when needed
```

### Comments

```vim
" Section Header
" ==============

" Single line comment
" Multi-line explanation
" of a complex setting
```

## Common Tasks

### Disable a Plugin Temporarily

In `vimrcs/vim-plug.vim`, comment out the Plug line:
```vim
" Plug 'author/plugin-name'
```

Then run:
```vim
:PlugClean
```

### Override a Setting

Add your overrides in `config.vim`:
```vim
" This file is loaded last, so settings here take precedence
let g:lightline.colorscheme = 'powerline'
```

## Resources

- [Vim-Plug Documentation](https://github.com/junegunn/vim-plug)
- [Vim Documentation](http://vimdoc.sourceforge.net/)
- [Amix's Original Vimrc](https://github.com/amix/vimrc)
