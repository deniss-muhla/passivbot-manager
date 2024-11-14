#!/bin/bash

API_KEYS_TEMPLATE_URL="https://raw.githubusercontent.com/enarjord/passivbot/master/api-keys.json.example"
API_KEYS_TEMPLATE_FILE="passivbot/api-keys.json.example"

CONFIG_TEMPLATE_URL="https://raw.githubusercontent.com/enarjord/passivbot/refs/heads/master/configs/template.json"
CONFIG_TEMPLATE_FILE="passivbot/configs/template.json"

# Download api-keys.json
curl -o "$API_KEYS_TEMPLATE_FILE" "$API_KEYS_TEMPLATE_URL"
if [ $? -eq 0 ]; then
    echo "File downloaded successfully as $API_KEYS_TEMPLATE_FILE"
else
    echo "Failed to download file"
    exit 1
fi

# Download config.json
curl -o "$CONFIG_TEMPLATE_FILE" "$CONFIG_TEMPLATE_URL"
if [ $? -eq 0 ]; then
    echo "File downloaded successfully as $CONFIG_TEMPLATE_FILE"
else
    echo "Failed to download file"
    exit 1
fi
