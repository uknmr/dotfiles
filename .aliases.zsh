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

# ghq
alias repo='cd $(ghq list -p |peco)'

