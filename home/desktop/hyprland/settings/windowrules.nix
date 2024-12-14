{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    windowrule = "workspace 4 silent, WebCord";
    windowrulev2 = [
    "workspace 4 silent, title:Steam"
    
    "float, title:Qalculate!"
    "size > >, title:Qalculate!"
    
    "float, class:pavucontrol"
    "size > >, class:pavucontrol"

    ];

    xwayland = {
    force_zero_scaling = true;
    };
   };
}
