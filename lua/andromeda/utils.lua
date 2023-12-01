local styles = require("colorbuddy").styles

local M = {}

function M.parseStyleOpts(opts)
	return {
		it = vim.tbl_get(opts, "styles", "italic") and styles.italic or styles.NONE,
		bo = vim.tbl_get(opts, "styles", "bold") and styles.bold or styles.NONE,
		ul = vim.tbl_get(opts, "styles", "underline") and styles.underline or styles.NONE,
		uc = vim.tbl_get(opts, "styles", "undercurl") and styles.undercurl or styles.NONE,
	}
end

-- We need this function because we can't do styles.NONE + styles.NONE (we need to ensure it's only added once)
function M.sumStyles(values)
	local sum = styles.NONE

	for _, value in ipairs(values) do
		if value ~= styles.NONE then
			sum = sum + value
		end
	end

	return sum
end

return M
