{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    toybox
    playerctl
    hyprshot
    satty
    webcord

    cliphist
    wl-clipboard
  ];
}
