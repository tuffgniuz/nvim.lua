return {
	"mrcjkb/rustaceanvim",
	version = "^8", -- Recommended
	lazy = false, -- This plugin is already lazy
	init = function()
		vim.g.rustaceanvim = function()
			local lsp_zero = require("lsp-zero")

			return {
				server = {
					capabilities = lsp_zero.get_capabilities(),
					on_attach = function(client, bufnr)
						lsp_zero.default_keymaps({ buffer = bufnr })

						if client.supports_method and client:supports_method("textDocument/inlayHint") then
							vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
						end
					end,
				},
			}
		end
	end,
}
