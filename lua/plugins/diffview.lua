return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles" },
	config = function()
		local actions = require("diffview.actions")

		require("diffview").setup({
			keymaps = {
				view = {
					{ "n", "<leader>dl", actions.cycle_layout, { desc = "Cycle layouts" } },
				},
				file_panel = {
					{ "n", "<leader>dl", actions.cycle_layout, { desc = "Cycle layouts" } },
				},
			},
		})
	end,
}
