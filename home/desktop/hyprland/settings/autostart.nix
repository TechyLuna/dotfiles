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

      "[worskapce 4 silent] steam"
      "[worskapce 4 silent] webcord"

      "[workspace 5 silent] nextcloud --background"
    ];
  };
}
