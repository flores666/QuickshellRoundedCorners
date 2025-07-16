This project is designed to render rounded corners on the screen in Wayland-enabled environments such as **Hyprland** using **Qt6** and **Qt QuickShell**.

**Capabilities**
- Draws transparent windows in the corners of the screen with smooth rounding.
- Uses Qt6 + QuickShell for integration with Wayland.
- Lightweight and minimalistic.

**Dependencies**

Arch Linux

`yay -S quickshell`

(if widget still does not work `sudo pacman -S qt6-base qt6-declarative qt6-wayland`)

**Install**
1. `git clone https://github.com/flores666/QuickshellRoundedCorners.git ~/.config/QuickshellRoundedCorners`
2. `vim ~/.config/hypr/hyprland.conf` (or open it with your favorite text editor)
3. Add this line `exec-once = qs -p ~/.config/QuickshellRoundedCorners/shell.qml`
4. Restart Hyprland or reset session `hyprctl reload`

**Notes**

- Works only in Wayland and with compositors that support layer-shell (Hyprland, Sway, Wayfire, etc.)
- To change color `vim ~/.config/QuickshellRoundedCorners/globals/Globals.qml` and change `mainColor` value. Then `hyprctl reload` to see the changes
