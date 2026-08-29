-- force dgpu/igpu
hl.env("AQ_DRM_DEVICES", "/dev/dri/amd-igpu:/dev/dri/card0:/dev/dri/card2:/dev/dri/card1")

-- Toolkit Backend Variables
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG Desktop Portal
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Qt
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

-- Firefox
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- xwayland scaling
hl.env("GDK_SCALE", "1")
hl.env("QT_SCALE_FACTOR", "1")

-- Dolphin Deafults
hl.env("XDG_MENU_PREFIX", "arch-")

-- Cursor
hl.env("XCURSOR_THEME", "modern_ice")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "modern_ice")
hl.env("HYPRCURSOR_SIZE", "24")

-- Ozone
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- SSH Agent
hl.env("SSH_AUTH_SOCK", "/run/user/1000/ssh-agent.socket")
hl.exec_cmd("exec-once = systemctl --user import-environment SSH_AUTH_SOCK")
