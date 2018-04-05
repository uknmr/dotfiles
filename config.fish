# ------------------------------
# variables
# ------------------------------
set -x PATH $HOME/.nodebrew/current/bin $PATH

# ------------------------------
# alias
# ------------------------------
. ~/.config/fish/aliases.fish

# ------------------------------
# functions
# ------------------------------
function fish_user_key_bindings
  # Ctrl-r でコマンド実行履歴を選択
  bind \cr 'peco_select_history (commandline --buffer-size)'
end

function atom
  if count $argv > /dev/null
    /usr/local/bin/atom $argv
  else
    /usr/local/bin/atom (ghq list -p |peco)
  end
end
