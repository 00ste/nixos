{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    # Monospaced fonts
    courier-prime
    dm-mono
    nerd-fonts.lilex
    paratype-pt-mono

    # Sans-serif fonts
    lato
    inter
    adwaita-fonts # Adwaita Sans and Adwaita Mono

    # Serif fonts
    lora
  ];
}