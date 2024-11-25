{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    windowrule = "workspace 4 silent, WebCord";
    windowrulev2 = "workspace 4 silent, title:Steam";
   };
}
