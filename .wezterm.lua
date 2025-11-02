-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Disable tab bar
config.enable_tab_bar = false

-- Font settings
config.font_size = 11
config.font = wezterm.font('Noto Sans Mono')

-- Color scheme
config.color_scheme = 'nord'

-- Return config
return config

