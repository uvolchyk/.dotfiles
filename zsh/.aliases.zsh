# common

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dsk='cd ~/desktop'
alias la='ls -la'
alias dot='cd ~/.dotfiles'
alias cloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias tree='ls -R | grep "^[.]/" | sed -e "s/:$//" -e "s/[^\/]*\//--/g" -e "s/^/   |/"'

# git
alias gs='git status'
alias gl='git log --pretty=oneline --graph'
alias gb='git branch'
alias ga='git add'
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

# python
alias py='python3'
alias py2='python'

# xcode
alias xc='xed .'

# maven
alias mvndflt='mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false'
