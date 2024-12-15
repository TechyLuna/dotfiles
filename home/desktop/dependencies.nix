{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    playerctl
    hyprshot
    satty
    webcord

    neovim
    gcc
    cargo
    nodejs_23

    cliphist
    wl-clipboard
    jq # logout script
  ];
}
