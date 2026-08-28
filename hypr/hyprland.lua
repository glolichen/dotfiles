-- ~/.config/hypr/hyprland.lua
--
-- Converted from your hyprland.conf
-- Hyprland 0.55+ Lua configuration

--------------------------------------------------------------------------------
-- MONITORS
--------------------------------------------------------------------------------

-- Your old:
-- source = ~/.config/hypr/monitors.conf
--
-- Convert monitors.conf to monitors.lua and put it beside this file.
-- Then use:
require("monitors")

--------------------------------------------------------------------------------
-- XWAYLAND
--------------------------------------------------------------------------------

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

--------------------------------------------------------------------------------
-- PROGRAMS
--------------------------------------------------------------------------------

local terminal = "kitty"
local fileManager = "thunar"
local browser = "firefox"
local menu = "wofi --show drun"

--------------------------------------------------------------------------------
-- AUTOSTART
--------------------------------------------------------------------------------

-- exec-once is replaced by the hyprland.start event in Lua.

hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("blueman-applet")
	hl.exec_cmd("pa-notify")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
	hl.exec_cmd("gammastep -O 4000K")

	-- dbus environment
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

	hl.exec_cmd("udiskie -t")
	hl.exec_cmd("fcitx5 -d")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("xhost +SI:localuser:root")
	-- hl.exec_cmd("brightnessctl s 1")
end)

--------------------------------------------------------------------------------
-- ENVIRONMENT VARIABLES
--------------------------------------------------------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

hl.env("HYPRSHOT_DIR", "/home/jayden/Pictures/Screenshots/")

hl.env("GTK_IM_MODULE", "fcitx")
hl.env("QT_IM_MODULE", "fcitx")

--------------------------------------------------------------------------------
-- GENERAL
--------------------------------------------------------------------------------

hl.config({
	general = {
		gaps_in = 1,
		gaps_out = 2,

		border_size = 1,

		col = {
			active_border = { colors = {
				"rgba(33ccffee)",
				"rgba(00ff99ee)",
			} },

			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = false,
		allow_tearing = false,

		layout = "dwindle",
	},
})

--------------------------------------------------------------------------------
-- DECORATION
--------------------------------------------------------------------------------

hl.config({
	decoration = {
		rounding = 10,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = false,
		},

		blur = {
			enabled = false,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
})

--------------------------------------------------------------------------------
-- ANIMATIONS
--------------------------------------------------------------------------------

hl.config({
	animations = {
		enabled = true,
	},
})

-- Old:
--
-- bezier = myBezier, 0.05, 0.9, 0.1, 1.05
--
-- New Lua API:

hl.curve("myBezier", {
	type = "bezier",
	points = {
		{ 0.05, 0.9 },
		{ 0.1, 1.05 },
	},
})

-- Old:
-- animation = windows, 1, 2, myBezier
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 2,
	bezier = "myBezier",
})

-- Old:
-- animation = windowsOut, 1, 2, default, popin 80%
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 2,
	bezier = "default",
	style = "popin 80%",
})

-- Old:
-- animation = border, 1, 3, default
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 3,
	bezier = "default",
})

-- Old:
-- animation = borderangle, 1, 2, default
hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 2,
	bezier = "default",
})

-- Old:
-- animation = fade, 1, 2, default
hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 2,
	bezier = "default",
})

-- Old:
-- animation = workspaces, 1, 2, default
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 2,
	bezier = "default",
})

-- Old:
-- animation = layers, 1, 2, default, popin
hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 2,
	bezier = "default",
	style = "popin",
})

--------------------------------------------------------------------------------
-- DWINDLE
--------------------------------------------------------------------------------

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

--------------------------------------------------------------------------------
-- MASTER
--------------------------------------------------------------------------------

hl.config({
	master = {
		new_status = "master",
	},
})

--------------------------------------------------------------------------------
-- MISC
--------------------------------------------------------------------------------

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})

