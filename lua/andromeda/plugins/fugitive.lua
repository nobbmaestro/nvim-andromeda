local Group = require("colorbuddy").Group
local c = require("colorbuddy").colors

Group.new("diffAdded", c.diff_add)
Group.new("diffRemoved", c.diff_delete)
Group.new("diffSubname", c.mono_5)
Group.new("gitcommitComment", c.mono_3)
Group.new("gitcommitDiscardedFile", c.mono_3)
Group.new("gitcommitDiscardedType", c.mono_3)
Group.new("gitcommitHeader", c.primary)
Group.new("gitcommitOnBranch", c.secondary)
Group.new("gitcommitSelectedFile", c.primary)
Group.new("gitcommitSelectedType", c.primary)
Group.new("gitcommitUntrackedFile", c.red)
