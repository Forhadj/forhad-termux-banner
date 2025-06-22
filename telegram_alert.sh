#!/bin/bash
send_telegram() {
  TOKEN="7916067646:AAHLwaaZrzgVeqrV3oLXJnSTCa8xOfizzQU"
  CHAT_ID="5672808863"
  MSG="$1"
  curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d chat_id=$CHAT_ID -d text="$MSG"
}
