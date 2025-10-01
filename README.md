 - Fcitx
 - Slack
 - Discord
 - WeChat
 - Firefox
 - LibreOffice
 - Neovim
 - VS Code
 - Kitty
 - QEMU
 - Bochs
 - Udiskie
 - np-applet
 - Blueman
 - Waybar
 - Foliate/Calibre
 - Astrill
 - Obsidian
 - Virtual Machine Manager
 - OBS Studio
 - Krita
 - pavucontrol
 - Thunar (install gvfs)
 - some others...

Must use pipewire, pipewire-alsa, pipewire-pulse, etc. When the "bad" happens, check if @DEFAULT_SINK@ in pulse is correct.

Useful commands: `pactl info sinks` `pactl get-default-sink` etc etc...

If The Error happens where wpctl's @DEFAULT_AUDIO_SINK@ is -1, restart wireplumber with `systemctl --user restart wireplumber`

# Applications

## Discord

Download .tar.gz Discord binary distributions, unzip archive to `~/Documents/`, then create this desktop entry (e.g. `discord.desktop`) in `/usr/share/applications`:
```
[Desktop Entry]
Name=Discord
StartupWMClass=Discord
Exec=/home/jayden/Documents/Discord/Discord %U
Type=Application
StartupNotify=true
MimeType=x-scheme-handler/slack;
```

## Utilities

`sleep.desktop` to sleep and lock:
```
[Desktop Entry]
Name=Sleep
Exec=systemctl sleep
Type=Application
StartupNotify=true
```

`disable_integrated.desktop` to disable integrated monitor:
```
[Desktop Entry]
Name=Disable Integrated Monitor
Exec=hyprctl keyword monitor "eDP-1, disable"
Type=Application
StartupNotify=true
```

`enable_integrated.desktop`:
```
[Desktop Entry]
Name=Enable Integrated Monitor
Exec=hyprctl keyword monitor "eDP-1, preferred, auto, 1.25, mirror, eDP-1"
Type=Application
StartupNotify=true
```

`restart_wireplumber.desktop`:
```
[Desktop Entry]
Name=Restart Wireplumber
Exec=systemctl --user restart wireplumber
Type=Application
StartupNotify=true
```

`restart_waybar.desktop`:
```
[Desktop Entry]
Name=Restart Waybar
Exec=killall waybar; waybar & disown
Type=Application
StartupNotify=true
```
