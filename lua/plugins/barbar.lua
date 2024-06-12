return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.barbar_auto_setup = false

		require("barbar").setup({
			animation = true,
			clickable = true,
			tabpages = true,
		})
	end,
}
