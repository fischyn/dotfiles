### === Completion and Prompt Initialization === ###
autoload -Uz compinit promptinit
compinit
promptinit

### === Aliases === ###
alias spm="sudo pacman"              # Sudo pacman shortcut
alias gs="git status"               # Git status
alias gd="git diff"                 # Git diff
alias gdc="git diff --cached"       # Git diff (staged)

### === Git Prompt Function === ###
function git_prompt_info() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $branch && $branch != "HEAD" ]]; then
    if ! git diff --quiet --ignore-submodules HEAD 2>/dev/null; then
      echo "%F{yellow}($branch ✗)%f"   # Dirty branch with ✗
    else
      echo "%F{green}($branch ✓)%f"    # Clean branch with ✓
    fi
  fi
}

# Update Git prompt before each prompt render
function update_git_prompt_info() {
  GIT_PROMPT_INFO=$(git_prompt_info)
}
precmd_functions+=(update_git_prompt_info)

### === Prompt Settings === ###
setopt prompt_subst

# Show user@host (cyan), current directory (blue), and Git info
PROMPT='%F{cyan}%n@%m%f %F{blue}%~%f $GIT_PROMPT_INFO %# '

