#!/bin/bash

# Set display
export DISPLAY=:0

# Hide mouse cursor
unclutter &

# Start Chromium in kiosk mode
chromium --no-sandbox --kiosk --incognito --disable-pinch --overscroll-history-navigation=0 "$LAUNCH_URL"
