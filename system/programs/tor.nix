{ config, lib, pkgs, ... }: {
  services.tor = {
    enable = true;
    openFirewall = false;

    client = {
      enable = true;
    };

  };

}
