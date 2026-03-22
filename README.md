<div align="center">
<img src="res/neovim.svg" />

# Neovim

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/tuffgniuz/nvim.lua?style=for-the-badge&labelColor=%23181926&color=%23eed49f)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/tuffgniuz/nvim.lua?style=for-the-badge&labelColor=%23181926&color=%23a6da95)

## Summary
</div>

My personal Neovim setup, optimized for development productivity. This configuration leverages Lua for a modern and efficient experience, with plugins managed by `lazy.nvim` and optimized for fast startup through strategic lazy loading.

Keymaps are documented in [docs/keymaps.md](docs/keymaps.md).

Included docs:

- [docs/keymaps.md](docs/keymaps.md): grouped keymap reference for core navigation, LSP, Telescope, Treesitter, and plugin workflows.

Key features include:

-   **IDE-like Experience**: Language Server Protocol (LSP) integration via `lsp-zero.nvim`, `mason.nvim`, and `nvim-cmp`, with inline diagnostics, inlay hints, symbol outline via `aerial.nvim`, diagnostics panes via `trouble.nvim`, progress notifications via `fidget.nvim`, and Rust support through `rustaceanvim`.
-   **Version Control**: Seamless Git workflow with `neogit`, `diffview.nvim`, and inline hunk/blame actions from `gitsigns.nvim`.
-   **Navigation & Discovery**: Powerful fuzzy finding with `telescope.nvim` for files, buffers, and project-wide search. `oil.nvim` provides a Vim-style file explorer.
-   **Code Quality & Formatting**: Automatic code formatting on save using `conform.nvim`, linting via `nvim-lint`, intelligent syntax highlighting and indentation with `nvim-treesitter`, and color highlighting for various contexts (`nvim-colorizer.lua`, `tailwindcss-colorizer-cmp.nvim`).
-   **User Interface**: A functional statusline powered by `lualine.nvim`, completion popups tuned for an IDE-like feel, and a welcoming dashboard using `dashboard-nvim`.
-   **Text Editing Enhancements**: Smart autocompletion of pairs with `nvim-autopairs` and convenient commenting/uncommenting with `Comment.nvim`.
-   **Language-Aware Lua Editing**: Better Neovim Lua completion and typing support through `lazydev.nvim`.
-   **Specialized Workflows**: Dedicated support for LaTeX projects with `vimtex`, a powerful note-taking system using `neorg`, and GitHub integration with `octo.nvim`.

## External Tools

Some features rely on tools outside Neovim being available on your `PATH`.

-   LSP servers installed through `mason.nvim`
-   Formatters such as `stylua`, `black`, `isort`, `prettier`, and `eslint_d`
-   Linters such as `ruff` and `shellcheck`
