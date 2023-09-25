local Group = require("colorbuddy").Group
local groups = require("colorbuddy").groups
local colors = require("colorbuddy").colors

Group.link("lualine_b_diff_added_normal", groups.DiffAdd)
Group.link("lualine_b_diff_added_insert", groups.DiffAdd)
Group.link("lualine_b_diff_added_visual", groups.DiffAdd)
Group.link("lualine_b_diff_added_replace", groups.DiffAdd)
Group.link("lualine_b_diff_added_command", groups.DiffAdd)
Group.link("lualine_b_diff_added_terminal", groups.DiffAdd)
Group.link("lualine_b_diff_added_inactive", groups.DiffAdd)

Group.link("lualine_b_diff_modified_normal", groups.DiffChange)
Group.link("lualine_b_diff_modified_insert", groups.DiffChange)
Group.link("lualine_b_diff_modified_visual", groups.DiffChange)
Group.link("lualine_b_diff_modified_replace", groups.DiffChange)
Group.link("lualine_b_diff_modified_command", groups.DiffChange)
Group.link("lualine_b_diff_modified_terminal", groups.DiffChange)
Group.link("lualine_b_diff_modified_inactive", groups.DiffChange)

Group.link("lualine_b_diff_removed_normal", groups.DiffDelete)
Group.link("lualine_b_diff_removed_insert", groups.DiffDelete)
Group.link("lualine_b_diff_removed_visual", groups.DiffDelete)
Group.link("lualine_b_diff_removed_replace", groups.DiffDelete)
Group.link("lualine_b_diff_removed_command", groups.DiffDelete)
Group.link("lualine_b_diff_removed_terminal", groups.DiffDelete)
Group.link("lualine_b_diff_removed_inactive", groups.DiffDelete)

Group.new("lualine_b_diagnostics_error_normal", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_insert", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_visual", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_replace", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_command", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_terminal", colors.diagnostic_error)
Group.new("lualine_b_diagnostics_error_inactive", colors.diagnostic_error)

Group.new("lualine_b_diagnostics_warn_normal", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_insert", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_visual", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_replace", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_command", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_terminal", colors.diagnostic_warning)
Group.new("lualine_b_diagnostics_warn_inactive", colors.diagnostic_warning)

Group.new("lualine_b_diagnostics_info_normal", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_insert", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_visual", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_replace", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_command", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_terminal", colors.diagnostic_info)
Group.new("lualine_b_diagnostics_info_inactive", colors.diagnostic_info)

Group.new("lualine_b_diagnostics_hint_normal", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_insert", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_visual", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_replace", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_command", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_terminal", colors.diagnostic_hint)
Group.new("lualine_b_diagnostics_hint_inactive", colors.diagnostic_hint)

local M = {}

local c = require("andromeda.colors").all()

M.theme = {
    normal = {
        a = { fg = c.background, bg = c.blue, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.mono_5, bg = c.mono_2 },
    },
    insert = {
        a = { fg = c.background, bg = c.cyan, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.mono_5, bg = c.mono_2 },
    },
    visual = {
        a = { fg = c.background, bg = c.green, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.mono_5, bg = c.mono_2 },
    },
    replace = {
        a = { fg = c.background, bg = c.orange, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.mono_5, bg = c.mono_2 },
    },
    command = {
        a = { fg = c.background, bg = c.hot_pink, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.mono_5, bg = c.mono_2 },
    },
    terminal = {
        a = { fg = c.background, bg = c.hot_pink, gui = "bold" },
        b = { fg = c.mono_4, bg = c.mono_1 },
        c = { fg = c.mono_4, bg = c.mono_2 },
        x = { fg = c.mono_4, bg = c.mono_2 },
        y = { fg = c.mono_4, bg = c.mono_2 },
        z = { fg = c.hot_pink, bg = c.mono_2 },
    },
    inactive = {
        a = { fg = c.mono_1, bg = c.background },
        b = { fg = c.mono_1, bg = c.background },
        c = { fg = c.mono_1, bg = c.background },
    },
}

return M
