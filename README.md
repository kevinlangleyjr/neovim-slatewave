<div align="center">

# Slatewave for Neovim

A dark Neovim colorscheme built around a slate foundation and a teal signature, with sky / rose / purple / amber accents pulled from the same palette as the [companion VSCode theme](https://github.com/kevinlangleyjr/vscode-slatewave), [Sublime Text theme](https://github.com/kevinlangleyjr/sublime-text-slatewave), and [Oh My Posh prompt](https://github.com/kevinlangleyjr/slatewave-omp). Designed so every tool you use speaks the same visual language.

> _Slate below, teal above._

</div>

---

## What's in the box

| Path | Purpose |
|---|---|
| `colors/slatewave.lua` | `:colorscheme slatewave` entry point |
| `lua/slatewave/init.lua` | `setup()` + `load()`, terminal colors, override hook |
| `lua/slatewave/palette.lua` | Raw palette — single source of truth for hexes |
| `lua/slatewave/config.lua` | Defaults + deep-merge for user options |
| `lua/slatewave/groups/editor.lua` | Core UI: Normal, Pmenu, StatusLine, Visual, Diff, Diagnostics, LSP refs, spell |
| `lua/slatewave/groups/syntax.lua` | Classic `:syntax` groups (Comment, Keyword, Type, …) |
| `lua/slatewave/groups/treesitter.lua` | `@*` TreeSitter + `@lsp.*` semantic tokens |
| `lua/slatewave/groups/plugins.lua` | Third-party plugin highlights |
| `lua/lualine/themes/slatewave.lua` | Matching lualine theme |

---

## Palette

### Foundation — slate

The editor, sidebar, and panels all live in the slate scale.

| | Hex | Tailwind | Where |
|---|---|---|---|
| ![#0f172a](https://placehold.co/20x20/0f172a/0f172a.png) | `#0f172a` | slate-900 | ink on accent surfaces (status block fg) |
| ![#1e293b](https://placehold.co/20x20/1e293b/1e293b.png) | `#1e293b` | slate-800 | floats, Pmenu, StatusLine, CursorLine |
| ![#21252b](https://placehold.co/20x20/21252b/21252b.png) | slate-chrome | sidebars (nvim-tree, neo-tree), TabLineFill |
| ![#282c34](https://placehold.co/20x20/282c34/282c34.png) | slate-editor | Normal bg |
| ![#334155](https://placehold.co/20x20/334155/334155.png) | `#334155` | slate-700 | Visual, PmenuSel, borders |
| ![#3a3f4c](https://placehold.co/20x20/3a3f4c/3a3f4c.png) | slate-guide | indent guide (IblIndent) |
| ![#475569](https://placehold.co/20x20/475569/475569.png) | `#475569` | slate-600 | line nr above/below current |

### Text — slate (inverse)

| | Hex | Tailwind | Where |
|---|---|---|---|
| ![#64748b](https://placehold.co/20x20/64748b/64748b.png) | `#64748b` | slate-500 | comments, LineNr, LspCodeLens |
| ![#94a3b8](https://placehold.co/20x20/94a3b8/94a3b8.png) | `#94a3b8` | slate-400 | operators, punctuation, StatusLineNC |
| ![#cbd5e1](https://placehold.co/20x20/cbd5e1/cbd5e1.png) | `#cbd5e1` | slate-300 | parameters, properties, sidebar labels |
| ![#e2e8f0](https://placehold.co/20x20/e2e8f0/e2e8f0.png) | `#e2e8f0` | slate-200 | Normal fg |
| ![#f1f5f9](https://placehold.co/20x20/f1f5f9/f1f5f9.png) | `#f1f5f9` | slate-100 | bright ANSI white |

### Signature — teal

The "wave" in Slatewave.

| | Hex | Tailwind | Where |
|---|---|---|---|
| ![#0f766e](https://placehold.co/20x20/0f766e/0f766e.png) | `#0f766e` | teal-700 | reserved for future accent-dark use |
| ![#5eead4](https://placehold.co/20x20/5eead4/5eead4.png) | `#5eead4` | teal-300 | **primary accent** — CursorLineNr, strings, status bar, active tab, hints |
| ![#99f6e4](https://placehold.co/20x20/99f6e4/99f6e4.png) | `#99f6e4` | teal-200 | types, classes, interfaces, inline code |
| ![#3d9e94](https://placehold.co/20x20/3d9e94/3d9e94.png) | teal-guide-active | active indent guide (IblScope) |

### Accents

| | Hex | Role |
|---|---|---|
| ![#38bdf8](https://placehold.co/20x20/38bdf8/38bdf8.png) | `#38bdf8` | keywords, tags, info diagnostics, links |
| ![#7dd3fc](https://placehold.co/20x20/7dd3fc/7dd3fc.png) | `#7dd3fc` | functions, JSON/YAML keys, CSS properties |
| ![#B388FF](https://placehold.co/20x20/B388FF/B388FF.png) | `#B388FF` | storage (`const` / `let` / `function`), `this` / `self` / `super`, attributes |
| ![#fb7185](https://placehold.co/20x20/fb7185/fb7185.png) | `#fb7185` | numbers, constants, modified files, errors |
| ![#fbbf24](https://placehold.co/20x20/fbbf24/fbbf24.png) | `#fbbf24` | decorators, escape chars, staged files, warnings |
| ![#b45309](https://placehold.co/20x20/b45309/b45309.png) | `#b45309` | deprecated symbols |
| ![#0e7490](https://placehold.co/20x20/0e7490/0e7490.png) | `#0e7490` | dark cyan ANSI |
| ![#ff4500](https://placehold.co/20x20/ff4500/ff4500.png) | `#ff4500` | merge conflicts |
| ![#ef5350](https://placehold.co/20x20/ef5350/ef5350.png) | `#ef5350` | deleted files, invalid syntax |

---

## Syntax mapping

Mirrors `vscode-slatewave` — same code lights up the same way in both editors.

| Token | | Color | Style |
|---|---|---|---|
| Comments | ![#64748b](https://placehold.co/20x20/64748b/64748b.png) | `#64748b` | italic |
| Keywords (`if`, `return`, `import`) | ![#38bdf8](https://placehold.co/20x20/38bdf8/38bdf8.png) | `#38bdf8` | — |
| Storage (`const`, `let`, `function`, `class`) | ![#B388FF](https://placehold.co/20x20/B388FF/B388FF.png) | `#B388FF` | italic |
| Types / classes / interfaces | ![#99f6e4](https://placehold.co/20x20/99f6e4/99f6e4.png) | `#99f6e4` | — |
| Functions (calls + definitions) | ![#7dd3fc](https://placehold.co/20x20/7dd3fc/7dd3fc.png) | `#7dd3fc` | — |
| Strings | ![#5eead4](https://placehold.co/20x20/5eead4/5eead4.png) | `#5eead4` | — |
| Numbers, booleans, `null`, `undefined` | ![#fb7185](https://placehold.co/20x20/fb7185/fb7185.png) | `#fb7185` | — |
| Constants (`UPPER_SNAKE`) | ![#fb7185](https://placehold.co/20x20/fb7185/fb7185.png) | `#fb7185` | — |
| Regex | ![#fb7185](https://placehold.co/20x20/fb7185/fb7185.png) | `#fb7185` | — |
| Escape sequences | ![#fbbf24](https://placehold.co/20x20/fbbf24/fbbf24.png) | `#fbbf24` | — |
| Decorators / annotations | ![#fbbf24](https://placehold.co/20x20/fbbf24/fbbf24.png) | `#fbbf24` | italic |
| `this` / `self` / `super` | ![#B388FF](https://placehold.co/20x20/B388FF/B388FF.png) | `#B388FF` | italic |
| Parameters | ![#cbd5e1](https://placehold.co/20x20/cbd5e1/cbd5e1.png) | `#cbd5e1` | italic |
| Properties / object keys | ![#cbd5e1](https://placehold.co/20x20/cbd5e1/cbd5e1.png) | `#cbd5e1` | — |
| Operators, punctuation | ![#94a3b8](https://placehold.co/20x20/94a3b8/94a3b8.png) | `#94a3b8` | — |
| HTML/JSX tags | ![#38bdf8](https://placehold.co/20x20/38bdf8/38bdf8.png) | `#38bdf8` | — |
| HTML/JSX attributes | ![#B388FF](https://placehold.co/20x20/B388FF/B388FF.png) | `#B388FF` | italic |
| Markdown headings | ![#5eead4](https://placehold.co/20x20/5eead4/5eead4.png) | `#5eead4` | bold |
| Markdown links | ![#38bdf8](https://placehold.co/20x20/38bdf8/38bdf8.png) | `#38bdf8` | underline |
| Markdown inline code | ![#99f6e4](https://placehold.co/20x20/99f6e4/99f6e4.png) | `#99f6e4` | — |
| Diff inserted | ![#5eead4](https://placehold.co/20x20/5eead4/5eead4.png) | `#5eead4` | — |
| Diff deleted | ![#fb7185](https://placehold.co/20x20/fb7185/fb7185.png) | `#fb7185` | — |

Both TreeSitter (`@*`) and LSP semantic tokens (`@lsp.*`) are covered, so highlighting holds up regardless of which backend is driving a given language.

---

## Installation

Requires Neovim **0.9+** (for `@markup.*` and `@lsp.*` captures) and `termguicolors`.

### lazy.nvim

```lua
{
  'kevinlangleyjr/neovim-slatewave',
  name = 'slatewave',
  priority = 1000,
  lazy = false,
  opts = {},
  config = function(_, opts)
    require('slatewave').setup(opts)
    vim.cmd.colorscheme('slatewave')
  end,
}
```

### packer.nvim

```lua
use({
  'kevinlangleyjr/neovim-slatewave',
  as = 'slatewave',
  config = function()
    require('slatewave').setup({})
    vim.cmd.colorscheme('slatewave')
  end,
})
```

### vim-plug

```vim
Plug 'kevinlangleyjr/neovim-slatewave', { 'as': 'slatewave' }
```

Then in your `init.lua`:

```lua
require('slatewave').setup({})
vim.cmd.colorscheme('slatewave')
```

---

## Configuration

Call `setup()` **before** `:colorscheme slatewave`. All options shown with their defaults:

```lua
require('slatewave').setup({
  transparent     = false,  -- set Normal bg to NONE
  italic_comments = true,
  italic_keywords = true,   -- storage (const/let/fn), modifiers, self/this/super
  dim_inactive    = false,
  terminal_colors = true,   -- set g:terminal_color_0..15

  plugins = {
    cmp              = true,
    blink            = true,
    gitsigns         = true,
    telescope        = true,
    neo_tree         = true,
    nvim_tree        = true,
    which_key        = true,
    indent_blankline = true,
    bufferline       = true,
    dashboard        = true,
    noice            = true,
    notify           = true,
    mini             = true,
    trouble          = true,
    lazy             = true,
    mason            = true,
    fidget           = true,
  },

  -- Escape hatch. Mutate `hl` in place; it's applied after every built-in group.
  on_highlights = function(hl, c)
    -- hl.Comment = { fg = c.slate_600, italic = false }
    -- hl.MyCustomGroup = { fg = c.teal_200 }
  end,
})
```

### Lualine

```lua
require('lualine').setup({ options = { theme = 'slatewave' } })
```

### Reaching the palette

The raw palette is exposed for plugin configuration that takes hex strings:

```lua
local c = require('slatewave').colors()
c.teal_300   -- #5eead4
c.slate_800  -- #1e293b
```

---

## Plugin coverage

Highlight groups ship for:

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) · [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) · [blink.cmp](https://github.com/Saghen/blink.cmp)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) (v3 + v2 names)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim) · [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim) · [mason.nvim](https://github.com/williamboman/mason.nvim) · [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim) (statusline, tabline, hipatterns, diff, files, pick, cursorword)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) · [alpha-nvim](https://github.com/goolord/alpha-nvim)
- lualine (separate theme file)

Disable any of them individually via the `plugins` table above.

---

## Companion themes

Slatewave is a single palette applied across a whole toolchain. Other implementations:

- [VSCode](https://github.com/kevinlangleyjr/vscode-slatewave)
- [Sublime Text](https://github.com/kevinlangleyjr/sublime-text-slatewave)
- [Obsidian](https://github.com/kevinlangleyjr/obsidian-slatewave)
- [Oh My Posh](https://github.com/kevinlangleyjr/slatewave-omp)
- [Alacritty](https://github.com/kevinlangleyjr/alacritty-slatewave)
- [Ghostty](https://github.com/kevinlangleyjr/ghostty-slatewave)
- [iTerm2](https://github.com/kevinlangleyjr/iterm2-slatewave)
- [Starship](https://github.com/kevinlangleyjr/starship-slatewave)

Full documentation: [getslatewave.com](https://getslatewave.com/)

---

## Contributing

Issues and PRs welcome. For palette tweaks, please include a before/after screenshot of the same file so the visual tradeoff is obvious.

---

## License

WTFPL – Do What The Fuck You Want To Public License. See [LICENSE](LICENSE).
