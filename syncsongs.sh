#!/bin/bash

CONFIG_FILE="config.json"
if [ -f "$CONFIG_FILE" ]; then
  source <(jq -r 'to_entries[] | "export \(.key)=\(.value)"' "$CONFIG_FILE")
else
  echo "Configuration file not found: $CONFIG_FILE"
  exit 1
fi

SSH_CMD=$(which ssh)

sshpass -p "$SSH_PASSWORD" rsync -e "$SSH_CMD" -avzh --ignore-existing "$LOCAL_MUSIC_FOLDER/" "$SSH_USER@$SSH_HOST:$REMOTE_MUSIC_FOLDER/"
sshpass -p "$SSH_PASSWORD" rsync -e "$SSH_CMD" -avzh --ignore-existing "$SSH_USER@$SSH_HOST:$REMOTE_MUSIC_FOLDER/" "$LOCAL_MUSIC_FOLDER/"

