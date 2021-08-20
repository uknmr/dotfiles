export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight
export PATH=$HOME/.nodebrew/current/bin:$PATH
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

source ~/.aliases.zsh

source '/Users/u/.zinit/bin/zinit.zsh'
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma/fast-syntax-highlighting
zinit light chrissicool/zsh-256color
zinit ice pick"async.zsh" src"pure.zsh"; zinit light sindresorhus/pure

autoload -U compinit
compinit

eval "$(rbenv init -)"
