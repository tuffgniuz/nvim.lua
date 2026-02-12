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
			{ "saadparwaiz1/cmp_luasnip" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" }, -- Add the servers you need
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

			-- Configure nvim-cmp
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local compare = cmp.config.compare

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					-- Your custom keymaps for nvim-cmp go here
				}),
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "neorg" },
				},
				formatting = {
					fields = { "abbr", "kind", "menu" },
					format = function(entry, item)
						item.menu = ({
							nvim_lsp = "[LSP]",
							luasnip = "[Snippet]",
							buffer = "[Buffer]",
							path = "[Path]",
						})[entry.source.name]
						return item
					end,
				},
			})
		end,
	},
}
