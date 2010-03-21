# Enviroment
export CLICOLOR=1;
export EDITOR='emacs'
export CVS_RSH='ssh'
export PY=/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin
export PATH=$PY:/opt/local/bin:/opt/local/sbin:$PATH
export PS1="\[\033[38m\]\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source $PY/virtualenvwrapper_bashrc

# Helpers
alias ap2='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo mysqld_safe5 &'
alias mysqlstop='mysqladmin5 -u root -p shutdown'
alias edit='open -a /Applications/Emacs.app'
alias grep='grep --color=auto' # Always highlight grep search term
alias pypath='python -c "import sys; print sys.path" | tr "," "\n" | grep -v "egg"'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'

# Bash Completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Resty 
if [ -f /usr/local/bin/resty ]; then
    . resty
fi