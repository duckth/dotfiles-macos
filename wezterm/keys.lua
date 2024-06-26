local wezterm = require("wezterm")
local act = wezterm.action

---@param key string
---@param action function|string?
---@param mods string? "LEADER" | "CTRL" | "SHIFT" | "ALT" | "SUPER" | "CMD"
---@return table
local function get_key(key, action, mods)
	return {
		action = action,
		key = key,
		mods = mods,
	}
end

local M = {}

M.keys = {
	get_key("+", act.IncreaseFontSize, "SUPER"),
	get_key("-", act.DecreaseFontSize, "SUPER"),
	get_key("0", act.ResetFontSize, "SUPER"),
	get_key("o", act.EmitEvent("toggle-opacity"), "SUPER"),
	get_key(
		"k",
		act.Multiple({ act.ClearScrollback("ScrollbackAndViewport"), act.SendKey(get_key("L", nil, "CTRL")) }),
		"SUPER"
	),
	get_key("l", act.ShowDebugOverlay, "SUPER|SHIFT"),
	get_key("l", act.ShowLauncher, "SUPER"),
	get_key("q", act.QuitApplication, "SUPER"),
}

return M
