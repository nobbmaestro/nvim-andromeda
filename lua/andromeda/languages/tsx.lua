local Group = require("colorbuddy").Group

local sumStyles = require("andromeda.utils").sumStyles
local parseStyleOpts = require("andromeda.utils").parseStyleOpts

local M = {}

function M.setup(opts)
	opts = opts or {}

	local c = require("colorbuddy").colors
	local s = parseStyleOpts(opts)

	Group.new("@constructor.tsx", c.red)
	Group.new("@property.tsx", c.yellow)
	Group.new("@tag.attribute.tsx", c.yellow, nil, sumStyles({ s.it }))
end

return M
