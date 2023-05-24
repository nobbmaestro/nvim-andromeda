local Group = require("colorbuddy").Group
local groups = require("colorbuddy").groups

Group.link("GitGutterAdd", groups.DiffAdd)
Group.link("GitGutterChange", groups.DiffChange)
Group.link("GitGutterDelete", groups.DiffDelete)
