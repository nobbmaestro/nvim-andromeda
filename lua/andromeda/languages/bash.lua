local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

Group.new("@constant.bash", colors.cyan)
Group.new("@parameter.bash", colors.red)
Group.new("@string.bash", colors.green)
