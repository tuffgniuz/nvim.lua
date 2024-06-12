return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					theme = "dropdown",
				},
				diagnostics = {
					theme = "dropdown",
				},
			},
			defaults = {
				file_ignore_patterns = { "node_modules" },
			},
		})
	end,
}
