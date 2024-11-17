local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Change the color scheme
config.color_scheme = 'Tokyo Night'

-- Change the background trancparency
config.window_background_opacity = 0.95

-- Set the default font and size
config.font = wezterm.font 'Fira Code'
config.font_size = 12

-- Disable font ligatures
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- Set the window properties
config.window_decorations = "TITLE | RESIZE"
config.adjust_window_size_when_changing_font_size = false

config.window_frame = {
  font = require('wezterm').font 'Fira Code',
  font_size = 13,
}

config.window_padding = {
  left = 10,
  right = 10,
  top = 5,
  bottom = 15,
}

config.window_frame = {
  font = wezterm.font { family = 'Fira Code', weight = 'Medium' },
  font_size = 13.0,
  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#2e2e2e',
  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#282828',
}

config.colors = {
  tab_bar = {
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#282828',
  },
}

return config
