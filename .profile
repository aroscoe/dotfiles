# Enviroment
export CLICOLOR=1;
export EDITOR='emacs'
export CVS_RSH='ssh'
export PS1="\[\033[38m\]\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

# Bash History
export HISTSIZE=2500
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
shopt -s histappend

# Virtualenv
export WORKON_HOME=$HOME/virtual_envs
source virtualenvwrapper.sh

# Helpers
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias edit='open -a /Applications/Emacs.app'
alias grep='grep --color=auto' # Always highlight grep search term
alias pypath='python -c "import sys; print sys.path" | tr "," "\n" | grep -v "egg"'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Custom Bash Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Resty 
if [ -f `brew --prefix`/bin/resty ]; then
    . resty
fi