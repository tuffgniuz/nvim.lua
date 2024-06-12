return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
	config = function()
		require("cmp").config.formatting = {
			format = require("tailwindcss-colorizer-cmp").formatter,
		}

		require("tailwindcss-colorizer-cmp").setup({
			color_square_width = 2,
		})
	end,
}
