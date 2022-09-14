let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { overlays = [] ; config = {}; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    niv
    jekyll ruby
  ];
}
