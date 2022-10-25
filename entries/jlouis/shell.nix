let
 pkgs = import <nixpkgs> {};
 # choose the ocaml version you want to use
 ocamlPackages = pkgs.ocaml-ng.ocamlPackages_4_14;
in
pkgs.mkShell {
  # build tools
  nativeBuildInputs = with ocamlPackages; [ ocaml utop findlib dune_3 ocaml-lsp ppx_inline_test ];
  # dependencies
  buildInputs = with ocamlPackages; [ ocamlgraph ];
}
