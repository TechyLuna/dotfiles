{ config, pkgs, ... }:
{
  imports = [
    ./alacritty
    ./dunst
    ./hyprland
    ./hyprlock
    ./rofi
    ./waybar
    ./wlogout

    ./dependencies.nix
  ];
}
