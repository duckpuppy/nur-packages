{ pkgs ? import <nixpkgs> { }, lib, buildGoModule, fetchFromGitHub, sources ? import ../../nix/sources.nix }:

let
  tami5-lspsaga-nvim = pkgs.vimUtils.buildVimPluginFrom2Nix rec {
    name = "lspsaga-nvim";
    src = sources."lspsaga.nvim";
  };
in
tami5-lspsaga-nvim
