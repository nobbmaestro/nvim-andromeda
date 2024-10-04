local Group = require("colorbuddy").Group

local sumStyles = require("andromeda.utils").sumStyles
local parseStyleOpts = require("andromeda.utils").parseStyleOpts

local M = {}

function M.setup(opts)
	opts = opts or {}

	local c = require("colorbuddy").colors
	local g = require("colorbuddy").groups
	local s = parseStyleOpts(opts)

	-- Vim Editor
	Group.new("Normal", c.mono_6, c.nb_background)
	Group.new("InvNormal", c.mono_2, c.nb_background)
	Group.new("NormalFloat", c.mono_6)
	Group.new("FloatBorder", c.mono_3)

	Group.new("LineNr", c.mono_3, c.nb_background)
	Group.new("EndOfBuffer", c.mono_3, nil)
	Group.new("SignColumn", nil, c.nb_background)
	Group.new("VertSplit", g.FloatBorder, g.FloatBorder)

	Group.new("ErrorMsg", c.diagnostic_error)
	Group.new("WarningMsg", c.diagnostic_warning)
	Group.new("MoreMsg", c.diagnostic_info)

	-- Cursor
	Group.new("Cursor", nil)
	Group.new("CursorColumn", nil, c.mono_1)
	Group.new("CursorLine", nil, c.mono_1)
	Group.new("CursorLineNr", c.mono_6, c.mono_1)

	-- Files
	Group.new("Directory", c.primary)

	-- Search
	Group.new("Search", c.mono_1, c.blue)
	Group.new("IncSearch", c.mono_1, c.orange)

	-- Visual
	Group.new("Visual", nil, c.mono_2)
	Group.new("VisualMode", g.Visual, g.Visual)
	Group.new("VisualLineMode", g.Visual, g.Visual)

	-- Popup Menu
	Group.new("Title", c.primary)
	Group.new("Pmenu", c.mono_6, c.mono_1)
	Group.new("PmenuSel", c.primary, c.mono_2)
	Group.new("PmenuSbar", nil, c.mono_1)
	Group.new("PmenuThumb", nil, c.mono_2)

	-- TabLine
	Group.new("TabLine", c.mono_5, c.mono_2)
	Group.new("TabLineFill", nil, c.mono_2)
	Group.new("TabLineSel", c.mono_6, nil)

	-- StatusLine
	-- Disabled due to: https://github.com/vim/vim/issues/13366#issuecomment-1790617530
	-- Group.new("StatusLine", c.mono_3, c.mono_2)
	-- Group.new("StatusLineNC", c.mono_3, c.mono_2)

	-- Standard Syntax
	Group.new("Boolean", c.red)
	Group.new("Character", c.mono_5)
	Group.new("Comment", c.mono_5, nil, sumStyles({ s.it }))
	Group.new("Conceal", c.mono_5)
	Group.new("Constant", c.cyan)
	Group.new("Error", c.pink)
	Group.new("Folded", c.mono_3, c.mono_2)
	Group.new("Function", c.yellow)
	Group.new("Identifier", c.cyan)
	Group.new("Label", c.mono_3)
	Group.new("MatchParen", c.mono_6, nil)
	Group.new("NonText", c.mono_1, nil)
	Group.new("Number", c.orange)
	Group.new("PreProc", c.yellow)
	Group.new("Question", c.mono_6, c.mono_2)
	Group.new("Special", c.cyan, nil, sumStyles({ s.it }))
	Group.new("SpecialKey", c.pink, nil)
	Group.new("SpellBad", c.pink)
	Group.new("SpellCap", c.mono_6)
	Group.new("SpellLocal", c.mono_3)
	Group.new("SpellRare", c.pink)
	Group.new("Statement", c.purple)
	Group.new("Todo", c.pink)
	Group.new("Type", c.purple)

	-- Treesitter Syntax Highlighting
	-- See :help treesitter-highlight-groups
	Group.new("@boolean", c.red)
	Group.new("@character", c.red)
	Group.new("@character.special", c.red)
	Group.new("@comment", c.mono_5, nil, sumStyles({ s.it }))
	Group.new("@conditional", c.purple, nil, sumStyles({ s.it }))
	Group.new("@constant", c.red)
	Group.new("@constant.builtin", c.red)
	Group.new("@constant.macro", c.cyan)
	Group.new("@constructor", c.yellow)
	Group.new("@debug", c.hot_pink)
	Group.new("@define", c.purple, nil, sumStyles({ s.it }))
	Group.new("@exception", c.purple)
	Group.new("@field", c.cyan)
	Group.new("@float", c.orange)
	Group.new("@function", c.yellow)
	Group.new("@function.builtin", c.yellow)
	Group.new("@function.call", c.yellow)
	Group.new("@function.macro", c.yellow)
	Group.new("@include", c.purple, nil, sumStyles({ s.it }))
	Group.new("@keyword", c.purple, nil, sumStyles({ s.it }))
	Group.new("@keyword.function", c.purple, nil, sumStyles({ s.it }))
	Group.new("@keyword.operator", c.red, nil, sumStyles({ s.it }))
	Group.new("@keyword.return", c.purple, nil, sumStyles({ s.it }))
	Group.new("@label", c.cyan)
	Group.new("@macro", c.pink)
	Group.new("@method", c.yellow)
	Group.new("@method.call", c.yellow)
	Group.new("@namespace", c.cyan)
	Group.new("@none", c.red)
	Group.new("@number", c.orange)
	Group.new("@operator", c.red, nil, sumStyles({ s.it }))
	Group.new("@parameter", c.cyan)
	Group.new("@preproc", c.mono_5, nil, sumStyles({ s.it }))
	Group.new("@property", c.pink)
	Group.new("@punctuation", c.mono_6)
	Group.new("@punctuation.bracket", c.yellow)
	Group.new("@punctuation.delimiter", c.mono_6)
	Group.new("@punctuation.special", c.red)
	Group.new("@repeat", c.purple, nil, sumStyles({ s.it }))
	Group.new("@storageclass", c.purple)
	Group.new("@string", c.green)
	Group.new("@string.escape", c.green)
	Group.new("@string.special", c.red)
	Group.new("@string.regexp", c.blue)
	Group.new("@structure", c.cyan)
	Group.new("@tag", c.hot_pink)
	Group.new("@tag.attribute", c.hot_pink)
	Group.new("@tag.delimiter", c.hot_pink)
	Group.new("@text.literal", c.green)
	Group.new("@text.reference", c.red)
	Group.new("@text.title", c.pink)
	Group.new("@text.todo", c.hot_pink)
	Group.new("@text.underline", c.green)
	Group.new("@text.uri", c.purple)
	Group.new("@type", c.yellow)
	Group.new("@identifier", c.yellow)
	Group.new("@type.builtin", c.yellow)
	Group.new("@type.definition", c.purple)
	Group.new("@variable", c.cyan)
	Group.new("@variable.builtin", c.pink)

	-- Semantic Highlighting
	Group.new("DiagnosticError", c.diagnostic_error, nil, sumStyles({ s.bo, s.it, s.uc }))
	Group.new("DiagnosticHint", c.diagnostic_hint, nil, sumStyles({ s.bo, s.it, s.uc }))
	Group.new("DiagnosticInfo", c.diagnostic_info, nil, sumStyles({ s.bo, s.it, s.uc }))
	Group.new("DiagnosticWarn", c.diagnostic_warning, nil, sumStyles({ s.bo, s.it, s.uc }))
	Group.new("DiagnosticSignError", c.diagnostic_error)
	Group.new("DiagnosticSignHint", c.diagnostic_hint)
	Group.new("DiagnosticSignInfo", c.diagnostic_info)
	Group.new("DiagnosticSignWarn", c.diagnostic_warning)

	-- Git
	Group.new("DiffAdd", c.diff_add)
	Group.new("DiffChange", c.diff_change)
	Group.new("DiffDelete", c.diff_delete)
	Group.new("SignifySignAdd", g.DiffAdd)
	Group.new("SignifySignChange", g.DiffChange)
	Group.new("SignifySignDelete", g.DiffDelete)

	Group.new("DiffText", c.mono_4, c.mono_1)
	Group.new("GitBlameMsg", g.DiffText, g.DiffText)
	Group.new("GitSignsCurrentLineBlame", g.DiffText, g.DiffText)
end

return M
