---@diagnostic disable: undefined-global

local map = vim.keymap.set

vim.g.mapleader = " " -- set leader key
vim.g.maplocalleader = ","

map("n", "<leader>nh", ":nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear search highlight" })
map("n", "<leader>tw", ":set wrap!<CR>", { noremap = true, silent = true, desc = "Toggle line wrap" })
map("n", "<leader>rr", ":so $MYVIMRC<CR>", { noremap = true, silent = true, desc = "Reload config" })

-- window splits
map("n", "<leader>v", "<C-w>v", { noremap = true, silent = true, desc = "Vertical split" })
map("n", "<leader>h", "<C-w>s", { noremap = true, silent = true, desc = "Horizontal split" })
map("n", "<leader>se", "<C-w>=", { noremap = true, silent = true, desc = "Equalize splits" })
map("n", "<leader>wc", ":close<CR>", { noremap = true, silent = true, desc = "Close window" })

-- window navigation
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom split" })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top split" })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right split" })

-- window resizing
map("n", "<A-h>", "<C-w><", { noremap = true, silent = true, desc = "Resize split left" })
map("n", "<A-l>", "<C-w>>", { noremap = true, silent = true, desc = "Resize split right" })
map("n", "<A-k>", "<C-w>+", { noremap = true, silent = true, desc = "Resize split up" })
map("n", "<A-j>", "<C-w>-", { noremap = true, silent = true, desc = "Resize split down" })

-- save & quit
map("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })
map("n", "<leader>x", ":wq<CR>", { noremap = true, silent = true, desc = "Save and quit" })
map("n", "<leader>wa", ":wa<CR>", { noremap = true, silent = true, desc = "Save all files" })
map("n", "<leader>qq", ":q!<CR>", { noremap = true, silent = true, desc = "Force quit without saving" })

-- oil
map("n", "-", "<CMD>Oil<CR>", { noremap = true, silent = true, desc = "Open parent directory" })

-- neogit
map("n", "ng", ":Neogit<CR>", { noremap = true, silent = true, desc = "Toggle Neogit" })

-- diffview
map("n", "<leader>do", ":DiffviewOpen<CR>", { noremap = true, silent = true, desc = "Diffview Open" })
map("n", "<leader>dc", ":DiffviewClose<CR>", { noremap = true, silent = true, desc = "Diffview Close" })
map("n", "<leader>dt", ":DiffviewToggleFiles<CR>", { noremap = true, silent = true, desc = "Diffview Toggle Files" })

-- telescope
map("n", "<leader>fd", ":Telescope diagnostics<cr>", { noremap = true, silent = true, desc = "Telescope Diagnostics" })
map("n", "<leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true, desc = "Telescope Find Files" })
map(
	"n",
	"<leader>fr",
	":Telescope lsp_references<cr>",
	{ noremap = true, silent = true, desc = "Telescope LSP References" }
)
map(
	"n",
	"<leader>oc",
	":Telescope lsp_outgoing_calls<cr>",
	{ noremap = true, silent = true, desc = "Telescope LSP Outgoing Calls" }
)

map("n", "<leader>fg", ":Telescope live_grep<cr>", { noremap = true, silent = true, desc = "Telescope Live Grep" })
map("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true, desc = "Telescope Buffers" })

-- zen mode
map("n", "<leader>zm", ":Zen<CR>", opts)
