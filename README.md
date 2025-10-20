# DEVNEKO

These are my personal dotfiles for my Linux setup. They configure various applications to create a consistent and personalized environment.

## Dependencies

This setup relies on a range of software to create a complete desktop experience.

| Category          | Software                                                                                                                                            |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Core**          | [Hyprland](https://hyprland.org/), [Polkit KDE Agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/)                                    |
| **User Interface**| [Waybar](https://github.com/Alexays/Waybar), [Rofi](https://github.com/davatorium/rofi), [swaync](https://github.com/ErikReider/swaync), [hyprlock](https://wiki.hyprland.org/Ecosystem/hyprlock/), [wlogout](https://github.com/ArtsyMacaw/wlogout), [hyprpaper](https://wiki.hyprland.org/Ecosystem/hyprpaper/) |
| **Applications**  | [Kitty](https://sw.kovidgoyal.net/kitty/), [Nautilus](https://wiki.gnome.org/Apps/Files), [btop](https://github.com/aristocratos/btop)                  |
| **Utilities**     | [fastfetch](https://github.com/fastfetch-cli/fastfetch), [starship](https://starship.rs/), [grim](https://github.com/emersion/grim), [slurp](https://github.com/emersion/slurp), [swappy](https://github.com/jtheoof/swappy), [jq](https://stedolan.github.io/jq/), [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) & `playerctl`, `brightnessctl`, [NetworkManager Applet](https://wiki.gnome.org/Projects/NetworkManager), [fish](https://fishshell.com/),[pacman-contrib](https://archlinux.org/packages/extra/x86_64/pacman-contrib/) |
| **Bluetooth**     | [bluez](https://archlinux.org/packages/extra/x86_64/bluez/), [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/), [blueman](https://archlinux.org/packages/extra/x86_64/blueman/)                                                                                             |
| **Fonts**         | [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads), [Noto-fonts-cjk](https://archlinux.org/packages/extra/any/noto-fonts-cjk/)                                                                                   |

## Installation

To install these dotfiles, follow these steps:

1.  First, ensure all necessary dependencies are installed on your system. For Arch Linux, you can install many of them with:
    ```bash
    yay -S hyprland polkit-kde-agent waybar rofi swaync hyprlock wlogout hyprpaper kitty nautilus btop fastfetch starship grim slurp swappy jq pavucontrol playerctl brightnessctl networkmanager-applet ttf-jetbrains-mono-nerd noto-fonts-cjk  bluez bluez-utils blueman fish pacman-contrib
    ```
    You may also need additional packages depending on your specific setup, or some package names might differ slightly.
2.  Clone this repository:
    ```bash
    git clone https://github.com/carljustineoyales/Arch-Hyprland-Waybar-dotfiles.git ~/dotfiles
    ```
3.  Navigate into the cloned directory:
    ```bash
    cd ~/dotfiles
    ```
4.  Create symlinks for the configuration directories:
    ```bash
    # Ensure the ~/.config directory exists
    mkdir -p ~/.config

    # Create symlinks for each configuration directory
    ln -sf "$PWD/btop" "$HOME/.config/btop"
    ln -sf "$PWD/fastfetch" "$HOME/.config/fastfetch"
    ln -sf "$PWD/hypr" "$HOME/.config/hypr"
    ln -sf "$PWD/kitty" "$HOME/.config/kitty"
    ln -sf "$PWD/rofi" "$HOME/.config/rofi"
    ln -sf "$PWD/starship" "$HOME/.config/starship"
    ln -sf "$PWD/swaync" "$HOME/.config/swaync"
    ln -sf "$PWD/waybar" "$HOME/.config/waybar"
    ln -sf "$PWD/wlogout" "$HOME/.config/wlogout"
    ```

**Note:** You may need to adjust the paths in the configuration files to match your system.

## Color Palette

Here's the color palette used in the Waybar configuration:

| Name                  | Hex Value |
| --------------------- | --------- |
| `@define-color gray50`  | `#f5f5f5` |
| `@define-color gray100` | `#e9e9e9` |
| `@define-color gray200` | `#dedede` |
| `@define-color gray300` | `#bebebe` |
| `@define-color gray400` | `#a7a7a7` |
| `@define-color gray500` | `#828282` |
| `@define-color gray600` | `#5a5a5a` |
| `@define-color gray700` | `#4e4e4e` |
| `@define-color gray800` | `#3e3e3e` |
| `@define-color gray900` | `#222222` |
| `@define-color red50`   | `#fef2f2` |
| `@define-color red100`  | `#fee2e2` |
| `@define-color red200`  | `#fecaca` |
| `@define-color red300`  | `#fca5a5` |
| `@define-color red400`  | `#f87171` |
| `@define-color red500`  | `#ff0000` |
| `@define-color red600`  | `#d60f0f` |
| `@define-color red700`  | `#ad1d1d` |
| `@define-color red800`  | `#991b1b` |
| `@define-color red900`  | `#7f1d1d` |
| `@define-color backgroundTransparent` | `rgba(34, 34, 34, 0.8)` |
