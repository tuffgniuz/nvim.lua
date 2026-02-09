local M = {}

local text_width = 110
local zen_group = vim.api.nvim_create_augroup("SimpleZen", { clear = true })

-- Store global settings to restore later
local restore = {
	laststatus = vim.o.laststatus,
	showmode = vim.o.showmode,
	ruler = vim.o.ruler,
	showtabline = vim.o.showtabline,
	fillchars = vim.o.fillchars, -- Added: Save fillchars
}

local function adjust_margins()
	local screen_w = vim.o.columns
	local pad_w = math.floor((screen_w - text_width) / 2)
	if pad_w < 2 then
		pad_w = 2
	end

	local left = vim.t.zen_left_win
	local right = vim.t.zen_right_win

	if left and vim.api.nvim_win_is_valid(left) then
		vim.api.nvim_win_set_width(left, pad_w)
	end
	if right and vim.api.nvim_win_is_valid(right) then
		vim.api.nvim_win_set_width(right, pad_w)
	end
end

function M.toggle()
	-- 1. EXIT ZEN MODE
	if vim.t.is_zen_mode then
		vim.cmd("tabclose")

		-- Restore globals
		vim.o.laststatus = restore.laststatus
		vim.o.showmode = restore.showmode
		vim.o.ruler = restore.ruler
		vim.o.showtabline = restore.showtabline
		vim.o.fillchars = restore.fillchars -- Restore split lines

		vim.api.nvim_clear_autocmds({ group = zen_group })
		return
	end

	-- 2. ENTER ZEN MODE
	restore.laststatus = vim.o.laststatus
	restore.showmode = vim.o.showmode
	restore.ruler = vim.o.ruler
	restore.showtabline = vim.o.showtabline
	restore.fillchars = vim.o.fillchars

	-- Create new tab
	vim.cmd("tab split")
	vim.t.is_zen_mode = true

	-- Hide UI elements
	vim.o.laststatus = 0
	vim.o.showmode = false
	vim.o.ruler = false
	vim.o.showtabline = 0

	-- THE FIX: Replace border lines with empty spaces globally
	vim.opt.fillchars:append({
		vert = " ",
		horiz = " ",
		eob = " ",
		vertleft = " ",
		vertright = " ",
		verthoriz = " ",
	})

	-- Configure Center Window
	local main_win = vim.api.nvim_get_current_win()
	vim.wo[main_win].number = false
	vim.wo[main_win].relativenumber = false
	vim.wo[main_win].signcolumn = "no"
	vim.wo[main_win].wrap = true
	vim.wo[main_win].linebreak = true

	-- Ensure the center background matches the margins
	vim.wo[main_win].winhighlight = "Normal:Normal,WinSeparator:Normal"

	-- Calculate padding
	local screen_w = vim.o.columns
	local pad_w = math.floor((screen_w - text_width) / 2)
	if pad_w < 2 then
		pad_w = 2
	end

	-- --- LEFT MARGIN ---
	vim.cmd("topleft " .. pad_w .. "vsplit")
	local left_win = vim.api.nvim_get_current_win()
	local left_buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_win_set_buf(left_win, left_buf)

	vim.bo[left_buf].modifiable = false
	vim.bo[left_buf].buftype = "nofile"
	vim.wo[left_win].winhighlight = "Normal:Normal,WinSeparator:Normal,EndOfBuffer:Normal"

	vim.t.zen_left_win = left_win

	-- --- RIGHT MARGIN ---
	vim.cmd("wincmd l")
	vim.cmd("botright " .. pad_w .. "vsplit")
	local right_win = vim.api.nvim_get_current_win()
	local right_buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_win_set_buf(right_win, right_buf)

	vim.bo[right_buf].modifiable = false
	vim.bo[right_buf].buftype = "nofile"
	vim.wo[right_win].winhighlight = "Normal:Normal,WinSeparator:Normal,EndOfBuffer:Normal"

	vim.t.zen_right_win = right_win

	-- --- FINALIZE ---
	vim.cmd("wincmd h") -- Focus Center

	-- 3. AUTO-RESIZE
	vim.api.nvim_create_autocmd("VimResized", {
		group = zen_group,
		callback = function()
			if vim.t.is_zen_mode then
				adjust_margins()
			end
		end,
	})
end

return M
