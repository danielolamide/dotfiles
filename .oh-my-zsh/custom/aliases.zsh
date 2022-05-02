alias reload=". ~/.zshrc"
alias coding="cd ~/Coding/"
alias js="cd ~/Coding/js/"
alias downloads="cd ~/Downloads/"
alias vim="nvim"
alias dotfiles="cd ~/.dotfiles/"
alias htdocs="cd ~/Coding/htdocs/"

#Git
alias gs="git status"
alias gaa="git add ."
alias ga="git add" 

#Functions
cd() { builtin cd "$@" && ls -a; }

#ssh
alias brij-api-prod='ssh -i ~/.ssh/brij-api.cer ubuntu@35.158.32.87'
alias brij-backend='ssh forge@3.221.38.202'
