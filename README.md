# DEVNEKO

These are my personal dotfiles for my Linux setup. They configure various applications to create a consistent and personalized environment.

## Dependencies

This setup relies on a range of software to create a complete desktop experience.

### Core Components
*   **Window Manager:** [Hyprland](https://hyprland.org/)
*   **Authentication Agent:** [Polkit KDE Agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/)

### User Interface
*   **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
*   **Application Launcher:** [Rofi](https://github.com/davatorium/rofi) (Wayland fork)
*   **Notification Daemon:** [swaync](https://github.com/ErikReider/swaync)
*   **Lock Screen:** [hyprlock](https://wiki.hyprland.org/Ecosystem/hyprlock/)
*   **Logout Menu:** [wlogout](https://github.com/ArtsyMacaw/wlogout)
*   **Wallpaper Utility:** [hyprpaper](https://wiki.hyprland.org/Ecosystem/hyprpaper/)

### Applications
*   **Terminal Emulator:** [Kitty](https://sw.kovidgoyal.net/kitty/)
*   **File Manager:** [Nautilus](https://wiki.gnome.org/Apps/Files)
*   **System Monitor:** [btop](https://github.com/aristocratos/btop)

### Utilities
*   **Screenshot Tool:** [hyprshot](https://github.com/Gustash/hyprshot)
*   **Audio Control:** [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) & `playerctl`
*   **Brightness Control:** `brightnessctl`
*   **Network Manager:** [NetworkManager Applet](https://wiki.gnome.org/Projects/NetworkManager)
*   **Fonts:** A [Nerd Font](https://www.nerdfonts.com/) is recommended for proper icon display in Waybar.

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
    ```
2.  **Create symbolic links:**
    Before running the commands below, make sure to back up any existing configuration files you may have.
    ```bash
    mkdir -p ~/.config
    ln -sf ~/.dotfiles/hypr ~/.config/hypr
    ln -sf ~/.dotfiles/waybar ~/.config/waybar
    ln -sf ~/.dotfiles/rofi ~/.config/rofi
    ln -sf ~/.dotfiles/kitty ~/.config/kitty
    ln -sf ~/.dotfiles/btop ~/.config/btop
    ln -sf ~/.dotfiles/swaync ~/.config/swaync
    ln -sf ~/.dotfiles/wlogout ~/.config/wlogout
    ```
3.  **Reload your window manager:**
    Restart Hyprland to apply the changes.

**Note:** You may need to adjust the paths in the configuration files to match your system.

## Todo

- [ ] Install a Nerd Font
- [ ] Create a wallpaper management script
- [ ] Explore `eww` or `ags` for advanced widgets
- [ ] Improve dotfiles management with `stow` or a bare Git repository
- [ ] Add screenshots to the README
- [x] Add lockscreen
- [ ] Configure `hyprpicker` (already installed)
- [ ] Install and configure a clipboard manager (e.g., `cliphist`)
- [ ] Unify GTK theming (e.g., with `nwg-look`)
- [x] Add custom apps button in waybar
