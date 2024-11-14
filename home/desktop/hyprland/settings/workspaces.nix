{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "1, monitor:desc:LG Electronics LG ULTRAGEAR 311NTMX2J683, default:true"
      "2, monitor:desc:LG Electronics LG ULTRAGEAR 311NTMX2J683"
      "3, monitor:desc:LG Electronics LG ULTRAGEAR 311NTMX2J683"

      "4, monitor:desc:Dell Inc. DELL SE2219H C329B23, default:true"
      "5, monitor:desc:Dell Inc. DELL SE2219H C329B23"
      "6, monitor:desc:Dell Inc. DELL SE2219H C329B23"

      "9, monitor:desc:Samsung Electric Company SAMSUNG 0x01000E00, default:true"
    ];
  };
}
