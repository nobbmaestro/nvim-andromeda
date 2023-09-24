local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

Group.new("MasonError", colors.diff_delete)
Group.new("MasonHeader", colors.primary, colors.mono_1)
Group.new("MasonHeaderSecondary", colors.secondary)
Group.new("MasonHighlight", colors.primary)
Group.new("MasonHighlightBlock", colors.primary)
Group.new("MasonHighlightBlockBold", colors.secondary, colors.mono_1)
Group.new("MasonHighlightBlockBoldSecondary", colors.secondary, colors.mono_1)
Group.new("MasonHighlightBlockSecondary", colors.primary)
Group.new("MasonHighlightSecondary", colors.primary)
Group.new("MasonMuted", colors.mono_4)
Group.new("MasonMutedBlock", colors.mono_3)
Group.new("MasonMutedBlockBold", colors.mono_4)
Group.new("MasonNormal", colors.mono_5, colors.mono_1)
