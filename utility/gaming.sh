#!/usr/bin/bash
set -euo pipefail

PKG=(
  # Void Repo
  void-repo-multilib
  void-repo-multilib-nonfree
  void-repo-nonfree

  # Game Packages
  mesa vulkan-loader steam
  lutris playonlinux libgcc-32bit
  libstdc++-32bit libdrm-32bit
  mesa-dri-32bit libglvnd-32bit
  gstreamer1
)

main() {
    sudo xbps-install -Su xbps
    sudo xbps-install -Su
    sudo xbps-install $(PKGS)
    
    service()
}

main()
