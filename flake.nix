{
  description = "A development environment with Hugo";

  inputs = {
    # Use the unstable channel for the latest Hugo version, 
    # or change to a stable release like "nixos-23.11"
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # Define the systems you want to support
      supportedSystems = [ 
        "x86_64-linux" 
        "aarch64-linux" 
        "x86_64-darwin" 
        "aarch64-darwin" 
      ];

      # Helper function to generate outputs for each supported system
      forEachSystem = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      devShells = forEachSystem (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            # Packages you want available in the shell
            packages = with pkgs; [
              hugo
            ];

            # A hook that runs when you enter the shell
            shellHook = ''
              echo "Hugo development environment loaded!"
              hugo version
            '';
          };
        }
      );
    };
}