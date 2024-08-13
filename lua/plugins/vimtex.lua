---@diagnostic disable: undefined-global

return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtext_compiler_method = "latexmk"
	end,
}
