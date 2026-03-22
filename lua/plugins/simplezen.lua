return {
	"tuffgniuz/simplezen",
	dir = "/home/tuffgniuz/code/projects/simplezen.nvim",
	config = function()
		require("simplezen").setup()
	end,
	keys = {
		{ "<leader>zz", "<cmd>lua require('simplezen').toggle()<CR>", desc = "Toggle Zen Mode" },
	},
}
