{ config, pkgs, ... }:
{
  services.hyprpaper.settings = {
    ipc = "on";
    splash = true;
    splash_offset = 2.0;

    preload =
      [ "${pkgs.hyprland}/share/hyprland/wall2.png" ];

    wallpaper = [
      ", ${pkgs.hyprland}/share/hyprland/wall2.png"
    ];
  };
}
