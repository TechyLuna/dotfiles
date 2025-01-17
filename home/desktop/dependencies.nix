{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    playerctl
    hyprshot
    satty
    webcord
    fastfetch
    nicotine-plus
    xorg.xhost
    mumble

    neovim
    gcc
    cargo
    # nodejs_23

    cliphist
    wl-clipboard
    jq # logout script
  ];
}
