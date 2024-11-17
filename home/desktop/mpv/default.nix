{ config, pkgs, ... }:
{
  imports = [
    ./settings.nix
  ];

  programs.mpv = {
    enable = true;
    package = pkgs.mpv;
  };
}
