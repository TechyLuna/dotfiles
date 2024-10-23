{ config, pkgs, ... }:
{
  imports = [
    ./alacritty
    ./dunst
    ./fuzzel
    ./hyprland
    ./hyprlock
    ./waybar
    ./wlogout

    ./dependencies.nix
  ];
}
