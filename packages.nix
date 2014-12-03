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
    unzip
    p7zip
    git
    xfce.terminal
    nmap
    telnet
    #hping
    xchat
    tor
    gnupg 
    openconnect 
    firefox
    #icecat3
    python
    docker
    nodePackages.npm
    nodePackages.npm2nix
    nodePackages.express
    nodePackages.selenium-webdriver
    nodePackages.statsd
    nixops
    sl
    kde4.kcalc
    linuxPackages.virtualbox
    #linuxPackages_3_17.virtualbox
    powertop
    latencytop
    redshift
    nfsUtils
    s6Dns
  ];  

}