--------------------------------------------------------------------------------
-- INPUT
--------------------------------------------------------------------------------

hl.config({
	input = {
		kb_layout = "us",

		-- Your old kb_rules = was empty.
		kb_rules = "",

		sensitivity = 0,
		accel_profile = "flat",

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.2,
		},
	},
})

--------------------------------------------------------------------------------
-- DEVICE-SPECIFIC INPUT
--------------------------------------------------------------------------------

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

--------------------------------------------------------------------------------
-- KEYBINDS
--------------------------------------------------------------------------------

local mainMod = "SUPER"

-- Terminal
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))

-- Kill active
hl.bind("ALT + F4", hl.dsp.window.close())
--
hl.bind(mainMod .. " + C", hl.dsp.window.close())

-- Exit Hyprland
hl.bind(mainMod .. " + M", hl.dsp.exit())

-- File manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))

-- Toggle floating
hl.bind(
	mainMod .. " + V",
	hl.dsp.window.float({
		action = "toggle",
	})
)

-- Menu
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))

-- Emoji picker
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd("wofi-emoji"))

-- Dwindle pseudo
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Toggle split
hl.bind(mainMod .. " + T", hl.dsp.layout("togglesplit"))

-- Browser
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

-- Qalculate
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("killall qalculate-gtk; qalculate-gtk"))

--------------------------------------------------------------------------------
-- FOCUS MOVEMENT
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + LEFT", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + RIGHT", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + UP", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + DOWN", hl.dsp.focus({ direction = "down" }))

-- Relative workspace movement
hl.bind(mainMod .. " + CTRL + RIGHT", hl.dsp.focus({ workspace = "r+1" }))

hl.bind(mainMod .. " + CTRL + LEFT", hl.dsp.focus({ workspace = "r-1" }))

--------------------------------------------------------------------------------
-- WORKSPACE KEYBINDS
--------------------------------------------------------------------------------

-- SUPER + 1..9 -> workspace 1..9
-- SUPER + 0   -> workspace 10

-- for i = 1, 9 do
-- 	hl.bind(mainMod .. " + " .. tostring(i), hl.dsp.workspace(tostring(i)))
-- end
--
-- hl.bind(mainMod .. " + 0", hl.dsp.workspace("10"))

--------------------------------------------------------------------------------
-- MOVE WINDOW TO WORKSPACE
--------------------------------------------------------------------------------

-- for i = 1, 9 do
-- 	hl.bind(mainMod .. " + SHIFT + " .. tostring(i), hl.dsp.movetoworkspace(tostring(i)))
-- end
--
-- hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.movetoworkspace("10"))

--------------------------------------------------------------------------------
-- MOVE WINDOW TO RELATIVE WORKSPACE
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + ALT + RIGHT", hl.dsp.window.move({ workspace = "r+1" }))

hl.bind(mainMod .. " + ALT + LEFT", hl.dsp.window.move({ workspace = "r-1" }))

--------------------------------------------------------------------------------
-- SCREENSHOT
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot --freeze -m region -s"))

--------------------------------------------------------------------------------
-- SPECIAL WORKSPACE / SCRATCHPAD
--------------------------------------------------------------------------------

-- Your original scratchpad binds were commented out, so they remain omitted.
--
-- Example:
--
-- hl.bind(mainMod .. " + S",
--     hl.dsp.togglespecialworkspace("magic")
-- )
--
-- hl.bind(mainMod .. " + ALT + S",
--     hl.dsp.movetoworkspace("special:magic")
-- )

--------------------------------------------------------------------------------
-- WORKSPACE SCROLLING
--------------------------------------------------------------------------------

-- hl.bind(mainMod .. " + mouse_down", hl.dsp.workspace("r+1"))
--
-- hl.bind(mainMod .. " + mouse_up", hl.dsp.workspace("r-1"))

