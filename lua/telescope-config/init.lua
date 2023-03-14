require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        width = 0.7,
        previewer = false,
        prompt_title = false
      }
    }
  }
})

--[[ require("telescope").load_extension("command_center") ]]
require("telescope").load_extension("file_browser")
require("telescope").load_extension("ui-select")
