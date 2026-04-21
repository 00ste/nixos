{ pkgs, ... }:

{
	services.arrpc.enable = true;

	home.packages = with pkgs; [
		discord-ptb
	];

	programs.nixcord = {
		enable = true;
		discord.enable = true;
	}
}
