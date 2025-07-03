#!/usr/bin/env bash
#set -x

if [[ $# -ne 1 ]]; then
  echo "Must have 1 argument"
  exit 1
fi

APP_ID="$1"
CURRENT_WORKSPACE=$(niri msg -j workspaces | jq -c '.[] | select(.is_active) | .id')
BRAVE_ON_CURRENT_WORKSPACE=$(niri msg -j windows | jq -e --argjson ws "$CURRENT_WORKSPACE" '.[] | select(.app_id == "brave-browser" and .workspace_id == $ws) | .id' | head -n1)

notify-send -t 5000 "Opening new window for $APP_ID"

if [[ -z "$BRAVE_ON_CURRENT_WORKSPACE" ]]; then
  brave --new-window
else
  niri msg action focus-window --id "$BRAVE_ON_CURRENT_WORKSPACE"
fi

