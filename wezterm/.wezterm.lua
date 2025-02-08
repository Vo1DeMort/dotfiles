-- why wezterm over alacritty : multiplexer feature

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Create a configuration table
local config = {}

--  minimized window borders
config.window_decorations = "RESIZE"

-- Font settings
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
})
config.font_size = 14.0
config.line_height = 1.0

-- Colors
config.colors = {
	foreground = "#abb2bf", -- One Dark foreground
	background = "#282c34", -- One Dark background
	cursor_bg = "#528bff", -- Cursor background
	cursor_fg = "#282c34", -- Cursor foreground
	ansi = {
		"#282c34", -- black
		"#e06c75", -- red
		"#98c379", -- green
		"#e5c07b", -- yellow
		"#61afef", -- blue
		"#c678dd", -- magenta
		"#56b6c2", -- cyan
		"#abb2bf", -- white
	},
	brights = {
		"#5c6370", -- bright black
		"#be5046", -- bright red
		"#98c379", -- bright green
		"#d19a66", -- bright yellow
		"#61afef", -- bright blue
		"#c678dd", -- bright magenta
		"#56b6c2", -- bright cyan
		"#ffffff", -- bright white
	},
}

-- Window opacity and blur
config.window_background_opacity = 0.9

-- Disable padding for a clean look when using applications like nvim
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Tab bar appearance
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- Scrollback settings
config.scrollback_lines = 5000

-- Enable Wayland support if using Wayland
if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
	config.enable_wayland = true
end

-- multiplexer config
-- ctl + space to trigger
--  awsome , now i can be happy with helix
config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {

	--NOTE: spliting
	{ -- vertical split
		mods = "LEADER",
		key = "=",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{ -- horizontal split
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	--NOTE: Zoom in/out
	{
		mods = "LEADER",
		key = "m",
		action = wezterm.action.TogglePaneZoomState,
	},

	--NOTE: close
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},

	--NOTE: choose pane
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	--NOTE: rotate panes
	{
		mods = "LEADER",
		key = "Space",
		action = wezterm.action.RotatePanes("Clockwise"),
	},
	--NOTE: pane selection, swap wtih active pane
	{
		mods = "LEADER",
		key = "o",
		action = wezterm.action.PaneSelect({ mode = "SwapWithActive" }),
	},
}

-- Return the completed configuration table
return config

-- some short cuts
-- ctrl shift  f : search
