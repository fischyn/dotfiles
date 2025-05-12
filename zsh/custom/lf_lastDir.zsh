# Start shell in the last directory lf visited

lastdir="$(tail -n1 ~/.local/share/lf/dir_history)"
[ -d "$lastdir" ] && cd "$lastdir"

