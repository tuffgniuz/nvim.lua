require("bootstrap")
require("keymaps")
require("options")

local plugins = require("plugins")

require("lazy").setup(plugins, {
	checker = {
		enabled = true, -- Enable the checker
		frequency = 3600 * 24, -- Check for updates once every 24 hours (in seconds)
	},
	change_detection = {
		enabled = true, -- Automatically check for changes in the plugin configurations
		notify = false, -- Don't notify on every change, as it can be noisy
	},
})
