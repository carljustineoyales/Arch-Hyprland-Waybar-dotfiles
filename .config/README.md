# My Dotfiles

These are my personal dotfiles for my Linux setup. They configure various applications to create a consistent and personalized environment.

## Dependencies

The following software is required to use these dotfiles:

*   **Window Manager:** [Hyprland](https://hyprland.org/)
*   **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
*   **Application Launcher:** [Rofi](https://github.com/davatorium/rofi)
*   **Terminal Emulator:** [Kitty](https://sw.kovidgoyal.net/kitty/)
*   **System Monitor:** [btop](https://github.com/aristocratos/btop)
*   **Notification Daemon:** [swaync](https://github.com/ErikReider/swaync)

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
    ```
2.  **Create symbolic links:**
    ```bash
    ln -s ~/.dotfiles/.config/hypr ~/.config/hypr
    ln -s ~/.dotfiles/.config/waybar ~/.config/waybar
    ln -s ~/.dotfiles/.config/rofi ~/.config/rofi
    ln -s ~/.dotfiles/.config/kitty ~/.config/kitty
    ln -s ~/.dotfiles/.config/btop ~/.config/btop
    ln -s ~/.dotfiles/.config/swaync ~/.config/swaync
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