# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages.nix
      #./containers.nix
      <nixos/modules/programs/virtualbox.nix>
    ];

  # Use the gummiboot efi boot loader.
  # For late 2009 imac
  boot.loader.gummiboot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos.nickabal.com"; 
  networking.wireless.enable = false;  

  # Select internationalisation properties.
  i18n = {
    consoleFont = "lat9w-16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.kdm.enable = true;
  services.xserver.desktopManager.kde4.enable = true;

  # Security settings
  security.sudo.wheelNeedsPassword = false;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.nick = {
     name = "nick";
     group = "users";
     extraGroups = [ "wheel" ];  
     uid = 1000;
     createHome = true;
     home = "/home/nick";
     shell = "/run/current-system/sw/bin/bash";
   };

 users.extraGroups.vboxusers.members = [ "nick" ];

}
