return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> packer plugin manager
	use("Pocco81/TrueZen.nvim")
	use("kyazdani42/nvim-web-devicons") --> enable icons
	use("norcalli/nvim-colorizer.lua")
	use("nvim-lualine/lualine.nvim") --> a statusline written in lua
	use("romgrk/barbar.nvim") --> tabs for neovim
	use("kyazdani42/nvim-tree.lua") --> file explorer
	use("lukas-reineke/indent-blankline.nvim") --> indent guides for neovim
	use("akinsho/toggleterm.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim") --> Find, Filter, Preview, Pick. All lua, all the time.
	use("lpoto/telescope-docker.nvim") --> Find, Filter, Preview, Pick. All lua, all the time.
	use("numToStr/Comment.nvim")
	use("ggandor/lightspeed.nvim") --> motion plugin with incremental input processing, allowing for unparalleled speed with near-zero cognitive effort
	--[[ use("rcarriga/nvim-notify") ]]
	use("windwp/nvim-autopairs")
	use("fladson/vim-kitty") --> kitty syntax highlighting
	use("startup-nvim/startup.nvim")
	use("TimUntersberger/neogit")
	use("sindrets/diffview.nvim")
  use("stevearc/oil.nvim")

	--> colorschemes
  -- If you are using Packer
  use('shaunsingh/nord.nvim')
	use("EdenEast/nightfox.nvim") --> nightfox colorsceme for neovim
	use("sainnhe/gruvbox-material")
  use{ "catppuccin/nvim", as = "catppuccin"}
  use('AlexvZyl/nordic.nvim')

	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use("nvim-treesitter/nvim-treesitter-refactor")
	--[[ use("p00f/nvim-ts-rainbow") ]]
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	use({ "nvim-neorg/neorg", run = ":Neorg sync-parsers" })

	--> lsp
	use({ "williamboman/mason.nvim" })
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") --> Snippets plugin
  use("nvimtools/none-ls.nvim") --> inject LSP diagnostics, code actions and more
end)
