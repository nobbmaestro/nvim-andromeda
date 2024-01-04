local Group = require("colorbuddy").Group
local c = require("colorbuddy").colors
local g = require("colorbuddy").groups

Group.link("TelescopeBorder", g.FloatBorder)
Group.link("TelescopeMatching", g.Title)
Group.link("TelescopeTitle", g.Title)
Group.new("TelescopePromptCounter", c.mono_3, nil)
Group.new("TelescopeResultsNormal", c.mono_5, nil)
