local Group = require("colorbuddy").Group
local c = require("colorbuddy").colors

Group.new("MasonError", c.diff_delete)
Group.new("MasonHeader", c.primary, c.mono_1)
Group.new("MasonHeaderSecondary", c.secondary)
Group.new("MasonHighlight", c.primary)
Group.new("MasonHighlightBlock", c.primary)
Group.new("MasonHighlightBlockBold", c.secondary, c.mono_1)
Group.new("MasonHighlightBlockBoldSecondary", c.secondary, c.mono_1)
Group.new("MasonHighlightBlockSecondary", c.primary)
Group.new("MasonHighlightSecondary", c.primary)
Group.new("MasonMuted", c.mono_5)
Group.new("MasonMutedBlock", c.mono_3)
Group.new("MasonMutedBlockBold", c.mono_5)
Group.new("MasonNormal", c.mono_6, c.mono_1)
