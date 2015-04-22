# author: Shea Levy (sheaATshealevyDOTcom)
let
  pkgs    = import <nixpkgs> {};

  version = builtins.head (builtins.match "([^\n]*)\n?" (
    builtins.readFile ../VERSION
  ));
in rec {
  tarball = pkgs.callPackage ./tarball.nix { inherit version; };

  build   = pkgs.callPackage ./build.nix { inherit tarball version; };
}
