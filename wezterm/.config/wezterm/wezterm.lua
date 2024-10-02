local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    default_cursor_style = 'BlinkingBar',
    color_scheme = 'Google Light (Gogh)',
    font_size = 15,
    initial_cols = 200,
    initial_rows = 50,
    -- window_decorations = "RESIZE",
}

return config
