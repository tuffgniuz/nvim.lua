require("conform").setup({
	formatters_by_ft = {
		sh = { "beautysh" },
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettier", "eslint_d" },
		typescript = { "prettier", "eslint_d" },
		javascriptreact = { "prettier", "eslint_d" },
		typescriptreact = { "prettier", "eslint_d" },
		svelte = { "prettier", "eslint_d" },
	},
	format_on_save = {
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	},
})

vim.keymap.set({ "n", "v" }, "mp", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)
