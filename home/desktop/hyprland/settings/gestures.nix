{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    gestures = {
      workspace_swipe = true;
    };
  };
}
