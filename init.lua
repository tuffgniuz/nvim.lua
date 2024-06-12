local plugins = require("plugins")

require("bootstrap")
require("keymaps")
require("options")
require("lazy").setup(plugins.plugins)
