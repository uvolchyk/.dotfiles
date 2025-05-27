# general

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias la='ls -la'

alias cloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias tree='ls -R | grep "^[.]/" | sed -e "s/:$//" -e "s/[^\/]*\//--/g" -e "s/^/   |/"'

alias dev='cd ~/developer'
alias dsk='cd ~/desktop'

alias dot='cd ~/.dotfiles'
alias sdot='source ~/.zshrc'
alias edot='code ~/.dotfiles'

alias cat='bat'

# git
alias gs='git status'
alias ga='git add'
alias gl='git lg'
alias gb='git branch'

alias gch='git checkout'
alias gps='git push'
alias gpl='git pull'
alias gcm='git commit -m'
alias gcl='git clone'

# python
alias py='python3'

# tuist
alias tue='tuist edit'
alias tug='tuist generate'

# web
alias bb='bun --bun'