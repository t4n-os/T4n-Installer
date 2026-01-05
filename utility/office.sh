#!/usr/bin/bash

set -euo

PKGS=(
  # Void Repo
  void-repo-multilib
  void-repo-multilib-nonfree
  void-repo-nonfree

  # Base Office
  libreoffice pdfarranger thunderbird
  cups cups-pdf simple-scan xsane
)

sudo xbps-install -Su xbps
sudo xbps-install -Su
sudo xbps-install $(PKGS)
