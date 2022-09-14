let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { overlays = [] ; config = {}; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    niv
    (ruby_3_0.withPackages (ps: [
      ps.jekyll
    ]))
  ];
}
