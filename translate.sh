#!/bin/bash
google-chrome --app="https://translate.google.com" &

# Wait for max 5 seconds for the window to appear
for i in {1..50}; do
  if wmctrl -l | grep -q "Google Terjemahan"; then
    wmctrl -r "Google Terjemahan" -e 0,100,100,800,600
    exit 0
  fi
  sleep 0.1
done

echo "❌ Window not found after 5 seconds."


