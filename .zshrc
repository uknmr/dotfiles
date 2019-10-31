export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

source ~/.aliases.zsh

source '/Users/uknmr/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-syntax-highlighting
zplugin light zdharma/fast-syntax-highlighting
zplugin light chrissicool/zsh-256color
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

autoload -U compinit
compinit
