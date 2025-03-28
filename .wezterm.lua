-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'catppuccin-latte'
-- config.font = wezterm.font 'JetBrains Mono'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 20
config.hide_tab_bar_if_only_one_tab = true
config.audible_bell = "Disabled"
config.max_fps = 240

-- and finally, return the configuration to wezterm
return config
