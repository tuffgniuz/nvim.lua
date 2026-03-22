return {
	"tuffgniuz/plugger",
	dir = "/home/tuffgniuz/Dev/plugger", -- Path to your local development folder
	config = function()
		-- Logic: Code to run when the plugin loads
		require("plugger").setup({})
	end,
}
