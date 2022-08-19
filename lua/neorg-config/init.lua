require("neorg").setup({
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.keybinds"] = {
			config = {
				default_keybinds = true,
			},
		},
		["core.norg.concealer"] = {
			config = {
				markup = {
					enable = false,
				},
			},
		},
		["core.norg.qol.toc"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					dev = "~/Neorg/Notes/dev",
					jwl = "~/Neorg/Notes/jwl",
					yt = "~/Neorg/youtube",
					thesis = "~/Neorg/Notes/thesis",
					gtd = "~/Neorg/GTD",
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
		--> generates a table of content from the neorg file
		["core.gtd.base"] = {
			config = {
				workspace = "gtd",
			},
		},
	},
})
