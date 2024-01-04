local Group = require("colorbuddy").Group

local sumStyles = require("andromeda.utils").sumStyles
local parseStyleOpts = require("andromeda.utils").parseStyleOpts

local M = {}

function M.setup(opts)
	opts = opts or {}

	local c = require("colorbuddy").colors
	local s = parseStyleOpts(opts)

	Group.new("@constructor.javascript", c.red)
	Group.new("@property.javascript", c.cyan)
	Group.new("@tag.attribute.javascript", c.yellow, nil, sumStyles({ s.it }))
	Group.new("@variable.builtin.javascript", c.cyan)
end

return M
