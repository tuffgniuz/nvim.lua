return {
	"nvim-neorg/neorg",
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
							code = "~/docs/neorg/code",
						},
						default_workspace = "alignerr",
					},
				},
			},
		})
	end,
}
