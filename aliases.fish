# ------------------------------
# common
# ------------------------------
balias ..    'cd ..'
balias ...   'cd ../..'
balias ....  'cd ../../..'
balias ..... 'cd ../../../..'
balias ll    'ls -la'

# ------------------------------
# git
# ------------------------------
balias g   git
balias gb  'g branch'
balias gs  'g status'
balias gd  'g diff'
balias gdc 'gd --cached'
balias ga  'g add'
balias gc  'g checkout'
balias gf  'g fetch --prune'
balias gm  'g commit'
balias gp  'g push origin'
balias gu  gitup

# ------------------------------
# ghq
# ------------------------------
balias repo 'cd (ghq list -p | peco)'

# ------------------------------
# vagrant
# ------------------------------
balias v vagrant
balias vd 'v destroy'
balias vh 'v halt'
balias vr 'v reload'
balias vs 'v status'
balias vu 'v up'

