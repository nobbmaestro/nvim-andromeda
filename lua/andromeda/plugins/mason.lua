local cb = require("colorbuddy")

local Group = cb.Group
local colors = cb.colors

-- highlight reference:
-- https://github.com/williamboman/mason.nvim/blob/main/lua/mason/ui/colors.lua

-- general
Group.new("MasonNormal", colors.mono_5, colors.mono_1)

Group.new("MasonHeader", colors.primary, colors.mono_1)
Group.new("MasonHeaderSecondary", colors.secondary)

Group.new("MasonHighlight", colors.primary)
Group.new("MasonHighlightBlock", colors.primary)
Group.new("MasonHighlightBlockBold", colors.secondary, colors.mono_1)

Group.new("MasonHighlightSecondary", colors.primary)
Group.new("MasonHighlightBlockSecondary", colors.primary)
Group.new("MasonHighlightBlockBoldSecondary", colors.secondary, colors.mono_1)

Group.new("MasonMuted", colors.mono_4)
Group.new("MasonMutedBlock", colors.mono_3)
Group.new("MasonMutedBlockBold", colors.mono_4)

Group.new("MasonError", colors.diff_delete)
