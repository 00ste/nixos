{ lib, pkgs, ... }:

{
	programs.zed-editor = {
		enable = true;
		extensions = [
			# Extensions
			"nix"

			# Themes
			"catpuccin"
		];
	};
}
