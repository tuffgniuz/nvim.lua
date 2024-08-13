return {
	-- Mason plugin to manage external editor tooling such as LSP servers
	{ "williamboman/mason.nvim", config = true },
	-- Extension to Mason to handle LSP configurations
	{ "williamboman/mason-lspconfig.nvim", config = true },
	-- LSP Zero plugin to simplify LSP setup
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			-- LSP support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "tsserver" }, -- Add the servers you need
				handlers = {
					lsp_zero.default_setup,
				},
			})

			lsp_zero.set_sign_icons({
				error = "✘",
				warn = "▲",
				hint = "⚑",
				info = "»",
			})
		end,
	},
}
