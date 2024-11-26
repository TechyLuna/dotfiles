{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    windowrule = "workspace 4 silent, WebCord";
    windowrulev2 = "workspace 4 silent, title:Steam";
    xwayland = {
    force_zero_scaling = true;
    };
   };
}
