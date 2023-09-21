local Group = require("colorbuddy").Group
local colors = require("colorbuddy").colors
local styles = require("colorbuddy").styles

local parseStyleOpts = function(opts)
	return {
		italic = vim.tbl_get(opts, "styles", "italic") and styles.italic or styles.NONE,
		bold = vim.tbl_get(opts, "styles", "bold") and styles.bold or styles.NONE,
		underline = vim.tbl_get(opts, "styles", "underline") and styles.underline or styles.NONE,
		undercurl = vim.tbl_get(opts, "styles", "undercurl") and styles.undercurl or styles.NONE,
	}
end

-- We need this function because we can't do styles.NONE + styles.NONE (we need to ensure it's only added once)
local sumStyles = function(values)
	local sum = styles.NONE

	for _, value in ipairs(values) do
		if value ~= styles.NONE then
			sum = sum + value
		end
	end

	return sum
end

local M = {}

function M.setup(opts)
	opts = opts or {}

	local s = parseStyleOpts(opts)

	-- Generic Highlighting
	Group.new("Normal", colors.mono_5, colors.nb_background)
	Group.new("Search", colors.mono_4, colors.mono_5)
	Group.new("IncSearch", colors.mono_1, colors.mono_5)
	Group.new("Visual", nil, colors.mono_2)
	Group.new("SignColumn", nil, colors.nb_background)
	Group.new("LineNr", colors.mono_3, colors.nb_background)
	Group.new("EndOfBuffer", colors.mono_3, nil)

	Group.new("Boolean", colors.red)
	Group.new("Comment", colors.mono_4, nil, sumStyles({ s.italic }))
	Group.new("Constant", colors.cyan)
	Group.new("Character", colors.mono_4)
	Group.new("Identifier", colors.cyan)
	Group.new("Statement", colors.purple)
	Group.new("PreProc", colors.yellow)
	Group.new("Type", colors.purple)
	Group.new("Special", colors.mono_4)
	Group.new("Error", colors.pink)
	Group.new("Todo", colors.pink)
	Group.new("Function", colors.yellow)
	Group.new("Number", colors.orange)
	Group.new("Float", colors.orange)

	Group.new("ColorColumn", nil, colors.mono_1)
	Group.new("Conceal", colors.mono_4)
	Group.new("Cursor", nil)
	Group.new("CursorColumn", nil, colors.mono_1)
	Group.new("CursorLine", nil, colors.mono_1)
	Group.new("CursorLineNr", colors.cyan, colors.mono_1, sumStyles({ s.italic, s.bold }))
	Group.new("Directory", colors.primary)
	Group.new("DiffAdd", colors.pink, colors.mono_1)
	Group.new("DiffChange", colors.mono_5, colors.mono_1)
	Group.new("DiffDelete", colors.secondary, colors.mono_1)
	Group.new("DiffText", colors.mono_5, colors.mono_4)
	Group.new("ErrorMsg", colors.red, colors.nb_background)
	Group.new("VertSplit", colors.mono_2, colors.mono_1)

	Group.new("Folded", colors.mono_3, colors.mono_2)
	Group.new("FoldColumn", colors.mono_3, colors.mono_2)
	Group.new("MatchParen", nil, colors.mono_4)
	Group.new("MoreMsg", nil, colors.mono_3)
	Group.new("NonText", colors.mono_1, nil)
	Group.new("Pmenu", colors.mono_5, colors.mono_2)
	Group.new("PmenuSel", colors.primary, colors.mono_1)
	Group.new("PmenuSbar", colors.pink, colors.mono_2)
	Group.new("PmenuThumb", colors.pink, colors.mono_4)
	Group.new("Question", colors.mono_5, colors.mono_2)
	Group.new("SpecialKey", colors.pink, nil)
	Group.new("SpellBad", colors.pink)
	Group.new("SpellCap", colors.mono_5)
	Group.new("SpellLocal", colors.mono_3)
	Group.new("SpellRare", colors.pink)
	Group.new("StatusLine", colors.mono_3, colors.mono_2)
	Group.new("TabLine", colors.mono_4, colors.mono_2)
	Group.new("TabLineFill", nil, colors.mono_2)
	Group.new("TabLineSel", colors.mono_5, nil)
	Group.new("Title", colors.mono_4)
	Group.new("VisualNOS", colors.pink, colors.mono_2)
	Group.new("WarningMsg", colors.pink)
	Group.new("WildMenu", colors.mono_4, colors.mono_2)

	-- Treesitter Syntax Highlighting
	-- See :help treesitter-highlight-groups
	Group.new("@boolean", colors.red)
	Group.new("@character", colors.red)
	Group.new("@character.special", colors.red)
	Group.new("@comment", colors.mono_4, nil, sumStyles({ s.italic }))
	Group.new("@conditional", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@constant", colors.red)
	Group.new("@constant.builtin", colors.red)
	Group.new("@constant.macro", colors.cyan)
	Group.new("@constructor", colors.yellow)
	Group.new("@debug", colors.hot_pink)
	Group.new("@define", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@exception", colors.purple)
	Group.new("@field", colors.cyan)
	Group.new("@float", colors.orange)
	Group.new("@function", colors.yellow)
	Group.new("@function.builtin", colors.yellow)
	Group.new("@function.call", colors.yellow)
	Group.new("@function.macro", colors.yellow)
	Group.new("@include", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@keyword", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@keyword.function", colors.purple)
	Group.new("@keyword.operator", colors.red, nil, sumStyles({ s.italic }))
	Group.new("@keyword.return", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@label", colors.cyan)
	Group.new("@macro", colors.pink)
	Group.new("@method", colors.yellow)
	Group.new("@method.call", colors.yellow)
	Group.new("@namespace", colors.cyan)
	Group.new("@none", colors.red)
	Group.new("@number", colors.orange)
	Group.new("@operator", colors.red, nil, sumStyles({ s.italic }))
	Group.new("@parameter", colors.cyan)
	Group.new("@preproc", colors.mono_4, nil, sumStyles({ s.italic }))
	Group.new("@property", colors.pink)
	Group.new("@punctuation", colors.mono_5)
	Group.new("@punctuation.bracket", colors.yellow)
	Group.new("@punctuation.delimiter", colors.mono_5)
	Group.new("@punctuation.special", colors.red)
	Group.new("@repeat", colors.purple, nil, sumStyles({ s.italic }))
	Group.new("@storageclass", colors.purple)
	Group.new("@string", colors.green)
	Group.new("@string.escape", colors.green)
	Group.new("@string.special", colors.red)
	Group.new("@string.regexp", colors.blue)
	Group.new("@structure", colors.cyan)
	Group.new("@tag", colors.hot_pink)
	Group.new("@tag.attribute", colors.hot_pink)
	Group.new("@tag.delimiter", colors.hot_pink)
	Group.new("@text.literal", colors.mono_4)
	Group.new("@text.reference", colors.hot_pink)
	Group.new("@text.title", colors.hot_pink)
	Group.new("@text.todo", colors.hot_pink)
	Group.new("@text.underline", colors.green)
	Group.new("@text.uri", colors.hot_pink)
	Group.new("@type", colors.yellow)
	Group.new("@identifier", colors.yellow)
	Group.new("@type.builtin", colors.yellow)
	Group.new("@type.definition", colors.purple)
	Group.new("@variable", colors.cyan)
	Group.new("@variable.builtin", colors.pink)

	-- Semantic Highlighting
	Group.new("DiagnosticError", colors.diagnostic_error, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
	Group.new("DiagnosticWarn", colors.diagnostic_warning, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
	Group.new("DiagnosticInfo", colors.diagnostic_info, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
	Group.new("DiagnosticHint", colors.diagnostic_hint, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
	Group.new("DiagnosticSignError", colors.diagnostic_error)
	Group.new("DiagnosticSignWarn", colors.diagnostic_warning)
	Group.new("DiagnosticSignInfo", colors.diagnostic_info)
	Group.new("DiagnosticSignHint", colors.diagnostic_hint)
	Group.new("DiffAdd", colors.diff_add)
	Group.new("DiffChange", colors.diff_change)
	Group.new("DiffDelete", colors.diff_delete)
end

return M
