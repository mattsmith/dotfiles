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

go () {
	cd ~/development/Healthism
}

go2 () {
	cd ~/development/Healthism2
}

spat () {
	cd ~/development/spattr-test
}

alpha () {
	cd ~/development/alphascore
}

think () {
	cd ~/development/thinkific
}

exam () {
	cd ~/development/exam_marketplace
}

deploy_production () {
		ey deploy -e healthism_production -r master -m
}

deploy_staging () {
		ey deploy -e healthism_staging -m
}

gp() {
	git pull
	rake db:migrate
}

alias b='bundle exec'