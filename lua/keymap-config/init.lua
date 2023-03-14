local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

--> truezen <--
map("n", "<leader>za", ":TZAtaraxis<CR>", {})
map("n", "<leader>zm", ":TZMinimalist<CR>", {})

--> nvim tree mappings <--
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>it", ":NvimTreeResize +5<CR>", opts)
map("n", "<leader>dt", ":NvimTreeResize -5<CR>", opts)

--> gitsigns <--
map("n", "]h", ":Gitsigns next_hunk<CR>", opts)
map("n", "[h", ":Gitsigns prev_hunk<CR>", opts)
--> neogit <--
map("n", "ng", ":Neogit<CR>", opts)
--> diffview <--
map("n", "dvo", ":DiffviewOpen<cr>", opts)
map("n", "dvc", ":DiffviewClose<cr>", opts)

--> telescope mappings <--
map("n", "<leader>ff", ":Telescope find_files theme=dropdown<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep theme=dropdown<cr>", opts)

--[[ map("n", "<leader>fb", ":Telescope buffers theme=dropdown<cr>", opts) ]]
map("n", "<leader>fr", ":Telescope lsp_references theme=dropdown<cr>", opts)
map("n", "<leader>fb", ":Telescope file_browser<cr>", opts)

--> barbar mappings <--
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
