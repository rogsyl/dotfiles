#!/usr/bin/env bash
#set -x

# TODO: Another argument, switch to app on another workspace?

if [[ $# -ne 2 ]]; then
  echo "Must have 1 argument, Usage: new-window.sh <niri-app-id> <command>"
  exit 1
fi

APP_ID="$1"
COMMAND="$2"
CURRENT_WORKSPACE=$(niri msg -j workspaces | jq -c '.[] | select(.is_active) | .id')
BRAVE_ON_CURRENT_WORKSPACE=$(niri msg -j windows | jq -e --argjson ws "$CURRENT_WORKSPACE" --arg appid "$APP_ID" '.[] | select(.app_id == $appid and .workspace_id == $ws) | .id' | head -n1)

if [[ -z "$BRAVE_ON_CURRENT_WORKSPACE" ]]; then
  notify-send -t 2500 "Opening new window for $APP_ID"
  $COMMAND
else
  notify-send -t 2500 "Opening existing window for $APP_ID"
  niri msg action focus-window --id "$BRAVE_ON_CURRENT_WORKSPACE"
fi

