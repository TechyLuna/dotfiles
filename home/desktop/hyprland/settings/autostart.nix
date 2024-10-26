{ config, pkgs, ... }:
let
  constants = import ../../constants.nix { pkgs = pkgs; };
in
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "dunst"

      "[workspace 1 silent] ${constants.executable.browser}"
      "[workspace 2 silent] ${constants.executable.terminal}"
    ];
  };
}
