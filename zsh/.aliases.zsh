# general

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias la='ls -la'
alias cloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias tree='ls -R | grep "^[.]/" | sed -e "s/:$//" -e "s/[^\/]*\//--/g" -e "s/^/   |/"'
alias dev='cd ~/Developer'
alias dsk='cd ~/desktop'
alias dot='cd ~/.dotfiles'
alias sdot='source ~/.zshrc'

alias cat='bat'
alias remal='cat ~/.dotfiles/zsh/.aliases.zsh'

# git
alias gs='git status'
alias ga='git add'
alias gl='git log --pretty=oneline --graph'
alias gb='git branch'

alias gm='git merge'
alias gf='git fetch'

alias gch='git checkout'
alias gps='git push'
alias gpl='git pull'
alias gcm='git commit -m'
alias gcl='git clone'
alias grb='git rebase'
alias grv='git revert'
alias grs='git reset'
alias grt='git restore'

# python
alias py='python3'

# xcode
alias xc='xed .'

# tuist
alias tue='tuist edit'
alias tug='tuist generate'
