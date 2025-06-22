#!/bin/bash

GREEN='\033[1;32m'
RED='\033[1;31m'
WHITE='\033[1;37m'
RESET='\033[0m'

clear
echo -e "${GREEN}"
echo "███████╗ ██████╗ ██████╗ ██╗  ██╗ █████╗ ██████╗ "
echo "██╔════╝██╔═══██╗██╔══██╗██║ ██╔╝██╔══██╗██╔══██╗"
echo "███████╗██║   ██║██████╔╝█████╔╝ ███████║██████╔╝"
echo "╚════██║██║   ██║██╔═══╝ ██╔═██╗ ██╔══██║██╔═══╝ "
echo "███████║╚██████╔╝██║     ██║  ██╗██║  ██║██║     "
echo "╚══════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     "
echo -e "${RESET}"
echo -e "${WHITE}Welcome to FORHAD Termux Shell 🐍 Type your command below:\n${RESET}"

while true; do
  echo -en "${WHITE}┌──(forhad㉿termux)-[~]\n└─\$ ${RESET}"
  read -e CMD

  case "$CMD" in
    ls|cd*|pwd|clear|pkg\ update|pkg\ upgrade|apt\ update|apt\ upgrade|nmap*|curl*|traceroute*)
      echo -e "${GREEN}Running: $CMD${RESET}"
      eval "$CMD"
      ;;
    exit)
      echo -e "${RED}Goodbye!${RESET}"
      break
      ;;
    *)
      echo -e "${WHITE}Unknown or unhighlighted command: ${CMD}${RESET}"
      eval "$CMD"
      ;;
  esac
done
