local Group = require("colorbuddy").Group

local sumStyles = require("andromeda.utils").sumStyles
local parseStyleOpts = require("andromeda.utils").parseStyleOpts

local M = {}

function M.setup(opts)
	opts = opts or {}

	local c = require("colorbuddy").colors
	local g = require("colorbuddy").groups
	local s = parseStyleOpts(opts)

	Group.new("@property.c", c.yellow)
	Group.new("@type.builtin.c", c.purple)
	Group.new("@type.definition.c", c.yellow)
	Group.new("@type.qualifier.c", c.yellow)
	Group.new("@variable.builtin.c", c.yellow)

	Group.new("@preproc.c", c.purple, nil, sumStyles({ s.it }))
	Group.new("@preproc.cpp", c.purple, nil, sumStyles({ s.it }))
	Group.link("@lsp.type.comment.c", g.preproc.c)
end

return M
