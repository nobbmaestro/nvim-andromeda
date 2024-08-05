local M = {}

function M.setup(opts)
	opts = opts or {}

	require("andromeda.plugins.flash")
	require("andromeda.plugins.fugitive")
	require("andromeda.plugins.gitgutter")
	require("andromeda.plugins.harpoon")
	require("andromeda.plugins.lazy")
	require("andromeda.plugins.lualine")
	require("andromeda.plugins.mason")
	require("andromeda.plugins.rainbow-delimiters")
	require("andromeda.plugins.signify")
	require("andromeda.plugins.telescope")
    require("andromeda.plugins.indent-blankline")
end

return M
