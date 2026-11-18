return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

		if not vim.env.PATH:find(mason_bin, 1, true) then
			vim.env.PATH = mason_bin .. ":" .. vim.env.PATH
		end

		lint.linters_by_ft = {
			bash = { "shellcheck" },
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			python = { "ruff" },
			sh = { "shellcheck" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("nvim-lint", { clear = true })

		local function get_available_linters()
			local linters = lint.linters_by_ft[vim.bo.filetype] or {}
			local available_linters = {}

			for _, linter_name in ipairs(linters) do
				local linter = lint.linters[linter_name]
				local cmd = linter and linter.cmd

				if type(cmd) ~= "string" or vim.fn.executable(cmd) == 1 then
					table.insert(available_linters, linter_name)
				end
			end

			return available_linters
		end

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint(get_available_linters())
			end,
		})
	end,
}
