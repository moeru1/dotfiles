-- Pull in the wezterm API

local wezterm = require 'wezterm'


-- This will hold the configuration.

local config = wezterm.config_builder()
local launch_menu = {}


table.insert(launch_menu, {
  label = 'PowerShell',
  args = { 'powershell.exe', '-NoLogo' },
})
table.insert(launch_menu, {
  label = 'Pwsh',
  args = { 'pwsh.exe', '-NoLogo' },
})

config.color_scheme = 'catppuccin-mocha'
--config.color_scheme = 'rose-pine-dawn'
config.default_prog = { 'powershell.exe', '-NoLogo' }
config.launch_menu = launch_menu


return config
