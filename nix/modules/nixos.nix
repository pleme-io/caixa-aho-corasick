# nix/modules/nixos.nix — auto-generated from aho-corasick.caixa.lisp
# description: "Fast multiple substring searching."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.aho-corasick;
in {
  options.services.aho-corasick = {
    enable = lib.mkEnableOption "aho-corasick";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.aho-corasick or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
