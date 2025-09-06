{
  description = "devshell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.python313
          pkgs.fish
        ];

        shellHook = ''
          echo "🐍 Python version: $(python --version)"
          echo "🐟 Fish version: $(fish --version)"
          echo "🚀 Starting development environment..."
          exec fish
        '';
      };
    });
}
