{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    toybox
    playerctl
  ];
}
