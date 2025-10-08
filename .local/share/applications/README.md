# XWayland Fixes for Chromium and Visual Studio Code on Hyprland

This repository contains `.desktop` files for Chromium and Visual Studio Code with fixes for common issues encountered when running these applications on Hyprland with XWayland.

## The Problem

*   **Chromium:** When using multiple monitors, moving the Chromium browser window from one monitor to another can cause the browser to crash. This is due to an issue with the Wayland color manager.
*   **Visual Studio Code:** When running Visual Studio Code under XWayland, there can be issues with window decorations, particularly with the window border rendering.

## The Fixes

*   **Chromium:** The `chromium.desktop` file in this repository modifies the `Exec` line to include the `--disable-features=WaylandWpColorManagerV1` flag. This disables the problematic Wayland color manager feature, preventing the browser from crashing.

    ```
    Exec=/usr/bin/chromium --disable-features=WaylandWpColorManagerV1 %U
    ```

*   **Visual Studio Code:** The `code.desktop` file in this repository modifies the `Exec` line to include the `--ozone-platform-hint=auto` flag. This helps to correctly detect the platform and render the window decorations properly.

    ```
    Exec=/usr/bin/code --ozone-platform-hint=auto %F
    ```

## How to Apply on a Fresh Hyprland Arch Linux Installation

1.  **Install Chromium and Visual Studio Code:**

    ```bash
    sudo pacman -S chromium visual-studio-code
    ```

2.  **Copy the `.desktop` files:**

    Copy the `chromium.desktop` and `code.desktop` files from this repository to your local applications directory:

    ```bash
    cp ./chromium.desktop ~/.local/share/applications/
    cp ./code.desktop ~/.local/share/applications/
    ```

3.  **Update the desktop database:**

    To ensure that the changes are recognized by the system, you need to update the desktop database:

    ```bash
    update-desktop-database ~/.local/share/applications
    ```

After following these steps, the next time you launch Chromium or Visual Studio Code, they will use the new configurations with the applied fixes.
