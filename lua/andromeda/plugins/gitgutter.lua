local Group = require("colorbuddy").Group
local g = require("colorbuddy").groups

Group.link("GitGutterAdd", g.DiffAdd)
Group.link("GitGutterChange", g.DiffChange)
Group.link("GitGutterDelete", g.DiffDelete)
