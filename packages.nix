{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [                                                                                                                       
    vim                                                                                                                                                           
    rsync                                                                                                                                                         
    wget   
    curl
    git
    nmap
    xchat 
    firefox
    #icecat3
  ];  

}
