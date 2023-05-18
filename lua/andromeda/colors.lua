local Color = require("colorbuddy").Color
local colors = require("colorbuddy").colors

local M = {}

function M.getPreset(preset)
	return require("andromeda.presets." .. preset)
end

function M.mergeWithPreset(preset, merge)
	return vim.tbl_extend("force", M.getPreset(preset), merge)
end

function M.all()
	local c = {}

	for name, _ in pairs(colors) do
		c[string.gsub(name, "^nb_", "")] = colors[name]:to_vim()
	end

	return c
end

function M.setup(opts)
	local preset = M.getPreset(opts.preset or "andromeda")

	local getConfiguredColor = function(color)
		return opts.colors and opts.colors[color] or preset[color]
	end

	-- Set up background color
	-- Can be configured by preset or end user
	-- TODO: This will eventually change to `background` when we PR a fix to colorbuddy (since `background` is currently reserved)
	Color.new("nb_background", getConfiguredColor("background"))

	-- Set up primary and secondary flavor colors
	-- Can be configured by preset or end user
	Color.new("primary", getConfiguredColor("primary"))
	Color.new("secondary", getConfiguredColor("secondary"))

	-- Set up semantic color palette
	-- These are to be used sparingly, but have semantic meaning for things like lsp diagnostics, git diffs, etc.
	-- Can be configured by preset or end user
	Color.new("diagnostic_error", getConfiguredColor("diagnostic_error"))
	Color.new("diagnostic_warning", getConfiguredColor("diagnostic_warning"))
	Color.new("diagnostic_info", getConfiguredColor("diagnostic_info"))
	Color.new("diagnostic_hint", getConfiguredColor("diagnostic_hint"))
	Color.new("diff_add", getConfiguredColor("diff_add"))
	Color.new("diff_change", getConfiguredColor("diff_change"))
	Color.new("diff_delete", getConfiguredColor("diff_delete"))

	-- Set up monochromatic colors of the background
	Color.new("mono_1", getConfiguredColor("mono_1"))
	Color.new("mono_2", getConfiguredColor("mono_2"))
	Color.new("mono_3", getConfiguredColor("mono_3"))
	Color.new("mono_4", getConfiguredColor("mono_4"))
	Color.new("mono_5", getConfiguredColor("mono_5"))

    -- Set up andromeda preset
	Color.new("cyan", getConfiguredColor("cyan"))
	Color.new("orange", getConfiguredColor("orange"))
	Color.new("yellow", getConfiguredColor("yellow"))
	Color.new("pink", getConfiguredColor("pink"))
	Color.new("hot_pink", getConfiguredColor("hot_pink"))
	Color.new("purple", getConfiguredColor("purple"))
	Color.new("blue", getConfiguredColor("blue"))
	Color.new("red", getConfiguredColor("red"))
	Color.new("green", getConfiguredColor("green"))
end

return M
