{ config, lib, pkgs, ... }: {
  programs.adb.enable = true;

  environment.systemPackages = with pkgs; [
    git
    vscode-fhs
    gnumake
    cmake
    python312
    python312Packages.pip
    poetry
    glib
    nixpkgs-fmt
    sqlitebrowser
  ];

  virtualisation.docker.enable = true;
  programs.direnv.enable = true;

}
