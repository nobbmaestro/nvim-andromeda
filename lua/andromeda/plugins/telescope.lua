local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

-- Telescope colors
Group.new("TelescopeTitle", colors.cyan)
Group.new("TelescopeBorder", colors.mono_4)
Group.new("TelescopeResultsNormal", colors.mono_4)
Group.new("TelescopeMatching", colors.cyan)
Group.new("TelescopePromptCounter", colors.pink, nil)
