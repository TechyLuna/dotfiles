{ config, lib, pkgs, ... }:
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  environment.systemPackages = with pkgs; [
    xsaneGimp
    unstable.gimp
    krita
    darktable
    imagemagick
    exiftool
  ];

}
