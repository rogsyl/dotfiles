#!/usr/bin/env bash
#set -x

#
# %Y = year 2025
# %m = month 01-12
# %d = day 01-31
# %B = full month name January-December
# %A = full weekday name Monday-Sunday
#

export LANG=nb_NO.UTF-8

#NOTE_FILE="$HOME/OneDrive/Notater/$(date +%Y)/$(date +%m)-$(date +%B)/$(date +%d)-$(date +%A).md"

# Path to daily notes in Obsidian
#NOTE_FILE="/Users/roger/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notater Roger Sylte/BuJo/$(date +%Y)/$(date +%m)-$(date +%B)/$(date +%Y%m%d)-$(date +%A).md"
OBSIDIAN_PATH="/Users/roger/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notater Roger Sylte/"
NOTE_PATH="$OBSIDIAN_PATH/BuJo/$(date +%Y)/$(date +%m)-$(date +%B)"
NOTE_FILE="$NOTE_PATH/$(date +%Y%m%d)-$(date +%A).md"

EDIT_COMMAND="/opt/homebrew/bin/nvim -c 'norm Go' \
                                     -c 'norm Go## $(date +%H:%M)' \
                                     -c 'norm G2o' \
                                     -c 'norm zz' \
                                     -c 'startinsert' '$NOTE_FILE'"

mkdir -p "$(dirname "$NOTE_PATH")"

if [ ! -f "$NOTE_FILE" ]; then
  echo "# $(date +%A), $(date +%d).$(date +%m).$(date +%Y)" > "$NOTE_FILE"
  echo "" >> "$NOTE_FILE"
  echo "## Dagens notater" >> "$NOTE_FILE"
  echo "" >> "$NOTE_FILE"
fi

open -a ghostty -n \
  --args \
  --window-width="80" \
  --window-height="50" \
  --working-directory="$OBSIDIAN_PATH" \
  --command="$EDIT_COMMAND"

