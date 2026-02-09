# Key Bindings Reference

Complete list of all key mappings in this Vim configuration.

## Leader Keys

| Key | Description |
|-----|-------------|
| `<Space>` | Global leader key |
| `,` | Local leader key (for filetype-specific plugins) |

## Window Navigation

| Key | Description |
|-----|-------------|
| `<C-j>` | Move to window below |
| `<C-k>` | Move to window above |
| `<C-h>` | Move to window left |
| `<C-l>` | Move to window right |

## Tab Navigation

| Key | Description |
|-----|-------------|
| `<C-TAB>` | Next tab |
| `<S-TAB>` | Previous tab |
| `<leader>tn` | New tab |
| `<leader>to` | Close other tabs |
| `<leader>tc` | Close tab |
| `<leader>tm` | Move tab |
| `<leader>te` | New tab with current file path |
| `<leader>tl` | Last accessed tab |

## Buffer Operations (`<leader>b`)

| Key | Description |
|-----|-------------|
| `<leader>bk` | Close buffer and tab |
| `<leader>bK` | Kill all buffers |
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>bi` | Buffer list (LeaderF) |
| `<leader>bd` | Switch CWD to buffer's directory |
| `<leader>bm` | New markdown buffer |
| `<leader>bN` | New empty buffer |

## File Operations (`<leader>f`)

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find file (LeaderF) |
| `<leader>fs` | Save file |
| `<leader>fS` | Save with sudo |
| `<leader>fp` | Open vim_runtime folder |
| `<leader>fm` | Most recently used files |
| `<leader>fej` | Convert to SJIS encoding |
| `<leader>feu` | Convert to UTF-8 encoding |
| `<leader>fem` | Remove Windows ^M |
| `<leader>fy` | Copy file path to clipboard |

### Encoding Submenu (`<leader>fe`)

| Key | Description |
|-----|-------------|
| `<leader>fej` | Convert to SJIS |
| `<leader>feu` | Convert to UTF-8 |
| `<leader>fem` | Remove ^M characters |

## Search Operations (`<leader>s`)

| Key | Description |
|-----|-------------|
| `<leader>sd` | Search in directory (rg) |
| `<leader>ss` | Search in current buffer |
| `<leader>sb` | Fuzzy search line |
| `<leader>sl` | Resume last search |
| `<leader>sr` | Replace selected text |
| `<leader>sS` | Search current word in buffer |

## Code Operations (`<leader>c`)

| Key | Description |
|-----|-------------|
| `<leader>cl` | Function explore (LeaderF) |
| `<leader>cj` | Jump to symbol (bufTag) |
| `<leader>ck` | Open documentation (Zeal/Dash) |

## Git Operations (`<leader>g`)

| Key | Description |
|-----|-------------|
| `<leader>g/` | Open Magit buffer |

## Open/Toggle (`<leader>o`)

| Key | Description |
|-----|-------------|
| `<leader>op` | Toggle NERDTree |
| `<leader>oP` | Find file in NERDTree |

## Toggle Options (`<leader>t`)

| Key | Description |
|-----|-------------|
| `<leader>ts` | Toggle spell check |
| `<leader>tp` | Toggle paste mode |
| `<leader>tg` | Toggle GitGutter |

## Window Management (`<leader>w`)

| Key | Description |
|-----|-------------|
| `<leader>ww` | Other window |
| `<leader>wd` | Delete window |
| `<leader>w-` | Split horizontally |
| `<leader>w|` | Split vertically |
| `<leader>w2` | Double columns |
| `<leader>wh` | Window left |
| `<leader>wj` | Window below |
| `<leader>wk` | Window above |
| `<leader>wl` | Window right |
| `<leader>w=` | Balance windows |
| `<leader>ws` | Split below |
| `<leader>wv` | Split right |

## Help (`<leader>h`)

| Key | Description |
|-----|-------------|
| `<leader>hh` | Help tags (LeaderF) |

## Other Useful Mappings

### General

| Key | Description |
|-----|-------------|
| `<leader><TAB>` | Clear search highlight |
| `<leader>.` | Find file (LeaderF) |
| `<leader>'` | Resume last search |
| `<leader>,` | Switch buffer (LeaderF) |
| `<leader>:` | Command search (LeaderF) |
| `<leader>` ` | Last tab |
| `<F3>` | Autoformat |

### Visual Mode

| Key | Description |
|-----|-------------|
| `*` | Search current selection forward |
| `#` | Search current selection backward |

### Insert Mode

| Key | Description |
|-----|-------------|
| `$1` | Insert `()` |
| `$2` | Insert `[]` |
| `$3` | Insert `{}` |
| `$4` | Insert `{}` with newline |
| `$q` | Insert `''` |
| `$e` | Insert `""` |

### Line Movement

| Key | Description |
|-----|-------------|
| `<M-j>` | Move line down |
| `<M-k>` | Move line up |

### Multiple Cursors

| Key | Description |
|-----|-------------|
| `<C-s>` | Start multicursor / Next |
| `<A-s>` | Select all occurrences |
| `<C-p>` | Previous cursor |
| `<C-x>` | Skip current |
| `<Esc>` | Quit multicursor |

### NERDTree

| Key | Description |
|-----|-------------|
| `<leader>op` | Toggle NERDTree |
| `<leader>oP` | Find file in NERDTree |

### Graphviz (`.dot` files)

| Key | Description |
|-----|-------------|
| `<localleader>c` | Compile Graphviz |
| `<localleader>v` | View as PNG |

### Diff Mode

| Key | Description |
|-----|-------------|
| `<localleader>1-4>` | Get diff from corresponding buffer |

## Plugin-Specific Mappings

### EasyMotion

| Key | Description |
|-----|-------------|
| `<leader><leader>s` | Jump to character |
| `<leader><leader>w` | Jump to word |
| `<leader><leader>e` | Jump to end of word |

### vim-easymotion

See `:help easymotion`

### vim-which-key

| Key | Description |
|-----|-------------|
| `<Space>` | Show leader key menu |
| `,` | Show local leader menu |

## Quick Reference

```
┌─────────────────────────────────────────────┐
│  <Space>   Leader key                       │
│  ,         Local leader key                 │
│  <C-j/k/h/l>  Window navigation            │
│  <C-TAB>    Next/Prev tab                   │
├─────────────────────────────────────────────┤
│  <leader>f  File operations                 │
│  <leader>b  Buffer operations               │
│  <leader>s  Search operations              │
│  <leader>g  Git operations                 │
│  <leader>w  Window management              │
│  <leader>t  Toggles                        │
├─────────────────────────────────────────────┤
│  <F3>       Autoformat                      │
│  <C-s>      Multiple cursors                │
│  <Esc>      Quit modes                      │
└─────────────────────────────────────────────┘
```
