return {
	"stevearc/aerial.nvim",
	cmd = { "AerialOpen", "AerialToggle" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			attach_mode = "global",
			backends = { "lsp", "treesitter", "markdown", "man" },
			layout = {
				default_direction = "prefer_left",
				min_width = 28,
			},
			show_guides = true,
		})
	end,
}
