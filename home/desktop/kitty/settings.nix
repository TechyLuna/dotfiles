{ config, pkgs, ... }:
{
  programs.kitty = {
    settings = {
      background_blur = "1";
      background_opacity = "0.3";
      dynamic_background_opacity = true;
    };
    shellIntegration = {
      enableZshIntegration = true;
    };
    themeFile = "Catppuccin-Mocha";
  };
}
