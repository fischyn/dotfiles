# XDG Base Directory Specification paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"

export GOROOT=$HOME/.local/go

typeset -U path PATH

path=(
 $GOROOT/bin 
 $path
)

export PATH="${(j/:/)path}"

