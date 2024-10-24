{ config, pkgs, ... }:
{
  imports = [
    ./alacritty
    ./dunst
    ./fuzzel
    ./hyprland
    ./hyprlock
    ./hyprpaper
    ./waybar
    ./wlogout

    ./dependencies.nix
  ];
}
