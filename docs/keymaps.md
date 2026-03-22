# Keymaps

This document lists the keymaps configured in this Neovim setup.

- `mapleader`: `<Space>`
- `maplocalleader`: `,`

## Notes

- `Global` means the keymap is always available.
- `LSP buffer` means the keymap is added when an LSP client attaches through `lsp-zero`.
- `Git buffer` means the keymap is added by `gitsigns` in tracked files.
- `Treesitter` mappings depend on the relevant `nvim-treesitter` modules being available.

## Core

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `n` | `<leader>nh` | Clear search highlighting | Global | `lua/keymaps.lua` |
| `n` | `<leader>tw` | Toggle line wrapping | Global | `lua/keymaps.lua` |
| `n` | `<leader>rr` | Reload the Neovim config | Global | `lua/keymaps.lua` |
| `n` | `<leader>v` | Open a vertical split | Global | `lua/keymaps.lua` |
| `n` | `<leader>h` | Open a horizontal split | Global | `lua/keymaps.lua` |
| `n` | `<leader>se` | Equalize split sizes | Global | `lua/keymaps.lua` |
| `n` | `<leader>wc` | Close the current window | Global | `lua/keymaps.lua` |
| `n` | `<C-h>` | Move to the left split | Global | `lua/keymaps.lua` |
| `n` | `<C-j>` | Move to the split below | Global | `lua/keymaps.lua` |
| `n` | `<C-k>` | Move to the split above | Global | `lua/keymaps.lua` |
| `n` | `<C-l>` | Move to the right split | Global | `lua/keymaps.lua` |
| `n` | `<A-h>` | Resize split left | Global | `lua/keymaps.lua` |
| `n` | `<A-l>` | Resize split right | Global | `lua/keymaps.lua` |
| `n` | `<A-k>` | Resize split up | Global | `lua/keymaps.lua` |
| `n` | `<A-j>` | Resize split down | Global | `lua/keymaps.lua` |
| `n` | `<leader>w` | Save current file | Global | `lua/keymaps.lua` |
| `n` | `<leader>x` | Save and quit | Global | `lua/keymaps.lua` |
| `n` | `<leader>wa` | Save all files | Global | `lua/keymaps.lua` |
| `n` | `<leader>qq` | Force quit without saving | Global | `lua/keymaps.lua` |

## Navigation And Search

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `n` | `-` | Open parent directory in Oil | Global | `lua/keymaps.lua` |
| `n` | `<leader>ff` | Telescope file picker | Global | `lua/keymaps.lua` |
| `n` | `<leader>fg` | Telescope live grep | Global | `lua/keymaps.lua` |
| `n` | `<leader>fb` | Telescope buffer picker | Global | `lua/keymaps.lua` |
| `n` | `<leader>fd` | Telescope diagnostics picker | Global | `lua/keymaps.lua` |
| `n` | `<leader>fD` | Telescope LSP definitions | Global | `lua/keymaps.lua` |
| `n` | `<leader>fi` | Telescope LSP implementations | Global | `lua/keymaps.lua` |
| `n` | `<leader>fr` | Telescope LSP references | Global | `lua/keymaps.lua` |
| `n` | `<leader>fs` | Telescope document symbols | Global | `lua/keymaps.lua` |
| `n` | `<leader>fS` | Telescope workspace symbols | Global | `lua/keymaps.lua` |
| `n` | `<leader>oc` | Telescope outgoing calls | Global | `lua/keymaps.lua` |
| `n` | `<leader>xx` | Toggle Trouble diagnostics list | Global | `lua/keymaps.lua` |
| `n` | `<leader>xX` | Toggle Trouble diagnostics for current buffer | Global | `lua/keymaps.lua` |
| `n` | `<leader>cs` | Toggle Aerial symbols outline | Global | `lua/keymaps.lua` |

