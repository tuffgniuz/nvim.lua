require("neorg").setup({
	-- Tell Neorg what modules to load
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.keybinds"] = {
			config = {
				default_keybinds = true,
				neorg_leader = "<Leader>o",
			},
		},
		["core.norg.concealer"] = {
			config = {
				markup = {
					enabled = false,
				},
			},
		}, -- Allows for use of icons
		["core.norg.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					math = "~/Documents/Notes/Math",
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
	},
})
