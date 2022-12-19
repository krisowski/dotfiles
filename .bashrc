
source /usr/share/doc/fzf/examples/key-bindings.bash

# bash-it:
#   https://github.com/Bash-it/bash-it#installation
#   BASH_IT_THEME='sexy'

export DOCKER_BUILDKIT=1
export EDITOR=vim

#https://github.com/bufbuild/buf/releases/tag/v1.9.0
alias buf=/home/kris/tools/bin/buf-Linux-x86_64

export PATH="$PATH:$HOME/tools/bin"

#alias tf='terraform'
alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; print (ul.quote_plus(sys.argv[1]))"'
