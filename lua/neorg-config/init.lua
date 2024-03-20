require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.keybinds"] = {},
		["core.concealer"] = {},
		["core.presenter"] = {
			config = {
				zen_mode = "truezen",
			},
		},
		["core.export"] = {},
		["core.dirman"] = {
			config = {
				workspaces = {
					dev = "~/Neorg/dev",
					devjutsu = "Neorg/devjutsu",
				},
				autodetect = true,
				autochdir = true,
			},
		},
		["core.completion"] = {
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
