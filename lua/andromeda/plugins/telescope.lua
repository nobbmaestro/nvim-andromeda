local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

-- Telescope colors
Group.new("TelescopeTitle", colors.primary)
Group.new("TelescopeBorder", colors.mono_3)
Group.new("TelescopeResultsNormal", colors.mono_5)
Group.new("TelescopeMatching", colors.primary)
Group.new("TelescopePromptCounter", colors.primary, nil)
