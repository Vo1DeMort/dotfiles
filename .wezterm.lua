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

--color
config.colors = {
	foreground = "#dcd7ba", -- Kanagawa Fuji White (soft white)
	background = "#1f1f28", -- Kanagawa Sakura Background (dark)
	cursor_bg = "#c34043", -- Kanagawa Samurai Red (cursor background)
	cursor_fg = "#1f1f28", -- Kanagawa Sakura Background (cursor foreground)
	ansi = {
		"#090618", -- black (Kanagawa Sumi Ink 1)
		"#c34043", -- red (Kanagawa Samurai Red)
		"#76946a", -- green (Kanagawa Spring Green)
		"#c0a36e", -- yellow (Kanagawa Autumn Yellow)
		"#7e9cd8", -- blue (Kanagawa Wave Blue)
		"#957fb8", -- magenta (Kanagawa Sakura Pink)
		"#6a9589", -- cyan (Kanagawa Dragon Blue)
		"#c8c093", -- white (Kanagawa Old White)
	},
	brights = {
		"#727169", -- bright black (Kanagawa Sumi Ink 3)
		"#e82424", -- bright red (Kanagawa Autumn Red)
		"#98bb6c", -- bright green (Kanagawa Light Green)
		"#e6c384", -- bright yellow (Kanagawa Light Yellow)
		"#7fb4ca", -- bright blue (Kanagawa Crystal Blue)
		"#938aa9", -- bright magenta (Kanagawa Lotus Pink)
		"#7aa89f", -- bright cyan (Kanagawa Spring Blue)
		"#dcd7ba", -- bright white (Kanagawa Fuji White)
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
