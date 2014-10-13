export MANPATH=/opt/local/share/man:/usr/local/share/npm/bin:/Users/mattsmith/bin:$MANPATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi

# export PS1='\$ '

function parse_git_branch {
 ref=$(git symbolic-ref HEAD 2> /dev/null) || return
 echo "("${ref#refs/heads/}") "
}

function git_current_branch {
 ref=$(git symbolic-ref HEAD 2> /dev/null) || return
 echo "${ref#refs/heads/}"
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

later () {
  cd ~/code/latergram
}

think () {
	cd ~/code/thinkific
}

late () {
  cd ~/code/latergram
}

gp() {
	git pull
	rake db:migrate
}
alias ssh_thinkific='ssh ubuntu@apps01.thinkific.com -i ~/.ssh/gsg-keypair.pem'
alias ssh_staging_thinkific='ssh ubuntu@staging.thinkific.com -i ~/.ssh/gsg-keypair.pem'
alias b='bundle exec'
alias ssh_alphascore='ssh ubuntu@alphascore.com -i ~/.ssh/thinkific-us-west-1.pem'
alias z='zeus'
alias lh='open http://locahost:3000/'
export EDITOR="/usr/local/bin/mate -w"

alias test_local='java -jar ~/BrowserStackTunnel.jar N3SLWYKhXak2ddyDq5EW localhost,3000,0'
alias test_bchrma='java -jar ~/BrowserStackTunnel.jar N3SLWYKhXak2ddyDq5EW bchrma.lvh.me,3000,0'export PATH=/usr/local/bin:/Users/mattsmith/.rvm/gems/ruby-1.9.3-p362/bin:/Users/mattsmith/.rvm/gems/ruby-1.9.3-p362@global/bin:/Users/mattsmith/.rvm/rubies/ruby-1.9.3-p362/bin:/Users/mattsmith/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
