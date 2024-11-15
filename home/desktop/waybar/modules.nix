{ config, pkgs, ... }:
{
  programs.waybar.settings = {
    mainBar = {
      # Workspaces
      "hyprland/workspaces" = {
        on-click = "activate";
        active-only = false;
        all-outputs = false;
        format = "{}";
        format-icons = {
          urgent = "";
          active = "";
          default = "";
        };
      };

      # Hyprland Window
      "hyprland/window" = {
        rewrite = {
          "(.*) - Brave" = "$1";
          "(.*) - Chromium" = "$1";
          "(.*) - Brave Search" = "$1";
          "(.*) - Outlook" = "$1";
          "(.*) Microsoft Teams" = "$1";
        };
        separate-outputs = true;
      };

      # Fuzzel Application Launcher
      "custom/appmenu" = {
        format = "Apps";
        tooltip-format = "Left= Open the application launcher\nRight= Show all keybindings";
        on-click = "fuzzel";
        tooltip = false;
      };

      # Power Menu
      "custom/exit" = {
        format = "⏻";
        tooltip-format = "Powermenu";
        on-click = "wlogout -b 4";
        tooltip = false;
      };

      # Keyboard State
      keyboard-state = {
        numlock = true;
        capslock = true;
        format = "{name} {icon}";
        format-icons = {
          locked = "";
          unlocked = "";
        };
      };

      # System tray
      tray = {
        # "icon-size"= 21;
        spacing = 10;
      };

      # Clock
      clock = {
        # "timezone"= "America/New_York";
        #tooltip-format = "<big>{=%Y %B %s}</big>\n<tt><small>{calendar}</small></tt>";
        #format-alt = "{=%Y-%m-%d}";
        format = "{:%H:%M:%S}";
        interval = 1; # Update every second

        format-alt = "{:%A, %B %d, %Y (%R)}  ";
        tooltip-format = "<tt><small>{calendar}</small></tt>";

        calendar = {
          mode = "month";
          mode-mon-col = 3;
          weeks-pos = "right";
          on-scroll = 1;
          on-click-right = "mode";
          format = {
            months = "<span color='#ffead3'><b>{}</b></span>";
            days = "<span color='#ecc6d9'><b>{}</b></span>";
            weeks = "<span color='#99ffdd'><b>W{}</b></span>";
            weekdays = "<span color='#ffcc66'><b>{}</b></span>";
            today = "<span color='#ff6699'><b><u>{}</u></b></span>";
          };
        };
      };

      # System
      "custom/system" = {
        format = "";
        tooltip = false;
      };

      # CPU
      cpu = {
        format = "/ C {usage}% ";
        on-click = "alacritty -e htop";
      };

      # Memory
      memory = {
        format = "/ M {}% ";
        on-click = "alacritty -e htop";
      };

      # Harddisc space used
      disk = {
        interval = 30;
        format = "D {percentage_used}% ";
        path = "/";
        on-click = "alacritty -e htop";
      };

      "hyprland/language" = {
        format = "/ K {short}";
      };

      # Group Hardware
      "group/hardware" = {
        orientation = "inherit";
        drawer = {
          transition-duration = 300;
          children-class = "not-memory";
          transition-left-to-right = false;
        };
        modules = [
          "custom/system"
          "disk"
          "cpu"
          "memory"
          "hyprland/language"
        ];
      };

      # Network
      network = {
        format = "{ifname}";
        format-wifi = "   {signalStrength}%";
        format-ethernet = "  {ipaddr}";
        format-disconnected = "Not connected"; #An empty format will hide the module.
        tooltip-format = " {ifname} via {gwaddri}";
        tooltip-format-wifi = "   {essid} ({signalStrength}%)";
        tooltip-format-ethernet = "  {ifname} ({ipaddr}/{cidr})";
        tooltip-format-disconnected = "Disconnected";
        max-length = 50;
        on-click = "alacritty -e nmtui";
      };

      # Battery
      battery = {
        states = {
          # "good"= 95;
          warning = 30;
          critical = 15;
        };
        format = "{icon}   {capacity}%";
        format-charging = "  {capacity}%";
        format-plugged = "  {capacity}%";
        format-alt = "{icon}  {time}";
        # "format-good"= ""; # An empty format will hide the module
        # "format-full"= "";
        format-icons = [ " " " " " " " " " " ];
      };

      # Pulseaudio
      pulseaudio = {
        # "scroll-step"= 1; # %; can be a float
        format = "{icon}  {volume}%";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = [ "" " " " " ];
        };
        on-click = "pavucontrol";
      };

      # Bluetooth
      bluetooth = {
        format-disabled = "";
        format-off = "";
        interval = 30;
        on-click = "blueman-manager";
        format-no-controller = "";
      };

      # Other
      user = {
        format = "{user}";
        interval = 60;
        icon = false;
      };

      # Idle Inhibator
      idle_inhibitor = {
        format = "{icon}";
        tooltip = true;
        format-icons = {
          activated = "";
          deactivated = "";
        };
        on-click-right = "hyprlock";
      };
    };
  };
}
