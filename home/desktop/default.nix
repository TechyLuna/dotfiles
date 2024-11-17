{ config, pkgs, ... }:
{
  imports = [
    ./alacritty
    ./dunst
    ./fuzzel
    ./hypridle
    ./hyprland
    ./hyprlock
    ./hyprpaper
    ./kanshi
    ./waybar
    ./wlogout
    ./mpv

    ./dependencies.nix
    ./theme.nix
  ];
}
