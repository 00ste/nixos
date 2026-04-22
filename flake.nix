{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: let
    dwlOverlay = final: prev: {
      dwl-custom = import ./pkgs/dwl-custom.nix {
        inherit (final) lib stdenv makeWrapper;
      };
    };
  in {
    nixosConfigurations.hplaptop = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/hplaptop/configuration.nix
        inputs.home-manager.nixosModules.default
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ dwlOverlay ];
        })
      ];
    };
  };
}
