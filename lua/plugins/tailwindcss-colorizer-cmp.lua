return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
	ft = { "css", "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
	config = function()
		require("cmp").config.formatting = {
			format = require("tailwindcss-colorizer-cmp").formatter,
		}

		require("tailwindcss-colorizer-cmp").setup({
			color_square_width = 2,
		})
	end,
}
