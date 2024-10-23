{ config, pkgs, ... }:
{
  programs.fuzzel.settings = {
    main = {
      font = "monospace:size=12";
      dpi-aware = "auto";
      prompt = "";
      icon-theme = "breeze";
      icons-enabled = true;
      fields = "filename,name,generic";
      password-character = "*";
      filter-desktop = false;
      match-mode = "fzf";
      show-actions = false;
      anchor = "center";
      lines = 12;
      width = 50;
      tabs = 4;
      horizontal-pad = 18;
      vertical-pad = 8;
      inner-pad = 0;
      image-size-ratio = 0.5;
      line-height = 30;
      letter-spacing = 0;
      layer = "top";
      exit-on-keyboard-focus-loss = true;
    };

    colors = {
      background = "#242331df";
      text = "#EFF2F1FF";
      input = "#EFF2F1FF";
      match = "#ED9B40FF";
      selection = "#725AC130";
      selection-text = "#EFF2F1FF";
      selection-match = "#BA3B46FF";
      border = "#33ccffff";
    };

    border = {
      width = 1;
      radius = 8;
    };

    dmenu = {
      # mode = "text";  # Uncomment to set mode to text or index
      # exit-immediately-if-empty = false;  # Uncomment to set this option
    };
  };
}
