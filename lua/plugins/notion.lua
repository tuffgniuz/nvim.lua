return {
	"ALT-F4-LLC/notion.nvim",
	pin = true,
	build = function(plugin)
		local patch = vim.fn.stdpath("config") .. "/patches/notion-title-property.patch"
		local reverse_check = vim.system({
			"git",
			"-C",
			plugin.dir,
			"apply",
			"--reverse",
			"--check",
			patch,
		}):wait()

		if reverse_check.code == 0 then
			return
		end

		local result = vim.system({ "git", "-C", plugin.dir, "apply", patch }):wait()
		if result.code ~= 0 then
			error("Failed to patch notion.nvim: " .. (result.stderr or "unknown error"))
		end
	end,
	cmd = {
		"NotionBrowser",
		"NotionCreate",
		"NotionDelete",
		"NotionEdit",
		"NotionSync",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local database_id = vim.fn.system({
			"secret-tool",
			"lookup",
			"application",
			"notion",
			"credential",
			"database-id",
		}):gsub("%s+$", "")

		if database_id == "" then
			database_id = nil
		end

		require("notion").setup({
			notion_token_cmd = {
				"secret-tool",
				"lookup",
				"application",
				"notion",
				"credential",
				"token",
			},
			database_id = database_id,
			title_property = "Note",
			use_telescope = true,
		})
	end,
}
