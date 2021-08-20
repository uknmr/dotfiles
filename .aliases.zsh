# common
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -la'

# bundler
alias be='bundle exec'

# docker-compose
alias dc='docker compose'
alias dcps='dc ps'
alias dcd='dc down'
alias dcu='dc up -d'

# git
alias g='git'
alias gb='g branch'
alias gs='g status'
alias gd='g diff'
alias gdc='gd --cached'
alias ga='g add'
alias gc='g checkout'
alias gf='g fetch --prune'
alias gfa='gf --all'
alias gm='g commit --verbose'
alias gp='g push origin HEAD'
alias gpf='g pull --ff-only'
alias gr='g reset'
alias gsd='g stash drop'
alias gsl='g stash list'
alias gsp='g stash pop'
alias gsu='g stash -u'
alias gu='gitup'

# ghq
alias repo='cd $(ghq list -p |peco)'
alias repov='repo && code . -r'

