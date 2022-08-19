require("true-zen").setup({
	modes = {
		ataraxis = {
			left_padding = 15,
			right_padding = 15,
			top_padding = 3,
			bottom_padding = 5,
			ideal_writing_area_width = { 0 },
			auto_padding = false,
			keep_default_fold_fillchars = true,
			custom_bg = { "none", "" },
			bg_configuration = true,
			quit = "untoggle",
			ignore_floating_windows = true,
			affected_higroups = {
				NonText = true,
				FoldColumn = true,
				ColorColumn = true,
				VertSplit = true,
				StatusLine = true,
				StatusLineNC = true,
				SignColumn = true,
			},
		},
	},
})
