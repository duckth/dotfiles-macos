-- Pull in the wezterm API
local wezterm = require("wezterm")
local keys = require("keys") --[[@as table]]

require("events")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "GruvboxDarkHard"

config.window_background_opacity = 0.8
config.text_background_opacity = 0.6

config.window_padding = {
	bottom = 0,
}

config.font_size = 16

config.enable_tab_bar = false
config.use_fancy_tab_bar = false

config.keys = keys.keys
config.leader = keys.leader

-- and finally, return the configuration to wezterm
return config
