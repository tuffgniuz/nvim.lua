<div align="center">
<img src="res/neovim.svg" />

# Neovim

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/tuffgniuz/solomon?style=for-the-badge&labelColor=%23181926&color=%23eed49f)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/tuffgniuz/solomon?style=for-the-badge&labelColor=%23181926&color=%23a6da95)

## Summary
</div>

My personal Neovim setup, optimized for development productivity. This configuration leverages Lua for a modern and efficient experience, with plugins managed by `lazy.nvim` and optimized for fast startup through strategic lazy loading.

Key features include:

-   **IDE-like Experience**: Language Server Protocol (LSP) integration via `lsp-zero.nvim`, enhanced by `mason.nvim` for server management, `nvim-cmp` for autocompletion, and `LuaSnip` for snippets.
-   **Version Control**: Seamless Git workflow with `neogit` for interactive Git commands and `diffview.nvim` for advanced diff visualizations.
-   **Navigation & Discovery**: Powerful fuzzy finding with `telescope.nvim` for files, buffers, and project-wide search. `oil.nvim` provides a Vim-style file explorer.
-   **Code Quality & Formatting**: Automatic code formatting on save using `conform.nvim`, intelligent syntax highlighting and indentation with `nvim-treesitter`, and color highlighting for various contexts (`nvim-colorizer.lua`, `tailwindcss-colorizer-cmp.nvim`).
-   **User Interface & Aesthetics**: A visually appealing setup with the `gruvbox-material` colorscheme, a functional statusline powered by `lualine.nvim`, and a welcoming dashboard using `dashboard-nvim`.
-   **Text Editing Enhancements**: Smart autocompletion of pairs with `nvim-autopairs` and convenient commenting/uncommenting with `Comment.nvim`.
-   **Specialized Workflows**: Dedicated support for LaTeX projects with `vimtex`, a powerful note-taking system using `neorg`, and GitHub integration with `octo.nvim`.
