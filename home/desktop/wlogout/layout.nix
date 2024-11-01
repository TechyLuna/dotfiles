{ config, pkgs, ... }:
{
  programs.wlogout.layout = [
    {
      "label" = "lock";
      "action" = "hyprlock";
      "text" = "Lock";
      "keybind" = "l";
    }
    {
      "label" = "logout";
      "action" = "killall -15 Hyprland";
      "text" = "Exit";
      "keybind" = "e";
    }
    {
      "label" = "shutdown";
      "action" = "shutdown now";
      "text" = "Shutdown";
      "keybind" = "s";
    }
    {
      "label" = "reboot";
      "action" = "reboot";
      "text" = "Reboot";
      "keybind" = "r";
    }
  ];
}