--------------------------------------------------------------------------------
-- BRIGHTNESS
--------------------------------------------------------------------------------

hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(
		'brightnessctl s +2% && notify-send "Brightness ($(light)%)" -h int:value:$(light) -h string:synchronous:brightness --urgency low'
	),
	{
		repeating = true,
	}
)

hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(
		'brightnessctl s 2%- && notify-send "Brightness ($(light)%)" -h int:value:$(light) -h string:synchronous:brightness --urgency low'
	),
	{
		repeating = true,
	}
)

--------------------------------------------------------------------------------
-- AUDIO
--------------------------------------------------------------------------------

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5% && pactl set-sink-mute @DEFAULT_SINK@ 0"),
	{
		repeating = true,
	}
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5% && pactl set-sink-mute @DEFAULT_SINK@ 0"),
	{
		repeating = true,
	}
)

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

--------------------------------------------------------------------------------
-- MEDIA
--------------------------------------------------------------------------------

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

--------------------------------------------------------------------------------
-- MOUSE WINDOW MOVEMENT / RESIZING
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

--------------------------------------------------------------------------------
-- KEYBOARD WINDOW MOVEMENT
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + H", hl.dsp.window.move({ direction = "left" }))

hl.bind(mainMod .. " + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + K", hl.dsp.window.move({ direction = "up" }))

hl.bind(mainMod .. " + J", hl.dsp.window.move({ direction = "down" }))

--------------------------------------------------------------------------------
-- LOCK
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("loginctl lock-session"))

--------------------------------------------------------------------------------
-- LID SWITCHES
--------------------------------------------------------------------------------

-- Your original lid-switch binds were commented out.
--
-- If you want them:
--
-- hl.bind(
--     "switch:on:Lid Switch",
--     hl.dsp.exec_cmd('hyprctl keyword monitor "eDP-1, disable"')
-- )
--
-- hl.bind(
--     "switch:off:Lid Switch",
--     hl.dsp.exec_cmd('hyprctl keyword monitor "eDP-1, preferred, auto, 1.25"')
-- )

--------------------------------------------------------------------------------
-- WINDOW RULES
--------------------------------------------------------------------------------

hl.window_rule({
	name = "Qalculate",

	match = {
		class = "qalculate-gtk",
	},

	float = true,
	size = { 400, 600 },
})

--------------------------------------------------------------------------------
-- LAYER RULES
--------------------------------------------------------------------------------

hl.layer_rule({
	match = {
		namespace = "selection",
	},

	no_anim = true,
})

hl.layer_rule({
	match = {
		namespace = "hyprpicker",
	},

	no_anim = true,
})

--------------------------------------------------------------------------------
-- WORKSPACES
--------------------------------------------------------------------------------

-- hl.workspace_rule({ workspace = "1", persistent = true })
-- hl.workspace_rule({ workspace = "2", persistent = true })
-- hl.workspace_rule({ workspace = "3", persistent = true })
-- hl.workspace_rule({ workspace = "4", persistent = true })
-- hl.workspace_rule({ workspace = "5", persistent = true })

-- Your original config had:
--
-- workspace = 1, persistent:true
-- workspace = 2, persistent:true
-- ...
--
-- The current Lua workspace-rule API does not expose the old `persistent:true`
-- workspace rule as an effect. The current workspace-rule API is intended for
-- rules such as layout, gaps, monitor, animation, etc.
--
-- We therefore don't invent a Lua equivalent here.
--

--------------------------------------------------------------------------------
-- GESTURES
--------------------------------------------------------------------------------

-- Old:
--
-- gestures {
--     workspace_swipe_distance = 300
--     workspace_swipe_forever = true
-- }
--
-- workspace_swipe itself was removed in favor of the new gesture API.
--
-- The equivalent 3-finger horizontal workspace gesture is:

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

--------------------------------------------------------------------------------
-- END
--------------------------------------------------------------------------------
