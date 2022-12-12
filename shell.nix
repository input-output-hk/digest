let
  pkgs = (builtins.getFlake "nixpkgs").legacyPackages.x86_64-linux;
in
  pkgs.mkShell { buildInputs = with pkgs; [ haskell.compiler.ghc943 cabal-install zlib pkgconfig ];}
