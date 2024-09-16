{ config, lib, pkgs, ... }: {
  networking.networkmanager.enable = true;

  networking.hostName = "magma";

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];

    interfaces =
      {
        "zt+" = {
          allowedTCPPorts = [ 22 ];
          allowedUDPPorts = [ ];
        };

        "enp5s0" = {
          allowedTCPPorts = [ 22 ];

          allowedTCPPortRanges = [
            { from = 1714; to = 1764; } # KDE Connect
          ];
          allowedUDPPortRanges = [
            { from = 1714; to = 1764; } # KDE Connect
          ];
        };
      };
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
