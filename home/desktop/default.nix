{ config, pkgs, ... }:
{
  imports = [
    ./kitty
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
    #./neovim

    ./dependencies.nix
    ./theme.nix
  ];
}
