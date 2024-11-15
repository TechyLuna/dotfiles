{ config, pkgs, ... }:
let
  constants = import ../../constants.nix { pkgs = pkgs; };
in
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "dunst"
      "wl-paste --watch cliphist store"

      "systemctl --user restart hyprland-session.target"
      "systemctl --user start hypridle.service"
      "systemctl --user restart kanshi.service"

      "[workspace 1 silent] ${constants.executable.browser}"
      "[workspace 2 silent] ${constants.executable.terminal}"

      "nextcloud --background"
    ];
  };
}
