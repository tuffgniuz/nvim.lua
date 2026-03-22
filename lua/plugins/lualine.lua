return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local function lsp_client_names()
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			if vim.tbl_isempty(clients) then
				return ""
			end

			local names = {}
			for _, client in ipairs(clients) do
				table.insert(names, client.name)
			end

			return table.concat(names, ",")
		end

		require("lualine").setup({
			options = {
				theme = "rozejin",
				section_separators = "",
				component_separators = "",
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return str:sub(1, 1)
						end,
					},
				},
				lualine_b = {
					-- path = 1 shows relative path; icons are enabled by default
					{ "filename", path = 1 },
				},
				lualine_c = { "diagnostics" },
				lualine_x = {
					{
						lsp_client_names,
						icon = "LSP:",
					},
					-- Displays the filetype (e.g., 'lua' or 'python')
					-- I placed it here so it stays quietly on the right
					"filetype",
				},
				lualine_y = { "location" },
				lualine_z = {},
			},
		})
	end,
}
