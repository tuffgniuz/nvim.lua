return {
	-- LSP Zero plugin to simplify LSP setup
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		event = "BufReadPre",
		dependencies = {
			-- LSP support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "L3MON4D3/LuaSnip" },
			{ "onsails/lspkind.nvim" },
			{ "saadparwaiz1/cmp_luasnip" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename symbol" })

				if client.supports_method and client:supports_method("textDocument/inlayHint") then
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end
			end)

			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "cssls", "rust_analyzer", "svelte", "emmet_ls", "ts_ls" },
				automatic_enable = {
					exclude = { "rust_analyzer" },
				},
				handlers = {
					function(server)
						lsp_zero.default_setup(server)
					end,
					cssls = function()
						local lspconfig = require("lspconfig")
						lspconfig.cssls.setup({
							filetypes = { "css", "scss", "less", "tcss" },
						})
					end,
					lua_ls = function()
						local lspconfig = require("lspconfig")
						lspconfig.lua_ls.setup({
							settings = {
								Lua = {
									completion = {
										callSnippet = "Replace",
									},
									diagnostics = {
										globals = { "vim" },
									},
									workspace = {
										checkThirdParty = false,
									},
								},
							},
						})
					end,
					rust_analyzer = lsp_zero.noop,
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
			local lspkind = require("lspkind")
			local luasnip = require("luasnip")
			local source_names = {
				buffer = "[BUF]",
				luasnip = "[SNP]",
				neorg = "[NRG]",
				nvim_lsp = "[LSP]",
				path = "[PATH]",
			}

			lspkind.init({
				mode = "symbol_text",
				preset = "default",
			})

			cmp.setup({
				completion = {
					completeopt = "menu,menuone,noinsert,noselect,popup",
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered({
						col_offset = -3,
						side_padding = 1,
						border = "rounded",
						winhighlight = table.concat({
							"Normal:CmpPmenu",
							"NormalFloat:CmpPmenu",
							"FloatBorder:CmpPmenuBorder",
							"CursorLine:CmpSel",
							"Pmenu:CmpPmenu",
							"PmenuSel:CmpSel",
							"PmenuKind:CmpItemKind",
							"PmenuKindSel:CmpSel",
							"PmenuExtra:CmpItemMenu",
							"PmenuExtraSel:CmpSel",
							"Search:None",
						}, ","),
					}),
					documentation = cmp.config.window.bordered({
						border = "rounded",
						winhighlight = "Normal:CmpDoc,FloatBorder:CmpDocBorder,Search:None",
					}),
				},
				view = {
					entries = {
						name = "custom",
						selection_order = "near_cursor",
					},
				},
				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
				}),
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "neorg" },
					{ name = "path" },
					{ name = "buffer" },
				},
				formatting = {
					fields = { "kind", "abbr", "menu" },
					format = function(entry, item)
						local kind = item.kind
						local icon = lspkind.symbolic(kind)
						if icon ~= nil and icon ~= "" then
							item.kind = string.format("  %s %s", icon, kind)
						else
							item.kind = "  " .. kind
						end

						item.menu = source_names[entry.source.name] or ("[" .. entry.source.name:upper() .. "]")

						return item
					end,
				},
				experimental = {
					ghost_text = true,
				},
			})
		end,
	},
}
