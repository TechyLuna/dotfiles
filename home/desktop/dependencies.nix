{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    toybox
    playerctl
    hyprshot
    satty

    cliphist
    wl-clipboard
  ];
}
