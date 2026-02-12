---@diagnostic disable: undefined-global

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- set leader key
vim.g.maplocalleader = ","

map("n", "<leader>nh", ":nohlsearch<CR>", opts) -- clear search highlight
map("n", "<leader>tw", ":set wrap!<CR>", opts) -- toggle line wrap
map("n", "<leader>rr", ":so $MYVIMRC<CR>", opts) -- reload config

-- window splits
map("n", "<leader>v", "<C-w>v", opts)
map("n", "<leader>h", "<C-w>s", opts)
map("n", "<leader>se", "<C-w>=", opts) -- equalize splits
map("n", "<leader>wc", ":close<CR>", opts)

-- window navigation
map("n", "<C-h>", "<C-w>h", opts) -- move to left split
map("n", "<C-j>", "<C-w>j", opts) -- move to bottom split
map("n", "<C-k>", "<C-w>k", opts) -- move to top split
map("n", "<C-l>", "<C-w>l", opts) -- move to right split

-- window resizing
map("n", "<A-h>", "<C-w><", opts) -- resize split left
map("n", "<A-l>", "<C-w>>", opts) -- resize split right
map("n", "<A-k>", "<C-w>+", opts) -- resize split up
map("n", "<A-j>", "<C-w>-", opts) -- resize split down

-- save & quit
map("n", "<leader>w", ":w<CR>", opts) -- save file
map("n", "<leader>x", ":wq<CR>", opts) -- save and quit
map("n", "<leader>wa", ":wa<CR>", opts) -- save all files
map("n", "<leader>qq", ":q!<CR>", opts) -- force quit without saving

-- oil
map("n", "-", "<CMD>Oil<CR>", { desc = "open parent directory" })

-- neogit
map("n", "ng", ":Neogit<CR>", {})

-- diffview
map("n", "<leader>do", ":DiffviewOpen<CR>", {})
map("n", "<leader>dc", ":DiffviewClose<CR>", {})
map("n", "<leader>dt", ":DiffviewToggleFiles<CR>", {})

-- nvim-tree
-- map("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
-- map("n", "<leader>gn", ":NvimTreeFocus<CR>", opts)

-- telescope
map("n", "<leader>fd", ":Telescope diagnostics<cr>", opts)
map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
map("n", "<leader>fr", ":Telescope lsp_references<cr>", opts)
map("n", "<leader>oc", ":Telescope lsp_outgoing_calls<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", opts)

-- floaterm
map("n", "<leader>tt", ":FloatermToggle<CR>", opts)
map("t", "<leader>tt", "<C-\\><C-n>:FloatermToggle<CR>", opts)
map("t", "<C-h>", "<C-\\><C-n>:FloatermSidebarToggle<CR>", opts) -- switch to sidebar
map("t", "<C-j>", "<C-\\><C-n>:FloatermPrev<CR>", opts) -- cycle to previous terminal
map("t", "<C-k>", "<C-\\><C-n>:FloatermNext<CR>", opts) -- cycle to next terminal

-- zen mode
map("n", "<leader>zm", ":Zen<CR>", opts)
