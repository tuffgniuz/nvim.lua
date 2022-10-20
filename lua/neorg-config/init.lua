require("neorg").setup({
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.keybinds"] = {},
		["core.norg.concealer"] = {},
		--[[ ["core.presenter"] = {}, ]]
		--[[ 	config = { ]]
		--[[ 		markup = { ]]
		--[[ 			enable = false, ]]
		--[[ 		}, ]]
		--[[ 	}, ]]
		--[[ }, ]]
		--[[ ["core.norg.qol.toc"] = {}, ]]
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					dev = "~/.neorg/notes/dev",
					yt = "~/.neorg/notes/youtube",
					gtd = "~/.neorg/gtd",
				},
				autodetect = true,
				autochdir = true,
			},
		},
		["core.integrations.nvim-cmp"] = {},
		--[[ ["core.norg.completion"] = {}, ]]
		--> generates a table of content from the neorg file
		--[[ ["core.gtd.base"] = { ]]
		--[[ 	config = { ]]
		--[[ 		workspace = "gtd", ]]
		--[[ 	}, ]]
		--[[ }, ]]
	},
})
