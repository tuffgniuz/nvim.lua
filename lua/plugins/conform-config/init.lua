require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" }, -- stylua for Lua formatting
		python = { "isort", "black" }, -- 'black' for Python formatting
		javascript = { "eslint_d", "eslint" },
		typescript = { "eslint_d", "eslint" },
		javascriptreact = { "eslint_d", "eslint" },
		typescriptreact = { "eslint_d", "eslint" },
		svelte = { "eslint_d", "eslint" },
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
