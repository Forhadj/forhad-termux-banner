#!/bin/bash
get_device_info() {
  echo "[*] Device info:"
  termux-info || echo "Run inside Termux"
}
