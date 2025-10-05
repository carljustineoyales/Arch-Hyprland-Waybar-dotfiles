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

To install these dotfiles, follow these steps:

1.  First, ensure all necessary dependencies are installed on your system. For Arch Linux, you can install many of them with:
    ```bash
    yay -S hyprland polkit-kde-agent waybar rofi swaync hyprlock wlogout hyprpaper kitty nautilus btop fastfetch starship hyprshot pavucontrol playerctl brightnessctl networkmanager-applet ttf-jetbrains-mono-nerd
    ```
    You may also need additional packages depending on your specific setup, or some package names might differ slightly.
2.  Clone this repository:
    ```bash
    git clone https://github.com/cjoyales/dotfiles.git ~/.dotfiles
    ```
3.  Navigate into the cloned directory:
    ```bash
    cd ~/.dotfiles
    ```
4.  Create symlinks for the configuration directories:
    ```bash
    # Ensure the ~/.config directory exists
    mkdir -p ~/.config

    # Create symlinks for each configuration directory
    ln -s "$PWD/btop" "$HOME/.config/btop"
    ln -s "$PWD/fastfetch" "$HOME/.config/fastfetch"
    ln -s "$PWD/hypr" "$HOME/.config/hypr"
    ln -s "$PWD/kitty" "$HOME/.config/kitty"
    ln -s "$PWD/rofi" "$HOME/.config/rofi"
    ln -s "$PWD/starship" "$HOME/.config/starship"
    ln -s "$PWD/swaync" "$HOME/.config/swaync"
    ln -s "$PWD/waybar" "$HOME/.config/waybar"
    ln -s "$PWD/wlogout" "$HOME/.config/wlogout"
    ```

**Note:** You may need to adjust the paths in the configuration files to match your system.

