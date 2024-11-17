{ pkgs, lib, config, ...}: {
  imports = [
    ./neovim.nix
    ./autocommands.nix
    ./completion.nix
    #./keymappings.nix
    ./options.nix
    ./plugins
    ./todo.nix
  ];
}
