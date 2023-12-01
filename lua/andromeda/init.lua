local M = {}

function M.setup(opts)
	opts = opts or {}

	require("colorbuddy").colorscheme("andromeda", false, {
		disable_defaults = true,
	})

	require("andromeda.colors").setup(opts)
	require("andromeda.theme").setup(opts)
	require("andromeda.plugins").setup(opts)
	require("andromeda.languages").setup(opts)
end

return M
