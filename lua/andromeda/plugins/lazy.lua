local Group = require("colorbuddy").Group
local c = require("colorbuddy").colors

Group.new("LazyButton", c.mono_3, nil)
Group.new("LazyButtonActive", c.primary, nil)
Group.new("LazyNormal", c.mono_6, c.mono_1)
Group.new("LazySpecial", c.primary)
Group.new("LazyLocal", c.secondary)

Group.new("LazyDir", c.cyan)
Group.new("LazyUrl", c.cyan)
Group.new("LazyValue", c.mono_6)

Group.new("LazyReasonCmd", c.blue)
Group.new("LazyReasonEvent", c.blue)
Group.new("LazyReasonFt", c.blue)
Group.new("LazyReasonImport", c.blue)
Group.new("LazyReasonKeys", c.blue)
Group.new("LazyReasonPlugin", c.mono_3)
Group.new("LazyReasonRuntime", c.blue)
Group.new("LazyReasonSource", c.mono_3)
Group.new("LazyReasonStart", c.blue)
