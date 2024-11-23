{ config, pkgs, ... }:
{
  services.hypridle.settings = {
    general = {
      ignore_dbus_inhibit = false;
      lock_cmd = "pidof hyprlock || hyprlock";
      before_sleep_cmd = "loginctl lock-session";
      after_sleep_cmd = "hyprctl dispatch dpms on";
    };

    listener = [
      # Locking
      {
        timeout = 600;
        on-timeout = "loginctl lock-session";
      }

      # Display
      {
        timeout = 600;
        on-timeout = "hyprctl dispatch dpms off";
        on-resume = "hyprctl dispatch dpms on";
      }

      # Keyboard backlight
      {
        timeout = 180;
        on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0";
        on-resume = "brightnessctl -rd rgb:kbd_backlight";
      }
    ];
  };
}
