{ stdenv, fetchFromGitHub, sources ? import ../../nix/sources.nix }:

let
  base16-shell-src = sources.base16-shell;
in
stdenv.mkDerivation {
  name = "base16-shell";
  src = base16-shell-src;
  installPhase = ''
     mkdir -p $out/share/base16-shell
     cp -r * $out/share/base16-shell/
  '';
}
