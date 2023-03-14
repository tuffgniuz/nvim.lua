require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.keybinds"] = {},
		["core.norg.concealer"] = {},
		["core.presenter"] = {
			config = {
				zen_mode = "truezen",
			},
		},
		["core.export"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					--[[ dev = "~/norg/dev", ]]
					--[[ yt = "~/norg/youtube", ]]
					--[[ general = "~/norg/general", ]]
					work = "~/norg/work",
				},
				autodetect = true,
				autochdir = true,
			},
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		--[[ ["core.gtd.base"] = { ]]
		--[[ 	config = { ]]
		--[[ 		workspace = "gtd", ]]
		--[[ 	}, ]]
		--[[ }, ]]
	},
})
