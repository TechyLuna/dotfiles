{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "1, monitor:desc:GIGA-BYTE TECHNOLOGY CO. LTD. G27Q 21502B003480, default:true"
      "2, monitor:desc:GIGA-BYTE TECHNOLOGY CO. LTD. G27Q 21502B003480"
      "3, monitor:desc:GIGA-BYTE TECHNOLOGY CO. LTD. G27Q 21502B003480"

      "4, monitor:desc:LG Electronics L194WT 0x000627AF, default:true"
      "5, monitor:desc:LG Electronics L194WT 0x000627AF"
      "6, monitor:desc:LG Electronics L194WT 0x000627AF"
    ];
  };
}
