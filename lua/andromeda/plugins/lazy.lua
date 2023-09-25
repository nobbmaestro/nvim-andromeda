local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors

Group.new("LazyButton", colors.mono_3, nil)
Group.new("LazyButtonActive", colors.primary, nil)
Group.new("LazyNormal", colors.mono_5, colors.mono_1)
Group.new("LazySpecial", colors.primary)
Group.new("LazyLocal", colors.secondary)

Group.new("LazyDir", colors.cyan)
Group.new("LazyUrl", colors.cyan)
Group.new("LazyValue", colors.mono_5)

Group.new("LazyReasonCmd", colors.blue)
Group.new("LazyReasonEvent", colors.blue)
Group.new("LazyReasonFt", colors.blue)
Group.new("LazyReasonImport", colors.blue)
Group.new("LazyReasonKeys", colors.blue)
Group.new("LazyReasonPlugin", colors.mono_3)
Group.new("LazyReasonRuntime", colors.blue)
Group.new("LazyReasonSource", colors.mono_3)
Group.new("LazyReasonStart", colors.blue)
