export EDITOR="code"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export GOROOT="$HOME/.local/go"

typeset -U path PATH
path=($GOROOT/bin $path)
export PATH

#Launching Hyprland with uwsm
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

