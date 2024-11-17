{ pkgs, lib, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    ref = "nixos-24.05";
  });
in
{
  imports = [
    # For home-manager
    nixvim.homeManagerModules.nixvim
  ];
  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    #performance = {
      #combinePlugins = {
        #enable = true;
        #standalonePlugins = [
         # "hmts.nvim"
          #"neorg"
         # "nvim-treesitter"
       # ];
      #};
      #byteCompileLua.enable = true;
    #};

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}