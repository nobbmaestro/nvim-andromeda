local M = {}

function M.setup(opts)
	opts = opts or {}

	require("andromeda.languages.bash")
	require("andromeda.languages.c")
	require("andromeda.languages.css")
	require("andromeda.languages.html")
	require("andromeda.languages.python")
end

return M
