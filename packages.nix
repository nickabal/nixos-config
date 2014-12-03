{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [                            
    clang
    gnumake
    autoconf 
    automake 
    pkgconfig 
    libtool 
    cmake 
    vim
    rsync     
    wget   
    curl
    git
    xfce.terminal
    nmap
    #hping
    xchat
    tor
    gnupg 
    openconnect 
    firefox
    #icecat3
    python
    pidgin
    docker
    nodePackages.npm
    nodePackages.npm2nix
    nodePackages.express
    nodePackages.selenium-webdriver
    nodePackages.statsd
    nixops
    linuxPackages.virtualbox
    thunderbird
    #linuxPackages_3_17.virtualbox
  ];  

}
