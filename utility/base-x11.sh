#!/usr/bin/bash

set -euo pipefail

# === Konfigurasi Paket ===
PKGS=(
  # Void Repo
  void-repo-multilib
  void-repo-multilib-nonfree
  void-repo-nonfree

  # X11 Package
  xorg-minimal xinit xset xrandr xdg-utils
  xdg-users-utils libXft-devel libX11-devel
  libXext-devel libXrender-devel
  libXinerama-devel harfbuzz-devel
  xorg-input-drivers

  # Service
  elogind dbus NetworkManager
)

# === Fungsi: Enable/Disable Service ===
setup_services() {
    echo "Mengkonfigurasi services..."
    
    # Array services yang akan di-enable
    local enable_services=(
        NetworkManager
        dbus
        elogind
        lightdm
    )
    
    # Enable services
    for svc in "${enable_services[@]}"; do
        if [[ -d "/etc/sv/$svc" ]]; then
            sudo ln -sfn "/etc/sv/$svc" "/var/service/"
            echo "  [✓] Enabled: $svc"
        else
            echo "  [!] Service tidak ditemukan: $svc"
        fi
    done
    
    # Optional: Disable conflicting services
    # local disable_services=(dhcpcd wpa_supplicant)
    # for svc in "${disable_services[@]}"; do
    #     if [[ -L "/var/service/$svc" ]]; then
    #         sudo rm -f "/var/service/$svc"
    #         sudo sv stop "$svc" 2>/dev/null || true
    #         echo "  [✓] Disabled: $svc"
    #     fi
    # done
    
    echo "Services Configuration is Complete..."
}

# === Fungsi: Install Packages
install_packages() {
    echo "Update Package Manager XBPS..."
    sudo xbps-install -Suy xbps
    
    echo "Update Repositori..."
    sudo xbps-install -Suy
    
    echo "Install X11 Package and dependency..."
    sudo xbps-install -y "${PKGS[@]}"
    
    # Verifikasi instalasi
    echo "Verification Installation..."
    for pkg in "${PKGS[@]}"; do
        if xbps-query -l | grep -q "^ii $pkg"; then
            echo "  [✓] $pkg"
        else
            echo "  [!] $pkg (Not Installed)"
        fi
    done
}

# === Fungsi: Post-Installation Setup
post_install() {
    echo "Performing post-installation setup..."
    
    # Create user directories (Desktop, Downloads, etc.)
    xdg-user-dirs-update

    # Change Shell Root
    sudo chsh -s /bin/bash root
    
    echo "Setup complete..."
    echo "Note: A reboot is required to apply all changes..."
}

main() {
    # Execution
    install_packages
    setup_services
    post_install
}

# Execution Main Function
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
