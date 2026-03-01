local M = {}

function M.setup(opts)
	opts = opts or {}

	require("andromeda.languages.bash")
	require("andromeda.languages.c").setup(opts)
	require("andromeda.languages.css")
	require("andromeda.languages.html")
	require("andromeda.languages.js").setup(opts)
	require("andromeda.languages.lua")
	require("andromeda.languages.python")
	require("andromeda.languages.tsx").setup(opts)
end

return M
