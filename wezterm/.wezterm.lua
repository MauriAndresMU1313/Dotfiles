-- Import WezTerm's API for function use
local wezterm = require("wezterm")

-- Configuration
local config = wezterm.config_builder()

-- Set up font
config.font = wezterm.font("Ubuntu Mono")

-- Hide window decoration at the top (because it has a different color)
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
--config.enable_tab_bar = false

-- Colors
config.colors = {
  selection_bg = "#ffffd7",  -- Light yellow (color 230 equivalent)
  selection_fg = "#000000",  -- Black text
}

-- Opacity 
config.window_background_opacity = 0.92
config.macos_window_background_blur = 10

-- Return configuration to Wezterm
return config
