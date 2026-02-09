# Vim Runtime Configuration

Modified configuration from [Amix](https://github.com/amix/vimrc).

## Quick Start

```bash
./install_vimrc.sh
```

Then in Vim:
```
:PlugInstall
```

## Requirements

- [universal-ctags](https://github.com/universal-ctags/ctags)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [graphviz](http://www.graphviz.org/)

## Features

- **32 plugins** for productivity, editing, and development
- **Modular configuration** - easy to customize
- **Key binding hints** via vim-which-key
- **Async linting** with ALE
- **Git integration** - fugitive, vim-signify, vimagtil
- **Multi-language support** - Python, C++, Rust, Go, and more

## Key Bindings

| Key | Description |
|-----|-------------|
| `<Space>` | Leader key |
| `<C-j/k/h/l>` | Navigate windows |
| `<C-TAB>` / `<S-TAB>` | Next/previous tab |

### Common Mappings

| Mapping | Description |
|---------|-------------|
| `<leader>ff` | Find file (LeaderF) |
| `<leader>fp` | Open vim_runtime folder |
| `<leader>op` | Toggle NERDTree |
| `<leader>g/` | Open Magit |
| `<leader>sd` | Search directory |

## Documentation

- [DOCUMENTATION.md](./DOCUMENTATION.md) - Full documentation
- [OPENCODE.md](./OPENCODE.md) - OpenCode integration guide

## Structure

```
vim_runtime/
├── autoload/plug.vim      # Plugin manager
├── plugged/                # 32 installed plugins
├── plugins/               # Local plugins
├── vimrcs/                # Configuration files
│   ├── basic.vim
│   ├── extended.vim
│   ├── filetypes.vim
│   ├── plugins_config.vim
│   ├── vim-plug.vim
│   └── which_key_map.vim
├── config.vim             # User overrides
└── install_vimrc.sh       # Installation script
```

## Installation

The `install_vimrc.sh` script:
1. Creates ~/.ctags.d/ directory
2. Copies fidl.ctags configuration
3. Sets up ~/.vimrc to source all config files
