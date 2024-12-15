{ config, pkgs, ... }:
{
  imports = [
    ./settings.nix
  ];

  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
  };
}
