{ config, pkgs, ... }:
{
  imports = [
    ./layout.nix
  ];

  programs.wlogout = {
    enable = true;
    package = pkgs.wlogout;
    style = ./style.css;
  };

  home.file."${config.xdg.configHome}/wlogout/icons" = {
    source = ./icons;
  };
}
