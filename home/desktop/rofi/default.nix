{ config, pkgs, ... }:
{
  imports = [
    ./settings.nix
  ];

  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
  };
}
