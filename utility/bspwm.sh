#!/usr/bin/bash

set -euo pipefail

PKG=(
  # Base-WM
  bspwm sxhkd polybar rofi dunst xfce4-terminal xterm
  picom feh adwaita-icon-theme tmux betterlockscreen
  zenity

  # Utilitty
)

main() {
    sudo xbps-install -Su xbps
    sudo xbps-install -Su
    sudo xbps-install $(PKGS)
    
    service()
}

main()
