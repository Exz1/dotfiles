#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3bottombar1 -c ~/.config/polybar/polybar1.conf &
		MONITOR=$m polybar --reload i3topbar1 -c ~/.config/polybar/polybar1.conf &
  done
else
  polybar --reload example &
fi

# Launch bar1 and bar2
echo "Bars launched..."
