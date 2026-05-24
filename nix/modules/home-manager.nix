# nix/modules/home-manager.nix — auto-generated from aho-corasick.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.aho-corasick; in {
  options.programs.aho-corasick = {
    enable = lib.mkEnableOption "aho-corasick";
    package = lib.mkOption { type = lib.types.package; default = pkgs.aho-corasick or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
