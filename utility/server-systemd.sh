#!/usr/bin/bash

PKGS=(
  # Void Repo
  void-repo-multilib
  void-repo-multilib-nonfree
  void-repo-nonfree
)

service() {
    # Enable Service
    sudo ln -s /etc/sv/NetworkManager /var/service/
    sudo ln -s /etc/sv/dbus /var/service/
    sudo ln -s /etc/sv/elogind /var/service/
    
    # Disable Service
    #sudo rm /var/service/dhcpcd
    #sudo sv stop dhcpcd

    #sudo rm /var/service/wpa_supplicat
    #sudo sv stop wpa_supplicat

    #sudo rm /var/service/runit
    #sudo systemctl disable runit
    #sudo systemctl stop runit
}

script-systemd(){

}

main() {
}

main()
