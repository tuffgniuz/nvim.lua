return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")

		-- Debugging: Print a message when the setup function is called
		-- print("Conform setup called")

		conform.setup({
			formatters_by_ft = {
				sh = { "beautysh" },
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettier", "eslint_d" },
				typescript = { "prettier", "eslint_d" },
				javascriptreact = { "prettier", "eslint_d" },
				typescriptreact = { "prettier", "eslint_d" },
			},
			format_on_save = {
				async = false,
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- Debugging: Print a message to confirm formatters_by_ft is correctly set
		-- for ft, formatters in pairs(conform.formatters_by_ft) do
		-- 	print("Filetype: " .. ft .. " Formatters: " .. table.concat(formatters, ", "))
		-- end

		-- Key mapping for manual formatting
		vim.keymap.set({ "n", "v" }, "mp", function()
			-- Debugging: Print a message before formatting
			print("Formatting triggered")
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end)
	end,
}
