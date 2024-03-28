{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
        devShell = pkgs.mkShell {
          name = "astro_super_tools";

          env = {
            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
              pkgs.stdenv.cc.cc
            ];
            POETRY_VIRTUALENVS_IN_PROJECT = "true";
            POETRY_VIRTUALENVS_PATH = "{self}/.venv";
            POETRY_VIRTUALENVS_PREFER_ACTIVE_PYTHON = "true";
          };

          packages = with pkgs; [
            llvmPackages_11.clang
            python3
            poetry
            libusb
            libusb-compat-0_1
          ];

          shellHook = ''
            . ${self}/init.sh "${self}"
          '';
        };
      }
    );
}
