local formatting = require("null-ls").builtins.formatting
local diagnostics = require("null-ls").builtins.diagnostics
-- local code_actions = null_ls.code_actions

local sources = {
	--> formatters <--
	formatting.latexindent, --> LaTeX formatter
	formatting.stylua, --> lua formatter
	formatting.eslint, --> ts/js formatter
	formatting.autopep8, --> python formatter
	formatting.prettier, --> formatter js, ts, jsx, tsx, vue, css, scss, less, html and more ..

	diagnostics.markdownlint, --> markdown style and syntax checker

	-- code_actions.eslint,
}

require("null-ls").setup({
	sources = sources,
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
