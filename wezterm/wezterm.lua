local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config = {
    default_prog = { 'zsh' },
    automatically_reload_config = true,
    default_cursor_style = 'BlinkingBar',
    color_scheme = 'Catppuccin Frappe',
    -- color_scheme = 'Google Light (Gogh)',
    font_size = 14,
    initial_cols = 200,
    initial_rows = 50,
    cursor_thickness = 3,
    cursor_blink_rate = 400,
    window_decorations = "RESIZE",
}

require("keys").setup(config)

return config
