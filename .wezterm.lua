'-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight'

config.font_dirs = { 'C:\\Windows\\Fonts' }
config.font = wezterm.font_with_fallback {
 --'JetBrains Mono',
 'Fira Code Retina',
}
-- https://github.com/tonsky/FiraCode?tab=readme-ov-file
config.harfbuzz_features = { 
  'zero', 
  --'onum', 
  'ss02',
  'cv19',
  'cv20',
  'ss08',
  'cv24',
  'ss09',
  'cv25',
  'cv26',
  'cv32',
  'cv27',
  'cv28',
  'ss07',
  'calt=1', 
  'clig=1', 
  'liga=1' 
}
config.font_size = 11.0


config.default_cursor_style = 'SteadyUnderline'


-- and finally, return the configuration to wezterm
return config
