export GOROOT="$HOME/.local/go"

typeset -U path PATH
path=($GOROOT/bin $path)
export PATH

#Launching Hyprland with uwsm
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

