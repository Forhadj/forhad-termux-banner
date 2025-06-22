#!/bin/bash
echo "[+] Installing dependencies..."
pkg install curl -y
pkg install net-tools -y
pkg install nmap -y
pkg install git -y
pkg install python -y
pip install requests

chmod +x forhad-pro.sh
chmod +x modules/*.sh

echo "[✓] Installation complete. Run with: bash forhad-pro.sh"
