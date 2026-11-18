local parsers = {
	"css",
	"bash",
	"fish",
	"javascript",
	"lua",
	"typescript",
	"python",
	"go",
	"html",
	"svelte",
	"json",
	"markdown",
	"markdown_inline",
	"vimdoc",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")

		treesitter.setup({})
		treesitter.install(parsers)

		local group = vim.api.nvim_create_augroup("treesitter-enable", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			callback = function(args)
				if pcall(vim.treesitter.start, args.buf) then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
