return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				sh = { "beautysh" },
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", "eslint_d" },
				typescript = { "prettierd", "prettier", "eslint_d" },
				javascriptreact = { "prettierd", "prettier", "eslint_d" },
				typescriptreact = { "prettierd", "prettier", "eslint_d" },
			},
			format_on_save = {
				async = false,
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- Key mapping for manual formatting
		vim.keymap.set({ "n", "v" }, "mp", function()
			conform.format({
				lsp_fallback = false,
				async = true,
				timeout_ms = 500,
			})
		end)
	end,
}
