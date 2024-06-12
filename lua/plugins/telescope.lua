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
