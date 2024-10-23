{ config, pkgs, ... }:
let
  constants = import ../../constants.nix { pkgs = pkgs; };
in
{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";

    bind = [
      # Actions
      "$mainMod, RETURN, exec, ${constants.executable.terminal}" # Open Alactritty
      "$mainMod, Q, killactive" # Close current window
      "$mainMod, M, exit" # Exit Hyprland
      "$mainMod, E, exec, ${constants.executable.filemanager}" # Opens the filemanager
      "$mainMod, T, togglefloating" # Toggle between tiling and floating window
      "$mainMod, F, fullscreen" # Open the window in fullscreen
      "$mainMod CTRL, RETURN, exec, fuzzel" # Open fuzzel
      "$mainMod, P, pseudo," # dwindle
      "$mainMod, J, togglesplit," # dwindle
      "$mainMod, B, exec, ${constants.executable.browser}" # Opens the browser

      # Move focus with mainMod + arrow keys
      "$mainMod, left, movefocus, l" # Move focus left
      "$mainMod, right, movefocus, r" # Move focus right
      "$mainMod, up, movefocus, u" # Move focus up
      "$mainMod, down, movefocus, d" # Move focus down

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1" # Scroll workspaces 
      "$mainMod, mouse_up, workspace, e-1" # Scroll workspaces
    ] ++ (
      # workspaces
      # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
      builtins.concatLists (builtins.genList
        (i:
          let ws = i + 1;
          in [
            "$mainMod, code:1${toString i}, workspace, ${toString ws}"
            "$mainMod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
          ]
        )
        9)
    );

    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "$mainMod, mouse:272, movewindow" # Move window
      "$mainMod, mouse:273, resizewindow" # Resize window
    ];

    binde = [
      # Volume
      ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ];

    bindl = [
      # Player
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioNext, exec, playerctl next"

      # Brightness
      ", XF86MonBrightnessUp, exec, sudo ddcutil setvcp 10 + 20"
      ", XF86MonBrightnessDown, exec, sudo ddcutil setvcp 10 - 20"
    ];
  };
}
