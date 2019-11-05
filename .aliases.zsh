# common
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -la'

# git
alias g='git'
alias gb='g branch'
alias gs='g status'
alias gd='g diff'
alias gdc='gd --cached'
alias ga='g add'
alias gc='g checkout'
alias gf='g fetch --prune'
alias gm='g commit'
alias gp='g push origin'
alias gpf='g pull --ff'
alias gr='g reset'
alias gsl='g stash list'
alias gsp='g stash pop'
alias gsd='g stash drop'
alias gu='gitup'

# ghq
alias repo='cd $(ghq list -p |peco)'

