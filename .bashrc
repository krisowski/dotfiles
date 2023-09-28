
source /usr/share/doc/fzf/examples/key-bindings.bash

# bash-it:
#   https://github.com/Bash-it/bash-it#installation
#   BASH_IT_THEME='sexy'

export DOCKER_BUILDKIT=1
export EDITOR=vim

#https://github.com/bufbuild/buf/releases/tag/v1.9.0
alias buf=/home/kris/tools/bin/buf-Linux-x86_64

export PATH="$PATH:$HOME/tools/bin"

alias vim=nvim
alias tf=terraform

alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; print (ul.quote_plus(sys.argv[1]))"'

alias k='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias ke='kubectl exec'
alias kl='kubectl logs'
alias kgpo='kubectl get pod'
alias kgjo='kubectl get job'
alias kgcj='kubectl get cronjob'
alias kgde='kubectl get deployment'
alias kgse='kubectl get service'

# optional on mac - ls folder in bold font
# export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedadagaced

# GO
# a comma separated list of repos with private Go modules - required for `go mod tidy`
export GOPRIVATE=github.com/krisowski
