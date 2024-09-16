{ config, lib, pkgs, ... }:
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  environment.systemPackages = with pkgs; [
    unstable.element-desktop
    onlyoffice-bin_latest
    unstable.josm
    tor-browser
    mpv
    thunderbird
    ungoogled-chromium
    unstable.firefox
    unstable.librewolf
    distrobox
    qgis
    nextcloud-client
    kgpg
    vlc
    kdePackages.kdeconnect-kde
    signal-desktop
    qalculate-gtk
    unstable.spotube
    monero-gui
  ];

}
