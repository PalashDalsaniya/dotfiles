local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local ipc = "noctalia msg"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"

-- toggle bar
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(ipc .. " bar-toggle"))

-- programs
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
-- hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- exit hyprland and lock
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(ipc .. " session lock"))

-- window layouts
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Screenshot, Clipboard, Screen-record/Replays
-- hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. " panel-toggle clipboard"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast -f -n copysave area"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(ipc .. " plugin noctalia/screen_recorder:service all toggle"))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd(ipc .. " plugin noctalia/screen_recorder:service all replay-toggle"))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd(ipc .. " plugin noctalia/screen_recorder:service all replay-save"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + R",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop Display
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("kanshictl switch extended"), { locked = true })
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("kanshictl switch externalOnly"), { locked = true })
hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd("kanshictl switch onPower"), { locked = true })
hl.bind("SHIFT + XF86TouchpadToggle", hl.dsp.exec_cmd("kanshictl switch onBattery"), { locked = true })
-- hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-2,2880x1800@120,2560x0,1.67'"), { locked = true })
-- hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-2,2880x1800@120,0x0,1.67'"), { locked = true })
-- hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-2,2880x1800@60,0x0,1.67'"), { locked = true })
-- hl.bind("SHIFT + XF86TouchpadToggle", hl.dsp.exec_cmd("hyprctl keyword monitor 'eDP-2,disable'"), { locked = true })

-- Backlights
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("asusctl leds prev"), { locked = true })
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("asusctl leds next"), { locked = true })

-- Power Profiles
hl.bind("XF86Launch4", hl.dsp.exec_cmd(ipc .. " power-cycle"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(ipc .. " power-cycle"))

-- Media
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd(ipc .. " brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd(ipc .. " brightness-down"), { locked = true, repeating = true })

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up 2"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down 2"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(ipc .. " volume-mute"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd(ipc .. " mic-mute"), { locked = true, repeating = true })

-- Extras
hl.bind("XF86Launch1", hl.dsp.exec_cmd("rog-control-center"), { locked = true })
-- hl.bind("XF86Launch3", hl.dsp.exec_cmd())
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(ipc .. " panel-toggle wallpaper"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd(ipc .. " caffeine-toggle"))
hl.bind(mainMod .. " + O", hl.dsp.window.pin({toggle}))

-- Laptop multimedia keys for volume and LCD brightness
-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true, repeating = true })
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),      { locked = true, repeating = true })
-- hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
-- hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
