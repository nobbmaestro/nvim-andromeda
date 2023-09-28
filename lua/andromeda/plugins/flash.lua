local Group = require("colorbuddy").Group
local c = require("colorbuddy").colors
local g = require("colorbuddy").groups

Group.link("FlashBackdrop", g.InvNormal)
Group.link("FlashCurrent", g.IncSearch)
Group.link("FlashMatch", g.Search)
Group.new("FlashLabel", c.mono_1, c.pink)
