{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    playerctl
    hyprshot
    satty
    webcord
    fastfetch
    alacritty


    neovim
    gcc
    cargo
    nodejs_23

    cliphist
    wl-clipboard
    jq # logout script
  ];
  btop.override = {
    rocmSupport = true;
  };
}
