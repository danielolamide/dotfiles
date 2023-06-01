alias reload="source ~/.zshrc"
alias coding="cd ~/Coding/"
alias downloads="cd ~/Downloads/"
alias dotfiles="cd ~/.dotfiles/"

#Git
alias gs="git status"
alias gaa="git add ."
alias ga="git add" 

#Functions
cd() { builtin cd "$@" && ls -a; }

#java
alias java19='export JAVA_HOME=$JAVA_19'
alias java11='export JAVA_HOME=$JAVA_11'

