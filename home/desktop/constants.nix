{ pkgs }:
{
  executable = {
    terminal = "${pkgs.kitty}/bin/kitty";
    #browser = "${pkgs.librewolf}/bin/librewolf"; # doesn't work with apparmor for some reason
    browser = "librewolf";
    filemanager = "${pkgs.nautilus}/bin/nautilus";
    resourceMonitor = "${pkgs.btop}/bin/btop";
  };
}
