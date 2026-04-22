{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Wayland and wlroots
    libinput
    wayland
    libxkbcommon
    pixman
    wlroots_0_19
    wlr-protocols
    wayland-scanner
    wayland-utils
    wayland-protocols

    # GPU/Rendering
    mesa
    libgbm
    libGL
    libglvnd
    vulkan-loader

    # Build tools
    pkg-config
    gnumake
    clang
    gcc
    bear
    clang-tools
  ];

  # Ensure GPU libraries are in the runtime path
  LD_LIBRARY_PATH = with pkgs; lib.makeLibraryPath [
    mesa
    libgbm
    libGL
    libglvnd
    vulkan-loader
  ];

  # Ensure pkg-config can find everything
  PKG_CONFIG_PATH = with pkgs; lib.makeBinPath [
    libinput
    wayland
    libxkbcommon
    wlroots_0_19
    wlr-protocols
    wayland-protocols
    mesa
  ];
}
