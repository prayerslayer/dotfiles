# aliases
alias cd..="cd .."
alias ls="ls -Glah"
alias tree="tree -L 2"
alias mkdir="mkdir -p"

# git alias
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gco="git checkout"
alias gb="git branch"
alias gf="git fetch"

# bash
export PS1="[\[\033[0;31m\]\u\[\033[0m\] \W]\\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacedo