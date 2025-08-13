local wezterm = require("wezterm")
local action = wezterm.action

local module = {}

function module.setup(config)
  config.keys = {
    {
      key = "|",
      action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "h",
      mods = "CTRL",
      action = action.ActivatePaneDirection("Left"),
    },
    {
      key = "l",
      mods = "CTRL",
      action = action.ActivatePaneDirection("Right"),
    },
  }
end

return module
