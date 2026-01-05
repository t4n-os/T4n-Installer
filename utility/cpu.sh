#!/usr/bin/bash

intel(){
  sudo xbps-install -y xf86-video-intel
}
amd_radeon(){
  sudo xbps-install -y xf86-video-amdgpu
}
amd_ati(){
  sudo xbps-install -y xf86-video-ati
}

nvidia(){
  sudo xbps-install -y void-repo-nonfree
  sudo xbps-install -y nvidia
}
