{ config, lib, pkgs, ... }: {
  programs.adb.enable = true;

  environment.systemPackages = with pkgs; [
    git
    vscode-fhs
    nixpkgs-fmt
    sqlitebrowser
    go
    (pkgs.callPackage "${builtins.fetchTarball "https://github.com/ryantm/agenix/archive/main.tar.gz"}/pkgs/agenix.nix" {})
  ];

  virtualisation.docker.enable = true;
  programs.direnv.enable = true;

}
