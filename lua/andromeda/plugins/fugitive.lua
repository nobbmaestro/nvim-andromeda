local cb = require("colorbuddy")

local Group = cb.Group
local colors = cb.colors

Group.new("gitcommitComment", colors.mono_3)
Group.new("gitcommitOnBranch", colors.secondary)
Group.new("gitcommitHeader", colors.primary)
Group.new("gitcommitSelectedType", colors.primary)
Group.new("gitcommitSelectedFile", colors.primary)
Group.new("gitcommitDiscardedType", colors.mono_3)
Group.new("gitcommitDiscardedFile", colors.mono_3)
Group.new("gitcommitUntrackedFile", colors.red)
Group.new("diffSubname", colors.mono_5)
Group.new("diffAdded", colors.diff_add)
Group.new("diffRemoved", colors.diff_delete)
