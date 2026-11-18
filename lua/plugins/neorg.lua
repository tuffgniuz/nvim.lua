return {
	"nvim-neorg/neorg",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-neorg/tree-sitter-norg",
		"nvim-neorg/tree-sitter-norg-meta",
	},
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.concealer"] = {
					icon_preset = "varied",
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							general = "~/docs/neorg/general",
							jw = "~/docs/neorg/jw",
							alignerr = "~/docs/neorg/alignerr",
							outlier = "~/docs/neorg/outlier",
							cs = "~/docs/neorg/cs",
							projects = "~/docs/neorg/projects",
						},
						default_workspace = "general",
					},
				},
			},
		})
	end,
}
