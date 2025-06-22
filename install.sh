#!/bin/bash

echo "Installing FORHAD Termux Banner..."
chmod +x forhad-banner.sh

read -p "Do you want to launch it automatically when you open Termux? (y/n): " auto
if [[ "$auto" == "y" ]]; then
  SHELL_RC="$HOME/.bashrc"
  if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
  fi
  echo -e "\nbash ~/forhad-termux-banner/forhad-banner.sh" >> $SHELL_RC
  echo "Auto-launch added to $SHELL_RC"
fi

echo "Done. Run manually with: bash forhad-banner.sh"
