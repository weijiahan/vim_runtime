# OpenCode Integration

This Vim configuration is designed to work seamlessly with OpenCode.

## OpenCode Skills Integration

This project includes several custom skills for enhanced development workflow:

### Available Skills

| Skill | Purpose |
|-------|---------|
| `superpowers/brainstorming` | Creative work - feature creation, component building |
| `superpowers/dispatching-parallel-agents` | Independent parallel tasks execution |
| `superpowers/executing-plans` | Implementation plan execution with checkpoints |
| `superpowers/finishing-a-development-branch` | Branch completion and integration options |
| `superpowers/receiving-code-review` | Code review feedback handling |
| `superpowers/requesting-code-review` | Quality verification before merging |
| `superpowers/subagent-driven-development` | Multi-agent implementation coordination |
| `superpowers/systematic-debugging` | Bug and failure analysis |
| `superpowers/test-driven-development` | Test-first development approach |
| `superpowers/using-git-worktrees` | Isolated branch development |
| `superpowers/using-superpowers` | Skill discovery and usage guidance |
| `superpowers/verification-before-completion` | Pre-commit verification |
| `superpowers/writing-plans` | Multi-step task planning |
| `superpowers/writing-skills` | Custom skill development |

### Planning Skills

| Skill | Purpose |
|-------|---------|
| `planning-with-files/commands/start` | Manus-style file-based planning |
| `planning-with-files/commands/plan` | Create task_plan.md, findings.md, progress.md |
| `planning-with-files/templates/task_plan` | Task planning template |
| `planning-with-files/templates/progress` | Progress tracking template |
| `planning-with-files/templates/findings` | Research findings template |

## Usage with OpenCode

### Quick Start

1. **Initialize project planning**:
   ```
   /planning-with-files/commands/start
   ```

2. **Before implementing features**:
   ```
   /superpowers/brainstorming
   ```

3. **For parallel tasks**:
   ```
   /superpowers/dispatching-parallel-agents
   ```

4. **Verification before completion**:
   ```
   /superpowers/verification-before-completion
   ```

## Project Structure

```
vim_runtime/
├── autoload/
│   └── plug.vim              # Vim plugin manager
├── plugged/                   # Installed plugins (32 plugins)
├── plugins/                   # Local custom plugins
├── vimrcs/                    # Modular configuration
│   ├── basic.vim             # Core settings
│   ├── extended.vim           # GUI/appearance
│   ├── filetypes.vim          # Language-specific
│   ├── plugins_config.vim     # Plugin configurations
│   ├── vim-plug.vim           # Plugin declarations
│   └── which_key_map.vim      # Key mappings
├── config.vim                 # User overrides
├── DOCUMENTATION.md           # Full documentation
├── OPENCODE.md               # This file
└── README.md                  # Quick reference
```

## Key Bindings

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader><Space>` | Clear highlight |
| `<leader>f` | File operations |
| `<leader>s` | Search operations |
| `<leader>b` | Buffer operations |
| `<leader>g` | Git operations |
| `<leader>t` | Tab/toggle operations |
| `<leader>w` | Window operations |
| `<leader>o` | Open NERDTree |

## Installation

```bash
./install_vimrc.sh
```

Then open Vim and run:
```
:PlugInstall
```

## Plugin Categories

- **UI**: lightline, NeoSolarized, NERDTree
- **Editing**: multiple-cursors, easymotion, expand-region
- **Git**: fugitive, vim-signify, vimagtil
- **Languages**: C++, Rust, Python, Markdown, PlantUML, Graphviz
- **Tools**: ALE, autoformat, LeaderF, Zeavim

## Configuration Files

Configuration is modular and loaded in order:
1. `basic.vim` - Fundamental settings
2. `filetypes.vim` - File-type settings
3. `vim-plug.vim` - Plugin declarations
4. `plugins_config.vim` - Plugin settings
5. `extended.vim` - Advanced settings
6. `which_key_map.vim` - Key mappings
7. `config.vim` - User overrides

## See Also

- [DOCUMENTATION.md](./DOCUMENTATION.md) - Complete configuration documentation
- [README.md](./README.md) - Quick reference guide
