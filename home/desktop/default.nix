{ config, pkgs, ... }:
{
  imports = [
    ./alacritty
    ./dunst
    ./fuzzel
    ./hyprland
    ./hyprlock
    ./hyprpaper
    ./kanshi
    ./waybar
    ./wlogout

    ./dependencies.nix
  ];
}
