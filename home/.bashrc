# ------------------------------
# alias
# ------------------------------
alias ll='ls -la'
alias be='bundle exec'

# ------------------------------
# Homebrew Cask
# ------------------------------
# /Applicationsにインストール
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

# ------------------------------
# Vim
# ------------------------------
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ctags='/Applications/MacVim.app/Contents/MacOS/ctags "$@"'

# ------------------------------
# git settings
# ------------------------------
# プロンプトにブランチ名と作業ツリーの状態を表示
source /usr/local/etc/bash_completion.d/git-prompt.sh
# gitコマンドの補完
source /usr/local/etc/bash_completion.d/git-completion.bash
# addされていない変更は「*」
# commitされていない変更は「+」
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[33m\]\u@\h\[\033[37m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# ------------------------------
# nodebrew
# ------------------------------
export PATH=$HOME/.nodebrew/current/bin:$PATH

# ------------------------------
# added by travis gem
# ------------------------------
[ -f /Users/uknmr/.travis/travis.sh ] && source /Users/uknmr/.travis/travis.sh

# ------------------------------
# source-highlight
# ------------------------------
export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
