# Vim Runtime Configuration Documentation

## Overview

This is a highly configurable Vim configuration project modified from [Amix's vimrc](https://github.com/amix/vimrc). It provides a comprehensive set of Vim settings, plugins, and key mappings optimized for productive software development.

## Requirements

- [universal-ctags](https://github.com/universal-ctags/ctags) - For tag generation
- [ripgrep](https://github.com/BurntSushi/ripgrep) - For fast searching
- [graphviz](http://www.graphviz.org/) - For Graphviz diagram support

## Directory Structure

```
vim_runtime/
├── after/                    # Vim after/ directory for late-loading configurations
│   └── (platform-specific overrides)
├── autoload/
│   └── plug.vim             # Vim-plug plugin manager
├── plugged/                  # All installed plugins (managed by vim-plug)
│   ├── ale/                  # Asynchronous linting engine
│   ├── lightline.vim/        # Statusline plugin
│   ├── nerdtree/             # File tree explorer
│   ├── vim-which-key/        # Key binding提示插件
│   └── ... (32 plugins total)
├── plugins/                  # Local/custom plugins
│   ├── franca/              # FIDL syntax support
│   └── auto-popmenu/        # Lightweight auto-completion
├── temp_dirs/               # Temporary directories
│   └── undodir/            # Persistent undo files
├── vimrcs/                  # Modular configuration files
│   ├── basic.vim           # Basic Vim settings
│   ├── extended.vim        # Extended settings (GUI, colorschemes)
│   ├── filetypes.vim       # File-type specific settings
│   ├── plugins_config.vim  # Plugin configurations
│   ├── vim-plug.vim        # Plugin declarations
│   └── which_key_map.vim   # Key mapping definitions
├── config.vim              # User-specific overrides
├── install_vimrc.sh       # Installation script
└── fidl.ctags             # Custom ctags configuration
```

## Configuration Files

### Loading Order

The configuration files are loaded in the following order:

1. `basic.vim` - Fundamental Vim settings
2. `filetypes.vim` - File-type specific configurations
3. `vim-plug.vim` - Plugin declarations
4. `plugins_config.vim` - Plugin settings
5. `extended.vim` - Extended GUI and appearance settings
6. `which_key_map.vim` - Key binding definitions
7. `config.vim` - User-specific overrides (last)

### File Descriptions

#### basic.vim
Core Vim settings including:
- History (500 lines)
- Cursor line/column highlighting
- Search behavior (smartcase, incsearch)
- Text formatting (tabs, indentation)
- Window and buffer management
- Helper functions

#### extended.vim
Advanced settings:
- GUI font configuration (system-specific)
- Color scheme (NeoSolarized)
- Persistent undo
- Command-line enhancements
- Bracket/parentheses mappings

#### filetypes.vim
Language-specific settings:
- Python (decorators, folding, abbreviations)
- JavaScript (folding, snippets)
- Shell/Tmux configuration
- Markdown and Twig support

#### plugins_config.vim
Plugin configurations:
- NERDTree settings
- lightline (statusline)
- ALE (linting)
- vim-multiple-cursors
- Rainbow parentheses
- LeaderF
- And more...

#### vim-plug.vim
Plugin declarations using vim-plug format. Each plugin is declared with `Plug` command.

#### which_key_map.vim
Comprehensive key mapping definitions organized by category (buffer, code, file, git, etc.)

## Plugins

### UI & Appearance
| Plugin | Description |
|--------|-------------|
| lightline.vim | Light and configurable statusline/tabline |
| lightline-ale | ALE indicator for lightline |
| NeoSolarized | Solarized color theme for truecolor |

### File Management
| Plugin | Description |
|--------|-------------|
| nerdtree | Tree file system explorer |
| nerdtree-git-plugin | Git status in NERDTree |
| LeaderF | Fast file/function/text search |

### Editing Enhancement
| Plugin | Description |
|--------|-------------|
| tcomment_vim | Easy file-type sensible comments |
| vim-better-whitespace | Highlight and strip trailing whitespace |
| vim_current_word | Highlight word under cursor |
| vim-multiple-cursors | Edit in multiple places simultaneously |
| vim-easymotion | Quick jump to characters |
| vim-expand-region | Visually select incrementally |
| vim-indent-object | Select by indentation levels |
| rainbow_parentheses | Colorful parentheses |

### Git Integration
| Plugin | Description |
|--------|-------------|
| vim-fugitive | Git wrapper |
| vim-signify | Show VCS diff in sign column |
| vimagtil | Magit-like interface for Vim |

### Language Support
| Plugin | Description |
|--------|-------------|
| vim-markdown | Markdown syntax and features |
| vim-cpp-enhanced-highlight | C++ syntax enhancement |
| rust.vim | Rust language support |
| plantuml-syntax | PlantUML syntax |
| graphviz.vim | Graphviz support |
| vim-flake8 | Python syntax/style checker |

### Code Quality
| Plugin | Description |
|--------|-------------|
| ale | Asynchronous linting engine |
| vim-autoformat | Code formatting |

### Documentation
| Plugin | Description |
|--------|-------------|
| zeavim.vim | Documentation lookup (Linux/Zeal) |
| vim-dict | Dictionary support |

### Local Plugins
| Plugin | Description |
|--------|-------------|
| franca | FIDL syntax highlighting |
| auto-popmenu | Lightweight auto-completion |

## Key Mappings

### Leader Key
`<Space>` is configured as the map leader
`,` is configured as the local leader

### Essential Mappings

| Mapping | Description |
|---------|-------------|
| `<C-TAB>` | Next tab |
| `<S-TAB>` | Previous tab |
| `<C-j/k/h/l>` | Navigate windows |
| `<leader>` | Show which-key menu |

### Buffer Mappings (`<leader>b`)
| Mapping | Description |
|---------|-------------|
| `<leader>bk` | Close buffer and tab |
| `<leader>bK` | Kill all buffers |
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>bi` | Buffer list (LeaderF) |

### File Mappings (`<leader>f`)
| Mapping | Description |
|---------|-------------|
| `<leader>ff` | Find file (LeaderF) |
| `<leader>fs` | Save file |
| `<leader>fS` | Save with sudo |
| `<leader>fm` | Most recently used files |
| `<leader>fp` | Open vim_runtime config directory |
| `<leader>fej` | Convert to SJIS encoding |
| `<leader>feu` | Convert to UTF-8 encoding |

### Search Mappings (`<leader>s`)
| Mapping | Description |
|---------|-------------|
| `<leader>sd` | Search in directory |
| `<leader>ss` | Search in current buffer |
| `<leader>sb` | Fuzzy search line |
| `<leader>sl` | Resume last search |
| `<leader>sr` | Replace selected text |

### Code Mappings (`<leader>c`)
| Mapping | Description |
|---------|-------------|
| `<leader>cl` | Function explore (LeaderF) |
| `<leader>cj` | Jump to symbol |
| `<leader>ck` | Open documentation (Zeal/Dash) |

### Git Mappings (`<leader>g`)
| Mapping | Description |
|---------|-------------|
| `<leader>g/` | Open Magit buffer |

### Tab Mappings (`<leader>t`)
| Mapping | Description |
|---------|-------------|
| `<leader>tn` | New tab |
| `<leader>to` | Close other tabs |
| `<leader>tc` | Close tab |
| `<leader>tm` | Move tab |
| `<leader>ts` | Toggle spell check |
| `<leader>tp` | Toggle paste mode |
| `<leader>tg` | Toggle GitGutter |

### Window Mappings (`<leader>w`)
| Mapping | Description |
|---------|-------------|
| `<leader>ww` | Other window |
| `<leader>wd` | Delete window |
| `<leader>w-` | Split horizontally |
| `<leader>w|` | Split vertically |
| `<leader>wh/j/k/l` | Navigate windows |

### Open Mappings (`<leader>o`)
| Mapping | Description |
|---------|-------------|
| `<leader>op` | Toggle NERDTree |
| `<leader>oP` | Find file in NERDTree |

### Edit Mappings
| Mapping | Description |
|---------|-------------|
| `<M-j/k>` | Move line down/up |
| `<C-s>` | Start multiple cursors |
| `<F3>` | Autoformat code |

## Installation

### Automated Installation

```bash
./install_vimrc.sh
```

This script:
1. Creates necessary directories
2. Copies ctags configuration
3. Sets up ~/.vimrc to source all configuration files

### Manual Installation

1. Clone the repository
2. Run the install script or manually create ~/.vimrc:
   ```vim
   set runtimepath+=~/.dotfiles/vim_runtime
   set runtimepath+=~/.dotfiles/vim_runtime/after
   
   source ~/.dotfiles/vim_runtime/vimrcs/basic.vim
   source ~/.dotfiles/vim_runtime/vimrcs/filetypes.vim
   source ~/.dotfiles/vim_runtime/vimrcs/vim-plug.vim
   source ~/.dotfiles/vim_runtime/vimrcs/plugins_config.vim
   source ~/.dotfiles/vim_runtime/vimrcs/extended.vim
   source ~/.dotfiles/vim_runtime/vimrcs/which_key_map.vim
   
   try
       source ~/.dotfiles/vim_runtime/config.vim
   catch
   endtry
   ```

3. Install plugins: Open Vim and run `:PlugInstall`

## Features

### Core Features
- **Smart Search**: Case-insensitive with smart case handling
- **Persistent Undo**: Undo persists across buffer closes
- **Auto-reload**: Files reload when changed externally
- **Syntax Highlighting**: 256 color support with NeoSolarized theme

### Editor Features
- **Multi-cursor Editing**: Edit multiple locations simultaneously
- **Visual Selection**: * and # search current selection
- **Bracket Matching**: Flash on matching brackets
- **Whitespace Management**: Auto-strip trailing whitespace

### Development Features
- **Asynchronous Linting**: ALE for JS, Python, Go
- **Code Navigation**: LeaderF for file/function search
- **Git Integration**: vim-fugitive and vim-signify
- **Autoformat**: Code formatting support

### Customization
- **User Overrides**: Edit `config.vim` for personal settings
- **Key Mapping**: Comprehensive which-key integration
- **Theme Support**: Multiple color schemes via lightline

## Troubleshooting

### Plugin Not Loading
Ensure vim-plug is installed and run `:PlugInstall` in Vim.

### Colorscheme Issues
Check if terminal supports true color (`termguicolors`).

### Performance Issues
Disable heavy plugins in `vim-plug.vim` by commenting out `Plug` lines.

## Credits

Based on [Amix's vimrc](https://github.com/amix/vimrc).
