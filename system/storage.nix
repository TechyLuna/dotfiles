{ ... }: {
  fileSystems = {
    "/mnt/bulk" = {
      device = "192.168.2.27:/mnt/home/server";
      fsType = "nfs";
    };

    "/mnt/family" = {
      device = "192.168.2.27:/mnt/home/family";
      fsType = "nfs";
    };
  };
}
