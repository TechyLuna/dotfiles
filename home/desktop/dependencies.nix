{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    playerctl
    hyprshot
    satty
    webcord

    cliphist
    wl-clipboard
    jq # logout script
  ];
}
