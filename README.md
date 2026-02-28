# vim-purebasic

Vim / Neovim plugin for **PureBasic** and **SpiderBasic** — syntax highlighting, smart indentation, and syntax-based folding.

Keyword database generated directly from:
- PureBasic Reference Manual **6.21** — 1,808 functions · 1,655 constants
- SpiderBasic Reference Manual **3.02** — 777 functions · 674 constants

---

## Features

| Feature | PureBasic | SpiderBasic |
|---------|-----------|-------------|
| Syntax highlighting | ✅ | ✅ |
| Built-in functions | ✅ 1,808 | ✅ 777 |
| `#PB_*` constants | ✅ 1,655 | ✅ 674 |
| Indentation | ✅ | ✅ |
| Folding (syntax) | ✅ | ✅ |
| matchit `%` jumps | ✅ | ✅ |
| `:make` integration | ✅ | ✅ |
| Inline JS (`!` lines) | — | ✅ |
| `EnableJS`/`DisableJS` | — | ✅ |

---

## Installation

### Manual

```sh
cp -r syntax   indent   ftdetect   ftplugin   autoload   doc \
      ~/.vim/

# Neovim: use ~/.config/nvim instead of ~/.vim
```

Then rebuild the help tags:
```vim
:helptags ~/.vim/doc
```

### vim-plug

```vim
Plug 'DNSGeek/vim-purebasic'
```

### lazy.nvim

```lua
{ 'DNSGeek/vim-purebasic' }
```

### Packer

```lua
use 'DNSGeek/vim-purebasic'
```

---

## File Types

| Extension | Language |
|-----------|----------|
| `.pb` `.pbi` `.pbf` `.pbp` | PureBasic |
| `.sb` `.sbi` `.sbf` `.sbp` | SpiderBasic |

---

## Compiler Integration (`:make`)

Set the compiler location via environment variable before starting Vim:

```sh
# PureBasic
export PUREBASIC_HOME=/Applications/PureBasic      # macOS
export PUREBASIC_HOME=/usr/local/purebasic          # Linux
# Windows: set PUREBASIC_HOME=C:\Program Files\PureBasic

# SpiderBasic
export SPIDERBASIC_HOME=/Applications/SpiderBasic
```

Then `:make` compiles the current file and populates the quickfix list with any errors.

Or override `makeprg` directly:
```vim
autocmd FileType purebasic  setlocal makeprg=/path/to/pbcompiler\ \"%\"
autocmd FileType spiderbasic setlocal makeprg=/path/to/sbcompiler\ \"%\"
```

---

## Configuration

```vim
" 4-space indent instead of 2
autocmd FileType purebasic,spiderbasic setlocal shiftwidth=4 tabstop=4

" Start with all folds open
autocmd FileType purebasic,spiderbasic setlocal foldlevelstart=99

" Disable folding entirely
autocmd FileType purebasic,spiderbasic setlocal foldmethod=manual
```

---

## Folding

Folding is **syntax-based** and enabled automatically. Every major block type folds:

`Procedure` · `If` · `For` · `ForEach` · `While` · `Repeat` · `Select` · `Structure` · `Macro` · `Module` · `DeclareModule` · `With` · `CompilerIf` · `EnableJS` *(SpiderBasic)*

| Key | Action |
|-----|--------|
| `za` | Toggle fold under cursor |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zj` / `zk` | Jump to next/previous fold |

---

## License

GPL v2
