{ ... }: {
  users.users.next = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" "adbusers" "scanner" "lp" ];
  };
  users.users.luna = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" "adbusers" "scanner" "lp" ];
  };
  users.users.ash = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" "adbusers" "scanner" "lp" ];
  };
}
