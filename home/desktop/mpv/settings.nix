{ config, pkgs, ... }:
{
  programs.mpv.config = {
    # audio-spdif= ["ac3" "dts" "eac3"];
    audio-channels= "5.0";
    };
}
