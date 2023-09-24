local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

Group.new("diffAdded", colors.diff_add)
Group.new("diffRemoved", colors.diff_delete)
Group.new("diffSubname", colors.mono_5)
Group.new("gitcommitComment", colors.mono_3)
Group.new("gitcommitDiscardedFile", colors.mono_3)
Group.new("gitcommitDiscardedType", colors.mono_3)
Group.new("gitcommitHeader", colors.primary)
Group.new("gitcommitOnBranch", colors.secondary)
Group.new("gitcommitSelectedFile", colors.primary)
Group.new("gitcommitSelectedType", colors.primary)
Group.new("gitcommitUntrackedFile", colors.red)
