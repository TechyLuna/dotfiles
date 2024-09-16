{ config, lib, pkgs, ... }: {
  disabledModules = [ "services/misc/ollama.nix" ];

  imports = [
    # Use unstable ollama
    <nixos-unstable/nixos/modules/services/misc/ollama.nix>
  ];

  services.ollama = {
    enable = true;
    acceleration = "cuda";
  };
}
