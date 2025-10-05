# DEVNEKO

These are my personal dotfiles for my Linux setup. They configure various applications to create a consistent and personalized environment.

## Dependencies

This setup relies on a range of software to create a complete desktop experience.

| Category          | Software                                                                                                                                            |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Core**          | [Hyprland](https://hyprland.org/), [Polkit KDE Agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/)                                    |
| **User Interface**| [Waybar](https://github.com/Alexays/Waybar), [Rofi](https://github.com/davatorium/rofi), [swaync](https://github.com/ErikReider/swaync), [hyprlock](https://wiki.hyprland.org/Ecosystem/hyprlock/), [wlogout](https://github.com/ArtsyMacaw/wlogout), [hyprpaper](https://wiki.hyprland.org/Ecosystem/hyprpaper/) |
| **Applications**  | [Kitty](https://sw.kovidgoyal.net/kitty/), [Nautilus](https://wiki.gnome.org/Apps/Files), [btop](https://github.com/aristocratos/btop)                  |
| **Utilities**     | [fastfetch](https://github.com/fastfetch-cli/fastfetch), [starship](https://starship.rs/), [hyprshot](https://github.com/Gustash/hyprshot), [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) & `playerctl`, `brightnessctl`, [NetworkManager Applet](https://wiki.gnome.org/Projects/NetworkManager) |
| **Fonts**         | [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)                                                                                  |

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/carljustineoyales/Arch-Hyprland-Waybar-dotfiles
    ```
2.  **Create symbolic links:**
    Before running the commands below, make sure to back up any existing configuration files you may have.
    ```bash
    mkdir -p ~/.config
    ln -sf ~/dotfiles/hypr ~/.config/hypr
    ln -sf ~/dotfiles/waybar ~/.config/waybar
    ln -sf ~/dotfiles/rofi ~/.config/rofi
    ln -sf ~/dotfiles/kitty ~/.config/kitty
    ln -sf ~/dotfiles/btop ~/.config/btop
    ln -sf ~/dotfiles/swaync ~/.config/swaync
    ln -sf ~/dotfiles/wlogout ~/.config/wlogout
    ln -sf ~/dotfiles/fastfetch ~/.config/fastfetch
    ln -sf ~/dotfiles/starship ~/.config/starship
    ```
3.  **Reload your window manager:**
    Restart Hyprland to apply the changes.

**Note:** You may need to adjust the paths in the configuration files to match your system.

