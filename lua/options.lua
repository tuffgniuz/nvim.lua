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
vim.opt.completeopt = "menu,menuone,noselect,popup" -- Configure completion options for insert mode
vim.opt.pumblend = 8                     -- Soften the completion popup slightly
vim.opt.pumheight = 12                   -- Keep the completion menu compact

vim.opt.hidden = true                    -- Allow switching buffers without saving
vim.opt.mouse = "a"                      -- Enable mouse support in all modes

vim.opt.fillchars = "eob: "              -- Fill characters for end of buffer lines (empty lines after the end of the file)

vim.opt.fillchars:append({ diff = "▸" })

vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = "if_many",
		severity = {
			min = vim.diagnostic.severity.ERROR,
		},
	},
	float = {
		source = "if_many",
	},
	underline = true,
	signs = true,
	update_in_insert = false,
	severity_sort = true,
})

local function set_completion_highlights()
	vim.api.nvim_set_hl(0, "CmpPmenu", { fg = "#eadfe2", bg = "#242728" })
	vim.api.nvim_set_hl(0, "CmpDoc", { fg = "#eadfe2", bg = "#202324" })
	vim.api.nvim_set_hl(0, "CmpPmenuBorder", { fg = "#353039", bg = "#242728" })
	vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#353039", bg = "#202324" })
	vim.api.nvim_set_hl(0, "CmpSel", { fg = "#1d2021", bg = "#e7b9c9", bold = true })
	vim.api.nvim_set_hl(0, "Pmenu", { link = "CmpPmenu" })
	vim.api.nvim_set_hl(0, "PmenuSel", { link = "CmpSel" })
	vim.api.nvim_set_hl(0, "PmenuSbar", { link = "CmpPmenu" })
	vim.api.nvim_set_hl(0, "PmenuThumb", { link = "CmpSel" })
	vim.api.nvim_set_hl(0, "CmpItemMenu", { link = "Comment" })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { link = "Keyword" })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { link = "Keyword" })
	vim.api.nvim_set_hl(0, "CmpItemKindFunction", { link = "Function" })
	vim.api.nvim_set_hl(0, "CmpItemKindMethod", { link = "Function" })
	vim.api.nvim_set_hl(0, "CmpItemKindVariable", { link = "Identifier" })
	vim.api.nvim_set_hl(0, "CmpItemKindField", { link = "Identifier" })
	vim.api.nvim_set_hl(0, "CmpItemKindProperty", { link = "Identifier" })
	vim.api.nvim_set_hl(0, "CmpItemKindClass", { link = "Type" })
	vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "Type" })
	vim.api.nvim_set_hl(0, "CmpItemKindStruct", { link = "Type" })
	vim.api.nvim_set_hl(0, "CmpItemKindEnum", { link = "Type" })
	vim.api.nvim_set_hl(0, "CmpItemKindModule", { link = "Include" })
	vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { link = "Keyword" })
	vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { link = "String" })
	vim.api.nvim_set_hl(0, "CmpItemKindFile", { link = "Directory" })
	vim.api.nvim_set_hl(0, "CmpItemKindFolder", { link = "Directory" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_completion_highlights,
})

set_completion_highlights()
