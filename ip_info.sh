#!/bin/bash
get_ip_info() {
  echo "[*] Fetching IP info..."
  curl -s ipinfo.io
}