## Workflow Plugins

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `n` | `<leader>ni` | Open Neorg index | Global | `lua/keymaps.lua` |
| `n` | `<leader>nr` | Return to previous Neorg location | Global | `lua/keymaps.lua` |
| `n` | `ng` | Open Neogit | Global | `lua/keymaps.lua` |
| `n` | `<leader>do` | Open Diffview | Global | `lua/keymaps.lua` |
| `n` | `<leader>dc` | Close Diffview | Global | `lua/keymaps.lua` |
| `n` | `<leader>dt` | Toggle Diffview file panel | Global | `lua/keymaps.lua` |
| `n`, `v` | `mp` | Format via Conform | Global | `lua/plugins/conform.lua` |

## Completion

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `i` | `<C-Space>` | Trigger completion menu | Insert mode | `lua/plugins/lspzero.lua` |
| `i` | `<CR>` | Confirm selected completion item | Insert mode | `lua/plugins/lspzero.lua` |
| `i` | `<Tab>` | Select next completion item | Insert mode | `lua/plugins/lspzero.lua` |
| `i` | `<S-Tab>` | Select previous completion item | Insert mode | `lua/plugins/lspzero.lua` |

## LSP And IDE

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `n` | `<leader>uh` | Toggle inlay hints for current buffer | Global | `lua/keymaps.lua` |
| `n` | `K` | Hover documentation for symbol under cursor | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gd` | Jump to definition | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gD` | Jump to declaration | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gi` | List implementations | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `go` | Jump to type definition | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gr` | List references | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gs` | Signature help | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `<F2>` | Rename symbol | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `<F3>` | Format current buffer with LSP | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `<F4>` | Code actions at cursor | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `gl` | Open diagnostic float | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `[d` | Go to previous diagnostic | LSP buffer | `lsp-zero.default_keymaps()` |
| `n` | `]d` | Go to next diagnostic | LSP buffer | `lsp-zero.default_keymaps()` |

## Git

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `n` | `]h` | Jump to next git hunk | Git buffer | `lua/plugins/gitsigns.lua` |
| `n` | `[h` | Jump to previous git hunk | Git buffer | `lua/plugins/gitsigns.lua` |
| `n` | `<leader>hp` | Preview current hunk | Git buffer | `lua/plugins/gitsigns.lua` |
| `n` | `<leader>hb` | Show full blame for current line | Git buffer | `lua/plugins/gitsigns.lua` |
| `n` | `<leader>hr` | Reset current hunk | Git buffer | `lua/plugins/gitsigns.lua` |
| `n` | `<leader>hs` | Stage current hunk | Git buffer | `lua/plugins/gitsigns.lua` |

## Treesitter Textobjects

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| `x`, `o` | `af` | Select around function | Treesitter | `lua/plugins/treesitter.lua` |
| `x`, `o` | `if` | Select inside function | Treesitter | `lua/plugins/treesitter.lua` |
| `x`, `o` | `ac` | Select around class | Treesitter | `lua/plugins/treesitter.lua` |
| `x`, `o` | `ic` | Select inside class | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `<leader>df` | Peek function definition | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `<leader>dF` | Peek class definition | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `]]` | Next function start | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `]m` | Next class start | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `][` | Next function end | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `]M` | Next class end | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `[[` | Previous function start | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `[m` | Previous class start | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `[]` | Previous function end | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `[M` | Previous class end | Treesitter | `lua/plugins/treesitter.lua` |
| `n` | `grr` | Smart rename with Treesitter refactor | Treesitter | `lua/plugins/treesitter.lua` |

## Treesitter Playground

These mappings only apply inside the Treesitter playground UI if that module is installed and active.

| Mode | Keymap | Description | Scope | Source |
| --- | --- | --- | --- | --- |
| Playground | `o` | Toggle query editor | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `i` | Toggle highlight groups | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `t` | Toggle injected languages | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `a` | Toggle anonymous nodes | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `I` | Toggle language display | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `f` | Focus language | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `F` | Unfocus language | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `R` | Refresh playground view | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `<CR>` | Jump to node | Treesitter playground | `lua/plugins/treesitter.lua` |
| Playground | `?` | Show playground help | Treesitter playground | `lua/plugins/treesitter.lua` |
