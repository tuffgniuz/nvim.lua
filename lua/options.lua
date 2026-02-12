---@diagnostic disable: undefined-global
-- stylua: ignore start

vim.opt.expandtab = true                 -- Use spaces instead of tabs
vim.opt.smarttab = true                  -- Insert the correct number of spaces when pressing <Tab> based on 'shiftwidth'
vim.opt.shiftwidth = 2                   -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 2                      -- Number of spaces that a <Tab> in the file counts for

vim.opt.hlsearch = true                  -- Enable highlight on search results
vim.opt.incsearch = true                 -- Show search matches as you type
vim.opt.ignorecase = true                -- Ignore case in search patterns
vim.opt.smartcase = true                 -- Override 'ignorecase' if the search pattern contains uppercase letters

vim.opt.termguicolors = true             -- Enable true color support
vim.opt.showmode = false                 -- Don't display mode (e.g., -- INSERT --) as it's already shown in the statusline
vim.opt.splitbelow = true                -- Force horizontal splits to go below the current window
vim.opt.splitright = true                -- Force vertical splits to go to the right of the current window
vim.opt.wrap = false                     -- Disable line wrapping
vim.opt.breakindent = true               -- Indent wrapped lines visually to match the start of the line
vim.opt.scrolloff = 5                    -- Keep at least 5 lines above and below the cursor
vim.opt.fileencoding = "utf-8"           -- File encoding to use for new files
vim.opt.conceallevel = 2                 -- Hide text with the "conceal" syntax attribute except in cursor line

vim.opt.relativenumber = true            -- Show relative line numbers
vim.opt.cursorline = true                -- Highlight the current line
vim.opt.wildmenu = true                  -- Enable command-line completion in a visual way
vim.opt.completeopt = "menuone,noselect" -- Configure completion options for insert mode

vim.opt.hidden = true                    -- Allow switching buffers without saving
vim.opt.mouse = "a"                      -- Enable mouse support in all modes

vim.opt.fillchars = "eob: "              -- Fill characters for end of buffer lines (empty lines after the end of the file)

vim.opt.fillchars:append({ diff = "▸" })
