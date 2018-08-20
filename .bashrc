# general
alias ll='ls -la'
alias ..='cd ..'
alias mkdir='mkdir -pv'

# git
alias gup='git pull -r'
alias gs='git status'
alias glog='git log --oneline --decorate --graph'
alias gupr='for i in */.git; do ( echo $i; cd $i/..; git pull -r; ); done'

# https://direnv.net/
eval "$(direnv hook bash)"
