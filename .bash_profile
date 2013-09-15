export MANPATH=/opt/local/share/man:$MANPATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi

# export PS1='\$ '

function parse_git_branch {
 ref=$(git symbolic-ref HEAD 2> /dev/null) || return
 echo "("${ref#refs/heads/}") "
}

# PS1="\w \$(parse_git_branch)\$"

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Autotest Cucumber
export AUTOFEATURE=true

alpha () {
	cd ~/code/alphascore
}

think () {
	cd ~/code/thinkific
}

gp() {
	git pull
	rake db:migrate
}
alias ssh_thinkific='ssh ubuntu@thinkific.com -i ~/.ssh/gsg-keypair.pem'
alias ssh_alphascore='ssh ubuntu@alphascore.com -i ~/.ssh/thinkific-us-west-1.pem'
alias b='bundle exec'
alias z='zeus'

export EDITOR="/usr/local/bin/mate -w"
