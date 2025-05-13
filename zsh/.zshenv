export GOROOT=$HOME/.local/go

typeset -U path PATH

path=(
 $GOROOT/bin 
 $path
)

export PATH="${(j/:/)path}"

